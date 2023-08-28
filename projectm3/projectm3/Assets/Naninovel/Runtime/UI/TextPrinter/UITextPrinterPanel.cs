// Copyright 2022 ReWaffle LLC. All rights reserved.

using System.Collections.Generic;
using UnityEngine;

namespace Naninovel.UI
{
    /// <summary>
    /// Used by <see cref="UITextPrinter"/> to control the printed text.
    /// </summary>
    [RequireComponent(typeof(CanvasGroup))]
    public abstract class UITextPrinterPanel : CustomUI, IManagedUI
    {
        /// <summary>
        /// Contents of the printer to be used for transformations.
        /// </summary>
        public virtual RectTransform Content => content;
        /// <summary>
        /// The text to be printed inside the printer panel. 
        /// Note that the visibility of the text is controlled independently.
        /// </summary>
        public abstract string PrintedText { get; set; }
        /// <summary>
        /// Text representing name of the author of the currently printed text.
        /// </summary>
        public abstract string AuthorNameText { get; set; }
        /// <summary>
        /// Which part of the assigned text message is currently revealed, in 0.0 to 1.0 range.
        /// </summary>
        public abstract float RevealProgress { get; set; }
        /// <summary>
        /// Current appearance of the printer.
        /// </summary>
        public abstract string Appearance { get; set; }
        /// <summary>
        /// Current tint color of the printer.
        /// </summary>
        public virtual Color TintColor { get => tintColor; set { tintColor = value; onTintChanged?.Invoke(value); } }
        /// <summary>
        /// Objects that should trigger continue input when interacted with.
        /// </summary>
        public virtual IReadOnlyCollection<GameObject> ContinueInputTriggers => continueInputTriggers;

        protected ICharacterManager CharacterManager { get; private set; }

        [Tooltip("프린터 위치, 스케일 및 회전 외부 조작에 사용되는 변환")]
        [SerializeField] private RectTransform content;
        [Tooltip("와 상호 작용할 때 입력을 트리거해야 하는 객체. 객체가 레이캐스트 대상이며 다른 레이캐스트 대상에 의해 차단되지 않도록 하십시오.")]
        [SerializeField] private List<GameObject> continueInputTriggers;
        [Tooltip("프린터 액터의 틴트 색상이 변경될 때 이벤트가 호출됩니다.")]
        [SerializeField] private ColorUnityEvent onTintChanged;

        private IInputSampler continueInput;
        private IScriptPlayer scriptPlayer;
        private Color tintColor = Color.white;

        public override async UniTask InitializeAsync ()
        {
            await base.InitializeAsync();

            if (continueInput != null)
                foreach (var go in ContinueInputTriggers)
                    continueInput.AddObjectTrigger(go);
            scriptPlayer.OnWaitingForInput += SetWaitForInputIndicatorVisible;
        }

        UniTask IManagedUI.ChangeVisibilityAsync (bool visible, float? duration, AsyncToken asyncToken)
        {
            Engine.Err("@showUI and @hideUI commands can't be used with text printers; use @show/hide or @show/hidePrinter commands instead");
            return UniTask.CompletedTask;
        }

        /// <summary>
        /// Reveals the <see cref="PrintedText"/> char by char over time.
        /// </summary>
        /// <param name="revealDelay">Delay (in seconds) between revealing consequent characters.</param>
        /// <param name="asyncToken">The reveal should be canceled when requested by the provided token.</param>
        public abstract UniTask RevealPrintedTextOverTimeAsync (float revealDelay, AsyncToken asyncToken);
        /// <summary>
        /// Controls visibility of the wait for input indicator.
        /// </summary>
        public abstract void SetWaitForInputIndicatorVisible (bool visible);
        /// <summary>
        /// Invoked by <see cref="UITextPrinter"/> when author meta of the printed text changes.
        /// </summary>
        /// <param name="authorId">Actor ID of the new author.</param>
        /// <param name="authorMeta">Metadata of the new author.</param>
        public abstract void OnAuthorChanged (string authorId, CharacterMetadata authorMeta);

        protected override void Awake ()
        {
            base.Awake();
            this.AssertRequiredObjects(content);

            continueInput = Engine.GetService<IInputManager>().GetContinue();
            scriptPlayer = Engine.GetService<IScriptPlayer>();

            CharacterManager = Engine.GetService<ICharacterManager>();
        }

        protected override void OnDestroy ()
        {
            base.OnDestroy();

            if (continueInput != null)
                foreach (var go in ContinueInputTriggers)
                    continueInput.RemoveObjectTrigger(go);
            if (scriptPlayer != null)
                scriptPlayer.OnWaitingForInput -= SetWaitForInputIndicatorVisible;
        }
    } 
}
