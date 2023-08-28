// Copyright 2022 ReWaffle LLC. All rights reserved.

using System;
using System.Text.RegularExpressions;
using Naninovel.ArabicSupport;
using TMPro;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;

namespace Naninovel.UI
{
    /// <summary>
    /// Wrapper over TMPro text with Naninovel-specific tags and arabic text support.
    /// </summary>
    public class NaninovelTMProText : TextMeshProUGUI, IPointerClickHandler, IInputTrigger
    {
        [Serializable]
        public class LinkClickedEvent : UnityEvent<TMP_LinkInfo> { }

        public override string text { get => unprocessedText; set => base.text = ProcessText(unprocessedText = value); }

        protected virtual string RubyVerticalOffset => rubyVerticalOffset;
        protected virtual float RubySizeScale => rubySizeScale;
        protected virtual bool AddRubyLineHeight => addRubyLineHeight;
        protected virtual bool UnlockTipsOnPrint => unlockTipsOnPrint;
        protected virtual bool FixArabicText => fixArabicText;
        protected virtual string TipTemplate => tipTemplate;
        protected virtual Canvas TopmostCanvas => topmostCanvasCache ? topmostCanvasCache : topmostCanvasCache = gameObject.FindTopmostComponent<Canvas>();
        protected virtual bool Edited => !Application.isPlaying || ObjectUtils.IsEditedInPrefabMode(gameObject);

        [Tooltip("루비(후리가나) 텍스트에 사용할 수직 선 간격띄우기, 지원되는 단위: em, px, %.")]
        [SerializeField] private string rubyVerticalOffset = "1em";
        [Tooltip("루비(후리가나) 텍스트에 적용할 글꼴 크기 척도(기본 텍스트 글꼴 크기에 상대적).")]
        [SerializeField] private float rubySizeScale = .5f;
        [Tooltip("루비 태그가 포함된 선에 대해 선 높이를 보상(추가)할지 여부입니다.")]
        [SerializeField] private bool addRubyLineHeight = true;
        [Tooltip("<tip> 태그로 포장된 텍스트를 인쇄할 때 관련 팁 레코드의 잠금을 자동으로 해제할지 여부입니다.")]
        [SerializeField] private bool unlockTipsOnPrint = true;
        [Tooltip("<tip> 태그로 포장된 텍스트를 처리할 때 사용할 템플릿입니다. " + tipTemplateLiteral + "는 실제 팁 내용으로 대체됩니다.")]
        [SerializeField] private string tipTemplate = $"<u>{tipTemplateLiteral}</u>";
        [Tooltip("<tip> 태그로 포장된 텍스트를 클릭할 때 호출됩니다. 반환된 문자열 인수는 클릭한 팁의 ID입니다. 사용자 지정 핸들러가 할당되었을 때 기본 동작(팁을 클릭하면 'ITipsUI' 표시)이 호출되지 않습니다.")]
        [SerializeField] private StringUnityEvent onTipClicked;
        [Tooltip("아랍어를 지원하도록 텍스트를 수정할지 여부(글자 연결 문제 수정).")]
        [SerializeField] private bool fixArabicText;
        [Tooltip("아랍어 텍스트 수정을 활성화하면 파르시 문자도 수정할 수 있는지 여부를 제어합니다.")]
        [SerializeField] private bool fixArabicFarsi = true;
        [Tooltip("'아랍어 텍스트 수정'을 활성화하면 리치 텍스트 태그도 수정할지 여부를 제어합니다.")]
        [SerializeField] private bool fixArabicTextTags = true;
        [Tooltip("아랍어 텍스트 수정을 활성화하면 숫자 보존 여부를 제어합니다.")]
        [SerializeField] private bool fixArabicPreserveNumbers;
        [Tooltip("<link> 태그로 포장된 텍스트를 처리할 때 사용할 템플릿입니다. " + linkTemplateLiteral + "는 실제 팁 내용으로 대체됩니다. 아무것도 지정되지 않은 경우 링크 태그는 수정되지 않습니다.")]
        [SerializeField] private string linkTemplate = $"<u>{linkTemplateLiteral}</u>";
        [Tooltip("<link> 태그로 포장된 텍스트를 클릭하면 호출됩니다.")]
        [SerializeField] private LinkClickedEvent onLinkClicked;

        private const string tipIdPrefix = "NANINOVEL.TIP.";
        private const string tipTemplateLiteral = "%TIP%";
        private const string linkTemplateLiteral = "%LINK%";
        private static readonly Regex captureRubyRegex = new Regex(@"<ruby=""([\s\S]*?)"">([\s\S]*?)<\/ruby>", RegexOptions.Compiled);
        private static readonly Regex captureTipRegex = new Regex(@"<tip=""([\w]*?)"">([\s\S]*?)<\/tip>", RegexOptions.Compiled);
        private static readonly Regex captureLinkRegex = new Regex(@"<link=""([\w]*?)"">([\s\S]*?)<\/link>", RegexOptions.Compiled);

        private readonly FastStringBuilder arabicBuilder = new FastStringBuilder(RTLSupport.DefaultBufferSize);
        private string unprocessedText = "";
        private Canvas topmostCanvasCache;

        public virtual void OnPointerClick (PointerEventData eventData)
        {
            var renderCamera = TopmostCanvas.renderMode == RenderMode.ScreenSpaceOverlay ? null : TopmostCanvas.worldCamera;
            var linkIndex = TMP_TextUtilities.FindIntersectingLink(this, eventData.position, renderCamera);
            if (linkIndex >= 0) OnLinkClicked(textInfo.linkInfo[linkIndex]);
        }

        public virtual bool CanTriggerInput ()
        {
            var evtSystem = EventSystem.current;
            if (!evtSystem) return true;
            var inputModule = evtSystem.currentInputModule;
            if (!inputModule) return true;
            var input = inputModule.input;
            if (!input) return true;

            var position = input.mousePosition;
            var renderCamera = TopmostCanvas.renderMode == RenderMode.ScreenSpaceOverlay ? null : TopmostCanvas.worldCamera;
            var linkIndex = TMP_TextUtilities.FindIntersectingLink(this, position, renderCamera);
            return linkIndex == -1;
        }

        protected override void Awake ()
        {
            base.Awake();
            if (!Edited) text = base.text ?? "";
        }

        protected virtual void OnLinkClicked (TMP_LinkInfo linkInfo)
        {
            if (onLinkClicked?.GetPersistentEventCount() > 0)
                onLinkClicked.Invoke(linkInfo);

            var linkId = linkInfo.GetLinkID();
            if (linkId.StartsWithFast(tipIdPrefix))
                OnTipClicked(linkId.GetAfter(tipIdPrefix));
        }

        protected virtual void OnTipClicked (string tipId)
        {
            if (onTipClicked?.GetPersistentEventCount() > 0)
            {
                onTipClicked.Invoke(tipId);
                return;
            }

            var tipsUI = Engine.GetService<IUIManager>()?.GetUI<ITipsUI>();
            tipsUI?.Show();
            tipsUI?.SelectTipRecord(tipId);
        }

        /// <summary>
        /// Applies various pre-processing (ruby, tips, arabic, etc) before assigning TMPro <see cref="TextMeshProUGUI.text"/>.
        /// </summary>
        protected virtual string ProcessText (string content)
        {
            return FixArabic(ProcessRubyTags(ProcessTipTags(ProcessLinkTags(content))));
        }

        /// <summary>
        /// When 'Link Template' is assigned, will modify the link content in accordance with the template.
        /// </summary>
        protected virtual string ProcessLinkTags (string content)
        {
            if (string.IsNullOrEmpty(linkTemplate) || !linkTemplate.Contains(linkTemplateLiteral)) return content;

            var matches = captureLinkRegex.Matches(content);
            foreach (Match match in matches)
            {
                if (match.Groups.Count != 3) continue;
                var fullMatch = match.Groups[0].ToString();
                var linkId = match.Groups[1].ToString();
                var linkContent = match.Groups[2].ToString();

                var replace = $"<link={linkId}>{linkTemplate.Replace(linkTemplateLiteral, linkContent)}</link>";
                content = content.Replace(fullMatch, replace);
            }

            return content;
        }

        /// <summary>
        /// Given the input text, extracts text wrapped in ruby tags and replace it with expression natively supported by TMPro.
        /// </summary>
        protected virtual string ProcessRubyTags (string content)
        {
            var matches = captureRubyRegex.Matches(content);
            foreach (Match match in matches)
            {
                if (match.Groups.Count != 3) continue;
                var fullMatch = match.Groups[0].ToString();
                var rubyValue = match.Groups[1].ToString();
                var baseText = match.Groups[2].ToString();

                var baseTextWidth = GetPreferredValues(baseText).x;
                var rubyTextWidth = GetPreferredValues(rubyValue).x * RubySizeScale;
                var rubyTextOffset = baseTextWidth / 2f + rubyTextWidth / 2f;
                var compensationOffset = (baseTextWidth - rubyTextWidth) / 2f;
                var replace = $"<space={compensationOffset}><voffset={RubyVerticalOffset}><size={RubySizeScale * 100f}%>{rubyValue}</size></voffset><space=-{rubyTextOffset}>{baseText}";
                if (!AddRubyLineHeight) replace = "<line-height=100%>" + replace;
                content = content.Replace(fullMatch, replace);
            }

            return content;
        }

        /// <summary>
        /// Given the input text, extracts text wrapped in tip tags and replace it with expression natively supported by TMPro.
        /// </summary>
        protected virtual string ProcessTipTags (string content)
        {
            var matches = captureTipRegex.Matches(content);
            foreach (Match match in matches)
            {
                if (match.Groups.Count != 3) continue;
                var fullMatch = match.Groups[0].ToString();
                var tipID = match.Groups[1].ToString();
                var tipContent = match.Groups[2].ToString();

                if (UnlockTipsOnPrint)
                    Engine.GetService<IUnlockableManager>()?.UnlockItem($"Tips/{tipID}");

                var replace = $"<link={tipIdPrefix + tipID}>{TipTemplate.Replace(tipTemplateLiteral, tipContent)}</link>";
                content = content.Replace(fullMatch, replace);
            }

            return content;
        }

        protected virtual string FixArabic (string value)
        {
            if (!FixArabicText || string.IsNullOrWhiteSpace(value)) return value;
            arabicBuilder.Clear();
            RTLSupport.FixRTL(value, arabicBuilder, fixArabicFarsi, fixArabicTextTags, fixArabicPreserveNumbers);
            arabicBuilder.Reverse();
            return arabicBuilder.ToString();
        }
    }
}
