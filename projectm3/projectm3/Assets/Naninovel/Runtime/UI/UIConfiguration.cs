// Copyright 2022 ReWaffle LLC. All rights reserved.

using System.Collections.Generic;
using TMPro;
using UnityEngine;

namespace Naninovel
{
    [EditInProjectSettings]
    public class UIConfiguration : Configuration
    {
        [System.Serializable]
        public class FontOption
        {
            [Tooltip("글꼴 옵션의 이름(ID). 글꼴 설정 드롭다운 목록에 표시됩니다.")]
            public string FontName;
            [Tooltip("옵션을 선택할 때 uGUI 텍스트 구성 요소에 적용할 글꼴 자산. uGUI 텍스트 구성 요소를 사용하지 않는 경우 비워 둡니다.")]
            public Font Font;
            [Tooltip("옵션을 선택할 때 TMPro 텍스트 구성 요소에 적용할 글꼴 자산. TMPro 텍스트 구성 요소를 사용하지 않는 경우 비워 둡니다.")]
            public TMP_FontAsset TMPFont;
            [LocalesPopup(true), Tooltip("비어 있지 않은 경우 로케일(언어)을 선택하면 글꼴이 자동으로 적용됩니다.")]
            public string ApplyOnLocale = string.Empty;
        }

        public const string DefaultPathPrefix = "UI";

        [Tooltip("'UI' 리소스에 사용되는 리소스 로더의 구성입니다.")]
        public ResourceLoaderConfiguration Loader = new ResourceLoaderConfiguration { PathPrefix = DefaultPathPrefix };
        [Tooltip("엔진에서 관리하는 모든 UI 개체에 특정 계층을 할당할지 여부입니다. 일부 기본 제공 기능(예: 'Toggle UI')에 필요합니다.")]
        public bool OverrideObjectsLayer = true;
        [Tooltip("'Override Objects Layer'를 사용하도록 설정하면 지정된 계층이 관리되는 모든 UI 개체에 할당됩니다.")]
        public int ObjectsLayer = 5;
        [Tooltip("플레이어가 선택할 수 있도록 게임 설정 UI('기본값' 외)에서 사용할 수 있어야 하는 글꼴 옵션입니다.")]
        public List<FontOption> FontOptions = new List<FontOption>();
        [Tooltip("게임을 처음 시작할 때 기본적으로 적용할 글꼴 이름(ID)입니다. 지정하지 않은 경우 기본 글꼴이 적용됩니다.")]
        public string DefaultFont;

        /// <summary>
        /// Returns a font option with the provided name or null, when not found.
        /// </summary>
        public FontOption GetFontOption (string fontName) => FontOptions?.Find(fo => fo.FontName == fontName);
    }
}
