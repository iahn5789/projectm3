// Copyright 2022 ReWaffle LLC. All rights reserved.

using UnityEngine;

namespace Naninovel
{
    public abstract class OrthoActorManagerConfiguration<TMeta> : ActorManagerConfiguration<TMeta>
        where TMeta : ActorMetadata
    {
        [Tooltip("관리되는 액터의 원점으로 간주되는 장면의 기준점. 포지셔닝에 영향을 미치지 않습니다.")]
        public Vector2 SceneOrigin = new Vector2(.5f, 0f);
        [Tooltip("액터를 생성할 때 설정할 액터에서 카메라로의 초기 Z축 오프셋(깊이).")]
        public float ZOffset = 100;
        [Tooltip("액터가 생성될 때 액터 사이에 설정할 Z축별 거리. z 싸움 문제를 방지하는 데 사용됩니다.")]
        public float ZStep = .1f;
    }
}
