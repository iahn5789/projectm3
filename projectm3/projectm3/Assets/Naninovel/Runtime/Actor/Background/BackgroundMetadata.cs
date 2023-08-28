// Copyright 2022 ReWaffle LLC. All rights reserved.

using System.Collections.Generic;
using System.Linq;
using UnityEngine;

namespace Naninovel
{
    /// <summary>
    /// Represents data required to construct and initialize a <see cref="IBackgroundActor"/>.
    /// </summary>
    [System.Serializable]
    public class BackgroundMetadata : OrthoActorMetadata
    {
        [System.Serializable]
        public class Map : ActorMetadataMap<BackgroundMetadata> { }
        [System.Serializable]
        public class Pose : ActorPose<BackgroundState> { }

        [Tooltip("화면 비율이 다를 때 배경 배우가 화면에 일치하는 모드를 제어합니다. " +
                    "\n • 자르기 - '검은 막대'가 보이지 않도록 배경을 자릅니다." +
                    "\n • Fit — 배경을 화면에 맞춥니다. 배경 전체가 항상 보이지만 '검은색 막대'가 나타납니다." +
                    "\n • 사용자 정의 - 너비 또는 높이 중 하나를 사용자 정의 비율로 일치시킵니다. 비율은 '사용자 정의 일치 비율' 속성으로 제어됩니다." +
                    "\n • 사용 안 함 - 일치를 수행하지 않습니다.")]
        public AspectMatchMode MatchMode = AspectMatchMode.Crop;
        [Tooltip("'Match Mode'가 'Custom'으로 설정되어 있으면 일치 비율을 제어합니다. 최소값(0)은 너비와 높이를 일치시키고, 최대값(1)은 그 반대입니다."), Range(0, 1)]
        public float CustomMatchRatio;
        [Tooltip("배경의 명명된 상태(포즈). 포즈 이름은 '@back' 명령에서 모양으로 사용하여 관련 상태의 활성화된 속성을 설정할 수 있습니다.")]
        public List<Pose> Poses = new List<Pose>();

        public BackgroundMetadata ()
        {
            Implementation = typeof(SpriteBackground).AssemblyQualifiedName;
            Loader = new ResourceLoaderConfiguration { PathPrefix = BackgroundsConfiguration.DefaultPathPrefix };
            Pivot = new Vector2(.5f, .5f);
        }

        public override ActorPose<TState> GetPose<TState> (string poseName) => Poses.FirstOrDefault(p => p.Name == poseName) as ActorPose<TState>;
    }
}
