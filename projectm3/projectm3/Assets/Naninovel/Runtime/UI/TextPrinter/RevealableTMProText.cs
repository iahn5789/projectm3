// Copyright 2022 ReWaffle LLC. All rights reserved.

using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace Naninovel.UI
{
    public class RevealableTMProText : NaninovelTMProText, IRevealableText
    {
        private class TMProRevealBehaviour : TextRevealBehaviour
        {
            private readonly RevealableTMProText tmPro;

            public TMProRevealBehaviour (RevealableTMProText tmPro)
                : base(tmPro, tmPro.slideClipRect, tmPro.isRightToLeftText, tmPro.revealFadeWidth)
            {
                this.tmPro = tmPro;
            }

            protected override Vector2 GetTextRectSize () => new Vector2(tmPro.m_marginWidth, tmPro.m_marginHeight);
            protected override int GetCharacterCount () => tmPro.textInfo.characterCount;
            protected override RevealableCharacter GetCharacterAt (int index) => tmPro.GetCharacterAt(index);
            protected override RevealableLine GetLineAt (int index) => tmPro.GetLineAt(index);
            protected override IReadOnlyList<Material> GetMaterials () => tmPro.GetMaterials();
            protected override Vector4 GetClipRectScale () => new Vector4(tmPro.clipRectScale.x, tmPro.clipRectScale.y, tmPro.clipRectScale.x, tmPro.clipRectScale.y);
        }

        public virtual string Text { get => assignedText; set => SetTextToReveal(value); }
        public virtual Color TextColor { get => color; set => color = value; }
        public virtual GameObject GameObject => gameObject;
        public virtual bool Revealing => revealBehaviour.Revealing;
        public virtual float RevealProgress { get => revealBehaviour.GetRevealProgress(); set => revealBehaviour.SetRevealProgress(value); }

        [Tooltip("기울기 테두리 근처에서 그라데이션의 너비(픽셀)")]
        [SerializeField] private float revealFadeWidth = 100f;
        [Tooltip("문자의 원활한 공개 여부', '타자기' 효과를 위해 비활성화됨")]
        [SerializeField] private bool slideClipRect = true;
        [Tooltip("기본적으로 노출을 바로 기울이는 정도")]
        [SerializeField] private float defaultSlantAngle;
        [Tooltip("이탤릭체 문자를 전달할 때 노출을 정확하게 기울이는 정도입니다.")]
        [SerializeField] private float italicSlantAngle = 10f;
        [Tooltip("지정된 너비(x) 및 높이(y)로 노출 클립을 바로 확대합니다. 기본적으로 클립 바로 크기는 텍스트 레이아웃에서 평가되지만 경우에 따라 수정해야 할 수 있습니다(예: 쉐이더를 통해 글꼴 확장을 적용하는 경우).")]
        [SerializeField] private Vector2 clipRectScale = Vector2.one;
        [Tooltip("디버그 목적으로 선 및 문자 클립 사각형 지모를 그릴 것인지 여부입니다.")]
        [SerializeField] private bool drawClipRects;

        private Material[] cachedFontMaterials;
        private TMProRevealBehaviour revealBehaviour;
        private string assignedText;

        public virtual void RevealNextChars (int count, float duration, AsyncToken asyncToken)
        {
            revealBehaviour.RevealNextChars(count, duration, asyncToken);
        }

        public virtual Vector2 GetLastRevealedCharPosition ()
        {
            return revealBehaviour.GetLastRevealedCharPosition();
        }

        public virtual char GetLastRevealedChar ()
        {
            if (string.IsNullOrEmpty(Text) || revealBehaviour.LastRevealedCharIndex < 0 || revealBehaviour.LastRevealedCharIndex >= Text.Length)
                return default;
            return Text[revealBehaviour.LastRevealedCharIndex];
        }

        public virtual void Render ()
        {
            if (Edited) return;
            revealBehaviour.Render();
        }

        public override void Rebuild (CanvasUpdate update)
        {
            base.Rebuild(update);
            if (Edited) return;
            revealBehaviour?.Rebuild();
        }

        protected override void Awake ()
        {
            base.Awake();
            cachedFontMaterials = fontMaterials;
            revealBehaviour = new TMProRevealBehaviour(this);
        }

        protected override void OnEnable ()
        {
            base.OnEnable();
            if (Edited) return;
            RegisterDirtyLayoutCallback(revealBehaviour.WaitForRebuild);
        }

        protected override void OnDisable ()
        {
            base.OnDisable();
            if (Edited) return;
            UnregisterDirtyLayoutCallback(revealBehaviour.WaitForRebuild);
        }

        protected virtual void OnDrawGizmos ()
        {
            if (drawClipRects) revealBehaviour.DrawClipRects();
        }

        private void SetTextToReveal (string value)
        {
            assignedText = value;
            text = value;
        }

        private RevealableLine GetLineAt (int index)
        {
            if (index < 0 || index >= textInfo.lineInfo.Length)
                return RevealableLine.Invalid;

            var info = textInfo.lineInfo[index];
            return new RevealableLine(index, info.lineHeight, info.ascender, info.firstCharacterIndex, info.lastCharacterIndex);
        }

        private RevealableCharacter GetCharacterAt (int index)
        {
            if (index < 0 || index >= textInfo.characterInfo.Length)
                return RevealableCharacter.Invalid;

            var info = textInfo.characterInfo[index];
            var slantAngle = info.style == FontStyles.Italic ? italicSlantAngle : defaultSlantAngle;
            var left = info.isVisible ? info.vertex_BL.position.x : info.origin;
            var right = info.isVisible ? info.vertex_BR.position.x : info.xAdvance;
            return new RevealableCharacter(index, info.lineNumber, left, right, slantAngle);
        }

        private Material[] GetMaterials ()
        {
            if (ShouldInvalidateMaterials())
                cachedFontMaterials = fontMaterials;
            return cachedFontMaterials;
        }

        private bool ShouldInvalidateMaterials ()
        {
            if (cachedFontMaterials is null || cachedFontMaterials.Length != textInfo.materialCount) return true;
            for (int i = 0; i < textInfo.materialCount; i++)
                if (cachedFontMaterials[i] != fontSharedMaterials[i])
                    return true;
            return false;
        }
    }
}
