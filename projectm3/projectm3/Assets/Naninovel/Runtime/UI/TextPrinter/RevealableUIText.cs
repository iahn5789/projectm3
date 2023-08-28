// Copyright 2022 ReWaffle LLC. All rights reserved.

using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace Naninovel.UI
{
    public class RevealableUIText : Text, IRevealableText
    {
        private class UGUIRevealBehaviour : TextRevealBehaviour
        {
            private readonly RevealableUIText ugui;
            private readonly Material[] materials = new Material[1];

            public UGUIRevealBehaviour (RevealableUIText ugui)
                : base(ugui, ugui.slideClipRect, false, ugui.revealFadeWidth)
            {
                this.ugui = ugui;
                materials[0] = ugui.material;
            }

            protected override float GetScaleModifier () => 1 / ugui.pixelsPerUnit;
            protected override Vector2 GetTextRectSize () => ugui.cachedTextGenerator.rectExtents.size;
            protected override int GetCharacterCount () => ugui.lastVisibleCharIndex + 1;
            protected override RevealableCharacter GetCharacterAt (int index) => ugui.GetVisibleCharAt(index);
            protected override RevealableLine GetLineAt (int index) => ugui.GetLineAt(index);
            protected override IReadOnlyList<Material> GetMaterials () => materials;
            protected override Vector4 GetClipRectScale () => Vector4.one;
        }

        public virtual string Text { get => text; set => text = value; }
        public virtual Color TextColor { get => color; set => color = value; }
        public virtual GameObject GameObject => gameObject;
        public virtual bool Revealing => revealBehaviour.Revealing;
        public virtual float RevealProgress { get => revealBehaviour.GetRevealProgress(); set => revealBehaviour.SetRevealProgress(value); }

        [Tooltip("기울기 테두리 근처에서 그라데이션의 너비(픽셀)")]
        [SerializeField] private float revealFadeWidth = 100f;
        [Tooltip("텍스트를 원활하게 공개할 수 있는지 여부. '타자기' 효과를 위해 사용할 수 없습니다.")]
        [SerializeField] private bool slideClipRect = true;
        [Tooltip("탤릭체 문자를 보정하기 위해 노출을 직선으로 기울이는 정도입니다. 일반적으로 대부분의 글꼴에 10이면 충분합니다.\n\n참고: 기울임(0보다 큰 값)을 활성화하면 작은 노출 효과 아티팩트가 발생합니다. TMPro 프린터는 이 문제에 영향을 받지 않으므로 대신 사용하는 것을 고려하십시오.")]
        [SerializeField] private float italicSlantAngle;
        [Tooltip("디버그 목적으로 선 및 문자 클립 사각형 지모 그리기 여부")]
        [SerializeField] private bool drawClipRects;

        private const string textShaderName = "Naninovel/RevealableText";

        private bool edited => !Application.isPlaying || ObjectUtils.IsEditedInPrefabMode(gameObject);
        private UGUIRevealBehaviour revealBehaviour;
        private int lastVisibleCharIndex = -1;

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
            var absIndex = VisibleToAbsoluteCharIndex(revealBehaviour.LastRevealedCharIndex);
            if (Text is null || absIndex < 0 || absIndex >= Text.Length) return default;
            return Text[absIndex];
        }

        public virtual void Render ()
        {
            if (edited) return;
            revealBehaviour.Render();
        }

        public override void Rebuild (CanvasUpdate update)
        {
            base.Rebuild(update);
            if (edited) return;

            lastVisibleCharIndex = FindLastVisibleCharIndex();
            revealBehaviour?.Rebuild();
        }

        protected override void Awake ()
        {
            base.Awake();
            material = new Material(Shader.Find(textShaderName));
            revealBehaviour = new UGUIRevealBehaviour(this);
        }

        protected override void OnEnable ()
        {
            base.OnEnable();
            if (edited) return;
            RegisterDirtyLayoutCallback(revealBehaviour.WaitForRebuild);
        }

        protected override void OnDisable ()
        {
            base.OnDisable();
            if (edited) return;
            UnregisterDirtyLayoutCallback(revealBehaviour.WaitForRebuild);
        }

        protected virtual void OnDrawGizmos ()
        {
            if (drawClipRects) revealBehaviour.DrawClipRects();
        }

        private RevealableLine GetLineAt (int lineIndex)
        {
            var generator = cachedTextGenerator;
            if (lineIndex < 0 || lineIndex >= generator.lines.Count)
                return RevealableLine.Invalid;

            var lineInfo = generator.lines[lineIndex];
            var lineFirstChar = GetVisibleCharAt(AbsoluteToVisibleCharIndex(lineInfo.startCharIdx)).CharIndex;
            var lineLastChar = GetLastVisibleCharAtLine(lineInfo.startCharIdx, lineIndex).CharIndex;
            return new RevealableLine(lineIndex, lineInfo.height, lineInfo.topY, lineFirstChar, lineLastChar);
        }

        private RevealableCharacter GetVisibleCharAt (int requestedVisibleCharIndex)
        {
            var generator = cachedTextGenerator;
            var absoluteIndex = VisibleToAbsoluteCharIndex(requestedVisibleCharIndex);
            if (absoluteIndex < 0 || absoluteIndex >= generator.characterCount)
                return RevealableCharacter.Invalid;

            var lineIndex = FindLineContainingChar(absoluteIndex);
            var charInfo = generator.characters[absoluteIndex];
            var origin = charInfo.cursorPos.x;
            var xAdvance = charInfo.cursorPos.x + charInfo.charWidth;
            return new RevealableCharacter(requestedVisibleCharIndex, lineIndex, origin, xAdvance, italicSlantAngle);
        }

        private RevealableCharacter GetLastVisibleCharAtLine (int firstAbsoluteCharInLineIndex, int lineIndex)
        {
            var generator = cachedTextGenerator;
            var curVisibleCharIndex = -1;
            var resultIndex = -1;
            for (var i = 0; i < generator.characterCount; i++)
            {
                if (generator.characters[i].charWidth > 0)
                    curVisibleCharIndex++;
                if (i < firstAbsoluteCharInLineIndex) continue;

                var curLindeIndex = FindLineContainingChar(i);
                if (lineIndex < curLindeIndex) break;

                resultIndex = curVisibleCharIndex;
            }
            return GetVisibleCharAt(resultIndex);
        }

        private int FindLineContainingChar (int absoluteCharIndex)
        {
            var generator = cachedTextGenerator;
            var lineIndex = 0;
            for (int i = 0; i < generator.lineCount; i++)
            {
                if (generator.lines[i].startCharIdx > absoluteCharIndex)
                    break;
                lineIndex = i;
            }
            return lineIndex;
        }

        private int FindLastVisibleCharIndex ()
        {
            var generator = cachedTextGenerator;
            var curVisibleIndex = -1;
            for (int i = 0; i < generator.characterCount; i++)
            {
                if (generator.characters[i].charWidth == 0f) continue;
                curVisibleIndex++;
            }
            return curVisibleIndex;
        }

        private int AbsoluteToVisibleCharIndex (int absoluteCharIndex)
        {
            var generator = cachedTextGenerator;
            var curVisibleIndex = -1;
            for (int i = 0; i < generator.characterCount; i++)
            {
                if (generator.characters[i].charWidth == 0f) continue;
                curVisibleIndex++;
                if (i >= absoluteCharIndex) break;
            }
            return curVisibleIndex;
        }

        private int VisibleToAbsoluteCharIndex (int visibleCharIndex)
        {
            var generator = cachedTextGenerator;
            var curVisibleIndex = -1;
            for (int i = 0; i < generator.characterCount; i++)
            {
                if (generator.characters[i].charWidth == 0f) continue;
                curVisibleIndex++;
                if (curVisibleIndex >= visibleCharIndex) return i;
            }
            return -1;
        }
    }
}
