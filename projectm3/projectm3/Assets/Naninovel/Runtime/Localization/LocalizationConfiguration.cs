// Copyright 2022 ReWaffle LLC. All rights reserved.

using UnityEngine;

namespace Naninovel
{
    [EditInProjectSettings]
    public class LocalizationConfiguration : Configuration
    {
        public const string DefaultLocalizationPathPrefix = "Localization";

        [Tooltip("지역화 리소스에 사용되는 리소스 로더의 구성입니다.")]
        public ResourceLoaderConfiguration Loader = new ResourceLoaderConfiguration { PathPrefix = DefaultLocalizationPathPrefix };
        [Tooltip("원본 프로젝트 리소스(프로젝트 자산을 작성하는 언어)의 로케일입니다.")]
        public string SourceLocale = "en";
        [Tooltip("게임을 처음 실행할 때 기본적으로 선택한 로케일입니다. 지정하지 않으면 '소스 로케일'을 선택합니다.")]
        public string DefaultLocale;
    }
}
