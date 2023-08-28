// Copyright 2022 ReWaffle LLC. All rights reserved.

using System.Collections.Generic;
using System.Linq;
using UnityEngine;

namespace Naninovel
{
    [EditInProjectSettings]
    public class BackgroundsConfiguration : OrthoActorManagerConfiguration<BackgroundMetadata>
    {
        /// <summary>
        /// ID of the background actor used by default.
        /// </summary>
        public const string MainActorId = "MainBackground";
        public const string DefaultPathPrefix = "Backgrounds";

        public override BackgroundMetadata DefaultActorMetadata => DefaultMetadata;
        public override ActorMetadataMap<BackgroundMetadata> ActorMetadataMap => Metadata;

        [Tooltip("백그라운드 액터를 만들 때 기본적으로 사용할 메타데이터와 생성된 액터 ID에 대한 사용자 정의 메타데이터가 없습니다.")]
        public BackgroundMetadata DefaultMetadata = new BackgroundMetadata();
        [Tooltip("특정 ID로 백그라운드 액터를 작성할 때 사용할 메타데이터입니다.")]
        public BackgroundMetadata.Map Metadata = new BackgroundMetadata.Map {
            [MainActorId] = new BackgroundMetadata()
        };
        [Tooltip("배경 간에 공유된 명명된 상태(포즈). 포즈 이름은 '@back' 명령에서 모양으로 사용하여 관련 상태의 활성화된 속성을 설정할 수 있습니다.")]
        public List<BackgroundMetadata.Pose> SharedPoses = new List<BackgroundMetadata.Pose>();

        protected override ActorPose<TState> GetSharedPose<TState> (string poseName) => SharedPoses.FirstOrDefault(p => p.Name == poseName) as ActorPose<TState>;
    }
}
