// Copyright 2022 ReWaffle LLC. All rights reserved.

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using UnityEngine;
using UnityEngine.UI;

namespace Naninovel.UI
{
    public class BacklogPanel : CustomUI, IBacklogUI
    {
        [Serializable]
        public new class GameState
        {
            public List<BacklogMessageState> Messages;
        }

        protected virtual BacklogMessage LastMessage => messages.Last?.Value;
        protected virtual RectTransform MessagesContainer => messagesContainer;
        protected virtual ScrollRect ScrollRect => scrollRect;
        protected virtual BacklogMessage MessagePrefab => messagePrefab;
        protected virtual bool ClearOnLoad => clearOnLoad;
        protected virtual bool ClearOnLocaleChange => clearOnLocaleChange;
        protected virtual int Capacity => capacity;
        protected virtual int SaveCapacity => saveCapacity;
        protected virtual bool StripTags => stripTags;
        protected virtual bool AddChoices => addChoices;
        protected virtual bool AllowReplayVoice => allowReplayVoice;
        protected virtual bool AllowRollback => allowRollback;

        [SerializeField] private RectTransform messagesContainer;
        [SerializeField] private ScrollRect scrollRect;
        [SerializeField] private BacklogMessage messagePrefab;
        [Tooltip("다른 스크립트를 로드할 때 또는 상태를 재설정할 때(타이틀로 종료) 백로그를 지울지 여부입니다.")]
        [SerializeField] private bool clearOnLoad = true;
        [Tooltip("게임 현지화(언어)를 변경할 때 밀린 작업을 지울지 여부입니다.")]
        [SerializeField] private bool clearOnLocaleChange = true;
        [Tooltip("백로그가 보관해야 할 메시지 수.")]
        [SerializeField] private int capacity = 100;
        [Tooltip("게임을 저장할 때 백로그에 저장해야 하는 메시지 수.")]
        [SerializeField] private int saveCapacity = 30;
        [Tooltip("추가된 메시지에서 포맷 콘텐츠('<'<'>'안의 콘텐츠와 각괄호 자체)를 삭제할지 여부입니다.")]
        [SerializeField] private bool stripTags = true;
        [Tooltip("선택 요약을 로그에 추가할지 여부입니다.")]
        [SerializeField] private bool addChoices = true;
        [Tooltip("선택한 선택 요약에 사용할 템플릿입니다. " + choiceTemplateLiteral + "는 실제 선택 요약으로 대체됩니다.")]
        [SerializeField] private string selectedChoiceTemplate = $"    <b>{choiceTemplateLiteral}</b>";
        [Tooltip("다른(선택하지 않은) 선택 요약에 사용할 템플릿입니다. " + choiceTemplateLiteral + "는 실제 선택 요약으로 대체됩니다.")]
        [SerializeField] private string otherChoiceTemplate = $"    <color=#ffffff88>{choiceTemplateLiteral}</color>";
        [Tooltip("결과 선택 사이에 문자열이 추가되었습니다.")]
        [SerializeField] private string choiceSeparator = "<br>";
        [Tooltip("백로깅된 메시지와 관련된 음성 재생을 허용할지 여부입니다.")]
        [SerializeField] private bool allowReplayVoice = true;
        [Tooltip("백로깅된 메시지와 관련된 재생 자리로의 롤백을 허용할지 여부입니다.")]
        [SerializeField] private bool allowRollback = true;

        private const int messageLengthLimit = 10000; // Due to Unity's mesh verts count limit.
        private const string choiceTemplateLiteral = "%SUMMARY%";

        /// <summary>
        /// Capture formatting content enclosed in angle brackets.
        /// </summary>
        private static readonly Regex formattingRegex = new Regex(@"<.*?>", RegexOptions.Compiled);

        private readonly LinkedList<BacklogMessage> messages = new LinkedList<BacklogMessage>();
        private readonly Stack<BacklogMessage> messagesPool = new Stack<BacklogMessage>();
        private IInputManager inputManager;
        private ICharacterManager charManager;
        private IStateManager stateManager;
        private ILocalizationManager localizationManager;
        private bool clearPending;

        public virtual void Clear ()
        {
            foreach (var message in messages)
            {
                message.gameObject.SetActive(false);
                messagesPool.Push(message);
            }
            messages.Clear();
        }

        public virtual void AddMessage (string messageText, string actorId = null, string voiceClipName = null, PlaybackSpot? rollbackSpot = null)
        {
            if (StripTags) messageText = StripFormatting(messageText);

            var actorNameText = charManager.GetDisplayName(actorId) ?? actorId;
            SpawnMessage(messageText, actorNameText, ProcessVoiceClipName(voiceClipName), ProcessRollbackSpot(rollbackSpot));
        }

        public virtual void AppendMessage (string message, string voiceClipName = null, PlaybackSpot? rollbackSpot = null)
        {
            if (!LastMessage) return;

            if (StripTags) message = StripFormatting(message);

            if (LastMessage.Message.Length + message.Length > messageLengthLimit)
            {
                SpawnMessage(message, LastMessage.Author, ProcessVoiceClipName(voiceClipName), ProcessRollbackSpot(rollbackSpot));
                return;
            }

            LastMessage.Append(message, voiceClipName);
        }

        public virtual void AddChoice (List<Tuple<string, bool>> summary)
        {
            if (!AddChoices || summary.All(t => string.IsNullOrWhiteSpace(t.Item1))) return;

            var messages = summary.Select(t => t.Item2
                ? selectedChoiceTemplate.Replace(choiceTemplateLiteral, t.Item1)
                : otherChoiceTemplate.Replace(choiceTemplateLiteral, t.Item1));
            var separator = choiceSeparator.Replace("<br>", Environment.NewLine);
            var messageText = string.Join(separator, messages);

            SpawnMessage(messageText, null, null, PlaybackSpot.Invalid);
        }

        public override void SetVisibility (bool visible)
        {
            if (visible) ScrollToBottom();
            base.SetVisibility(visible);
        }

        public override UniTask ChangeVisibilityAsync (bool visible, float? duration = null, AsyncToken asyncToken = default)
        {
            if (visible) ScrollToBottom();
            return base.ChangeVisibilityAsync(visible, duration, asyncToken);
        }

        protected override void Awake ()
        {
            base.Awake();
            this.AssertRequiredObjects(messagesContainer, scrollRect, messagePrefab);

            inputManager = Engine.GetService<IInputManager>();
            charManager = Engine.GetService<ICharacterManager>();
            stateManager = Engine.GetService<IStateManager>();
            localizationManager = Engine.GetService<ILocalizationManager>();
        }

        protected override void OnEnable ()
        {
            base.OnEnable();

            if (inputManager?.GetShowBacklog() != null)
                inputManager.GetShowBacklog().OnStart += Show;

            if (ClearOnLoad)
            {
                stateManager.OnGameLoadStarted += Clear;
                stateManager.OnResetStarted += Clear;
            }

            if (ClearOnLocaleChange)
            {
                localizationManager.OnLocaleChanged += SetClearPending;
                stateManager.OnGameLoadFinished += ClearIfPending;
            }
        }

        protected override void OnDisable ()
        {
            base.OnDisable();

            if (inputManager?.GetShowBacklog() != null)
                inputManager.GetShowBacklog().OnStart -= Show;

            if (stateManager != null)
            {
                stateManager.OnGameLoadStarted -= Clear;
                stateManager.OnGameLoadFinished -= ClearIfPending;
                stateManager.OnResetStarted -= Clear;
            }

            if (localizationManager != null)
                localizationManager.OnLocaleChanged -= SetClearPending;
        }

        protected virtual void SpawnMessage (string messageText, string actorNameText,
            IReadOnlyCollection<string> voiceClipNames, PlaybackSpot rollbackSpot)
        {
            var message = default(BacklogMessage);

            if (messages.Count > Capacity)
            {
                message = messages.First.Value;
                message.gameObject.SetActive(true);
                message.transform.SetSiblingIndex(MessagesContainer.childCount - 1);
                messages.RemoveFirst();
                messages.AddLast(message);
            }
            else
            {
                if (messagesPool.Count > 0)
                {
                    message = messagesPool.Pop();
                    message.gameObject.SetActive(true);
                    message.transform.SetSiblingIndex(MessagesContainer.childCount - 1);
                }
                else message = Instantiate(MessagePrefab, MessagesContainer, false);

                messages.AddLast(message);
            }

            message.Initialize(messageText, actorNameText, voiceClipNames, rollbackSpot);
        }

        protected override void HandleVisibilityChanged (bool visible)
        {
            base.HandleVisibilityChanged(visible);

            MessagesContainer.gameObject.SetActive(visible);
        }

        protected override void SerializeState (GameStateMap stateMap)
        {
            base.SerializeState(stateMap);
            var state = new GameState {
                Messages = messages.TakeLast(SaveCapacity).Select(m => m.GetState()).ToList()
            };
            stateMap.SetState(state);
        }

        protected override async UniTask DeserializeState (GameStateMap stateMap)
        {
            await base.DeserializeState(stateMap);

            Clear();

            var state = stateMap.GetState<GameState>();
            if (state is null) return;

            if (state.Messages?.Count > 0)
                foreach (var messageState in state.Messages)
                    SpawnMessage(messageState.MessageText, messageState.ActorNameText, messageState.VoiceClipNames, messageState.RollbackSpot);
        }

        protected virtual string StripFormatting (string content)
        {
            if (string.IsNullOrWhiteSpace(content))
                return content;
            return formattingRegex.Replace(content, string.Empty);
        }

        private List<string> ProcessVoiceClipName (string voiceClipName)
        {
            return AllowReplayVoice && !string.IsNullOrEmpty(voiceClipName)
                ? new List<string> { voiceClipName } : null;
        }

        private PlaybackSpot ProcessRollbackSpot (PlaybackSpot? spot)
        {
            if (!AllowRollback || !spot.HasValue || spot == PlaybackSpot.Invalid)
                return PlaybackSpot.Invalid;

            // Otherwise stored spots not associated with player input
            // won't serialize (eg, printed messages with [skipInput]).
            if (stateManager.PeekRollbackStack()?.PlaybackSpot == spot)
                stateManager.PeekRollbackStack()?.ForceSerialize();

            return spot.Value;
        }

        private async void ScrollToBottom ()
        {
            // Wait a frame and force rebuild layout before setting scroll position,
            // otherwise it's ignoring recently added messages.
            await AsyncUtils.WaitEndOfFrameAsync();
            LayoutRebuilder.ForceRebuildLayoutImmediate(ScrollRect.content);
            ScrollRect.verticalNormalizedPosition = 0;
        }

        private void SetClearPending (string locale) => clearPending = true;

        private void Clear (GameSaveLoadArgs args) => Clear();

        private void ClearIfPending (GameSaveLoadArgs args)
        {
            if (!clearPending) return;
            clearPending = false;
            Clear();
        }
    }
}
