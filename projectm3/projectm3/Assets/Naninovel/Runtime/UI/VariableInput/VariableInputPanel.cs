// Copyright 2022 ReWaffle LLC. All rights reserved.

using System;
using UnityEngine;
using UnityEngine.UI;

namespace Naninovel.UI
{
    public class VariableInputPanel : CustomUI, IVariableInputUI
    {
        [Serializable]
        public new class GameState
        {
            public string VariableName;
            public string SummaryText;
            public string InputFieldText;
            public bool PlayOnSubmit;
        }

        protected virtual string Summary { get; private set; }
        protected virtual InputField InputField => inputField;
        protected virtual Button SubmitButton => submitButton;
        protected virtual bool ActivateOnShow => activateOnShow;
        protected virtual bool SubmitOnInput => submitOnInput;
        protected virtual GameObject SummaryContainer => summaryContainer;

        [SerializeField] private InputField inputField;
        [SerializeField] private Button submitButton;
        [Tooltip("'UI' 표시 시 입력 필드를 자동으로 선택하여 활성화할지 여부")]
        [SerializeField] private bool activateOnShow = true;
        [Tooltip("'Submit' 입력이 활성화된 경우 입력 필드 값 제출 시도 여부")]
        [SerializeField] private bool submitOnInput = true;
        [Tooltip("할당되면 요약 할당 여부에 따라 게임 객체가 비활성화/활성화됩니다")]
        [SerializeField] private GameObject summaryContainer;
        [SerializeField] private StringUnityEvent onSummaryChanged;

        private IScriptPlayer scriptPlayer;
        private ICustomVariableManager variableManager;
        private IStateManager stateManager;
        private IInputSampler submitInput;
        private string variableName;
        private bool playOnSubmit;
        
        public virtual void Show (string variableName, string summary, string predefinedValue, bool playOnSubmit)
        {
            this.variableName = variableName;
            this.playOnSubmit = playOnSubmit;
            SetSummary(summary);
            InputField.text = predefinedValue ?? string.Empty;

            Show();

            if (ActivateOnShow)
            {
                InputField.Select();
                InputField.ActivateInputField();
            }
        }

        protected override void Awake ()
        {
            base.Awake();
            this.AssertRequiredObjects(InputField, SubmitButton);

            scriptPlayer = Engine.GetService<IScriptPlayer>();
            variableManager = Engine.GetService<ICustomVariableManager>();
            stateManager = Engine.GetService<IStateManager>();
            submitInput = Engine.GetService<IInputManager>().GetSubmit();

            SubmitButton.interactable = false;
        }

        protected override void OnEnable ()
        {
            base.OnEnable();

            SubmitButton.onClick.AddListener(HandleSubmit);
            InputField.onValueChanged.AddListener(HandleInputChanged);

            if (submitInput != null && SubmitOnInput)
                submitInput.OnStart += HandleSubmit;
        }

        protected override void OnDisable ()
        {
            base.OnDisable();

            SubmitButton.onClick.RemoveListener(HandleSubmit);
            InputField.onValueChanged.RemoveListener(HandleInputChanged);

            if (submitInput != null && SubmitOnInput)
                submitInput.OnStart -= HandleSubmit;
        }

        protected override void SerializeState (GameStateMap stateMap)
        {
            base.SerializeState(stateMap);

            var state = new GameState {
                VariableName = variableName,
                SummaryText = Summary,
                InputFieldText = InputField.text,
                PlayOnSubmit = playOnSubmit
            };
            stateMap.SetState(state);
        }

        protected override async UniTask DeserializeState (GameStateMap stateMap)
        {
            await base.DeserializeState(stateMap);

            var state = stateMap.GetState<GameState>();
            if (state is null) return;

            variableName = state.VariableName;
            SetSummary(state.SummaryText);
            InputField.text = state.InputFieldText;
            playOnSubmit = state.PlayOnSubmit;
        }

        protected virtual void SetSummary (string value)
        {
            Summary = value;
            onSummaryChanged?.Invoke(value);
            if (SummaryContainer)
                SummaryContainer.SetActive(!string.IsNullOrWhiteSpace(value));
        }

        protected virtual void HandleInputChanged (string text)
        {
            SubmitButton.interactable = !string.IsNullOrWhiteSpace(text);
        }

        protected virtual void HandleSubmit ()
        {
            if (!Visible || string.IsNullOrWhiteSpace(InputField.text)) return;

            stateManager.PeekRollbackStack()?.AllowPlayerRollback();

            variableManager.SetVariableValue(variableName, InputField.text);

            ClearFocus();
            Hide();

            if (playOnSubmit)
            {
                // Attempt to select and play next command.
                var nextIndex = scriptPlayer.PlayedIndex + 1;
                scriptPlayer.Play(scriptPlayer.Playlist, nextIndex);
            }
        }
    }
}
