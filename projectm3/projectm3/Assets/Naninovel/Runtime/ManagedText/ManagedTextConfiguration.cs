// Copyright 2022 ReWaffle LLC. All rights reserved.

using UnityEngine;

namespace Naninovel
{
    [EditInProjectSettings]
    public class ManagedTextConfiguration : Configuration
    {
        public const string DefaultPathPrefix = "Text";

        [Tooltip("관리되는 텍스트 문서에 사용되는 리소스 로더의 구성입니다.")]
        public ResourceLoaderConfiguration Loader = new ResourceLoaderConfiguration { PathPrefix = DefaultPathPrefix };
    }
}
