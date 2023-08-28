// Copyright 2022 ReWaffle LLC. All rights reserved.

using System;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;

namespace Naninovel
{
    [RequireComponent(typeof(CanvasGroup)), RequireComponent(typeof(UnityEngine.UI.Button))]
    public class ScriptableGridSlot : ScriptableButton, IPointerEnterHandler, IPointerExitHandler, ISelectHandler, IDeselectHandler
    {
        [Serializable]
        private class OnSlotClickedEvent : UnityEvent<string> { }

        public virtual string Id { get; } = default;
        public virtual bool Selected { get; private set; }

        [Tooltip("슬롯을 호버링하거나 선택할 때 페이드할 불투명도. 페이드 동작을 비활성화하려면 0으로 설정합니다.")]
        [SerializeField] private float hoverOpacityFade = .25f;
        [SerializeField] private OnSlotClickedEvent onSlotClicked;

        private readonly Tweener<FloatTween> fadeTweener = new Tweener<FloatTween>();

        public virtual void OnPointerEnter (PointerEventData eventData) => FadeInSlot();

        public virtual void OnPointerExit (PointerEventData eventData) => FadeOutSlot();

        public virtual void OnSelect (BaseEventData eventData)
        {
            Selected = true;
            FadeInSlot();
        }

        public virtual void OnDeselect (BaseEventData eventData)
        {
            Selected = false;
            FadeOutSlot();
        }

        protected override void Start ()
        {
            base.Start();

            if (hoverOpacityFade > 0)
                SetOpacity(1 - hoverOpacityFade);
        }

        protected override void OnButtonClick ()
        {
            base.OnButtonClick();

            onSlotClicked?.Invoke(Id);
        }

        protected virtual void FadeInSlot ()
        {
            if (hoverOpacityFade <= 0) return;
            if (fadeTweener.Running) fadeTweener.CompleteInstantly();
            var tween = new FloatTween(Opacity, 1f, FadeTime, SetOpacity, true);
            fadeTweener.Run(tween, target: this);
        }

        protected virtual void FadeOutSlot ()
        {
            if (hoverOpacityFade <= 0) return;
            if (fadeTweener.Running) fadeTweener.CompleteInstantly();
            var tween = new FloatTween(Opacity, 1f - hoverOpacityFade, FadeTime, SetOpacity, true);
            fadeTweener.Run(tween, target: this);
        }
    }
}
