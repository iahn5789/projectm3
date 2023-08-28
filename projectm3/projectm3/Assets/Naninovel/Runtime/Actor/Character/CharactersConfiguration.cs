// Copyright 2022 ReWaffle LLC. All rights reserved.

using System.Collections.Generic;
using System.Linq;
using UnityEngine;

namespace Naninovel
{
    [EditInProjectSettings]
    public class CharactersConfiguration : OrthoActorManagerConfiguration<CharacterMetadata>
    {
        public const string DefaultPathPrefix = "Characters";
        public const string DefaultAvatarsPathPrefix = "CharacterAvatars";
        /// <summary>
        /// <see cref="ManagedTextRecord"/> category for the <see cref="CharacterMetadata.DisplayName"/> records.
        /// </summary>
        public const string DisplayNamesCategory = "CharacterNames";

        [Tooltip("지정된 위치 없이 새 문자를 추가할 때 X축 단위로 문자를 고르게 분포시킬지 여부입니다.")]
        public bool AutoArrangeOnAdd = true;
        [Tooltip("문자가 배열된 범위를 나타내는 장면 폭을 기준으로 시작(x) 및 종료(y) 위치(0.0 ~ 1.0 범위).")]
        public Vector2 ArrangeRange = new Vector2(0, 1);
        [Tooltip("생성된 액터 ID에 대한 사용자 정의 메타데이터 및 문자 액터를 만들 때 기본적으로 사용할 메타데이터가 없습니다.")]
        public CharacterMetadata DefaultMetadata = new CharacterMetadata();
        [Tooltip("특정 ID를 가진 캐릭터 액터를 만들 때 사용할 메타데이터입니다.")]
        public CharacterMetadata.Map Metadata = new CharacterMetadata.Map();
        [Tooltip("문자 아바타 텍스처 리소스에 사용되는 리소스 로더의 구성입니다.")]
        public ResourceLoaderConfiguration AvatarLoader = new ResourceLoaderConfiguration { PathPrefix = DefaultAvatarsPathPrefix };
        [Tooltip("문자 간에 공유된 명명된 상태(포즈). 포즈 이름은 '@char' 명령에서 모양으로 사용하여 관련 상태의 활성화된 속성을 설정할 수 있습니다.")]
        public List<CharacterMetadata.Pose> SharedPoses = new List<CharacterMetadata.Pose>();

        public override CharacterMetadata DefaultActorMetadata => DefaultMetadata;
        public override ActorMetadataMap<CharacterMetadata> ActorMetadataMap => Metadata;

        public CharactersConfiguration ()
        {
            DefaultEasing = EasingType.SmoothStep;
            ZOffset = 50f;
        }

        protected override ActorPose<TState> GetSharedPose<TState> (string poseName) => SharedPoses.FirstOrDefault(p => p.Name == poseName) as ActorPose<TState>;
    }
}
