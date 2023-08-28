// Copyright 2022 ReWaffle LLC. All rights reserved.

using UnityEngine;

namespace Naninovel
{
    [EditInProjectSettings]
    public class UnlockablesConfiguration : Configuration
    {
        public const string DefaultPathPrefix = "Unlockables";

        [Tooltip("잠금 해제 가능한 리소스와 함께 사용되는 리소스 로더 구성")]
        public ResourceLoaderConfiguration Loader = new ResourceLoaderConfiguration { PathPrefix = DefaultPathPrefix };
    }
}
