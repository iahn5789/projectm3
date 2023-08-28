// Copyright 2022 ReWaffle LLC. All rights reserved.

using UnityEngine;

namespace Naninovel
{
    [EditInProjectSettings]
    public class ChoiceHandlersConfiguration : ActorManagerConfiguration<ChoiceHandlerMetadata>
    {
        public const string DefaultPathPrefix = "ChoiceHandlers";

        [Tooltip("기본적으로 사용할 선택 핸들러의 ID입니다.")]
        public string DefaultHandlerId = "ButtonList";
        [Tooltip("사용자 지정 선택 단추를 로드하는 데 사용되는 리소스 로더의 구성입니다.")]
        public ResourceLoaderConfiguration ChoiceButtonLoader = new ResourceLoaderConfiguration();
        [Tooltip("선택 핸들러 액터를 만들 때 기본적으로 사용할 메타데이터와 생성된 액터 ID에 대한 사용자 정의 메타데이터가 없습니다.")]
        public ChoiceHandlerMetadata DefaultMetadata = new ChoiceHandlerMetadata();
        [Tooltip("특정 ID를 가진 선택 핸들러 액터를 만들 때 사용할 메타데이터입니다.")]
        public ChoiceHandlerMetadata.Map Metadata = new ChoiceHandlerMetadata.Map {
            ["ButtonList"] = CreateBuiltinMeta(),
            ["ButtonArea"] = CreateBuiltinMeta(),
            ["ChatReply"] = CreateBuiltinMeta()
        };

        public override ChoiceHandlerMetadata DefaultActorMetadata => DefaultMetadata;
        public override ActorMetadataMap<ChoiceHandlerMetadata> ActorMetadataMap => Metadata;

        protected override ActorPose<TState> GetSharedPose<TState> (string poseName) => null;

        private static ChoiceHandlerMetadata CreateBuiltinMeta () => new ChoiceHandlerMetadata {
            Implementation = typeof(UIChoiceHandler).AssemblyQualifiedName
        };
    }
}
