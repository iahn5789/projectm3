// Copyright 2022 ReWaffle LLC. All rights reserved.

using UnityEngine;

namespace Naninovel
{
    /// <summary>
    /// Represents data required to construct and initialize a <see cref="IChoiceHandlerActor"/>.
    /// </summary>
    [System.Serializable]
    public class ChoiceHandlerMetadata : ActorMetadata
    {
        [System.Serializable]
        public class Map : ActorMetadataMap<ChoiceHandlerMetadata> { }

        [Tooltip("선택을 선택할 때 계속하기 전에 선택 핸들러 UI가 완전히 숨겨질 때까지 기다릴지 여부입니다.")]
        public bool WaitHideOnChoice;

        public ChoiceHandlerMetadata ()
        {
            Implementation = typeof(UIChoiceHandler).AssemblyQualifiedName;
            Loader = new ResourceLoaderConfiguration { PathPrefix = ChoiceHandlersConfiguration.DefaultPathPrefix };
        }

        public override ActorPose<TState> GetPose<TState> (string poseName) => null;
    }
}
