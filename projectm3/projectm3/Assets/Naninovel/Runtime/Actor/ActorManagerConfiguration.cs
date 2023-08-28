// Copyright 2022 ReWaffle LLC. All rights reserved.

using UnityEngine;

namespace Naninovel
{
    /// <summary>
    /// Asset used to configure <see cref="IActorManager"/> services.
    /// </summary>
    public abstract class ActorManagerConfiguration : Configuration
    {
        [Tooltip("모든 액터 수정(외형, 위치, 색조 변경 등)의 기본 지속 시간(초)입니다.")]
        public float DefaultDuration = .35f;
        [Tooltip("모든 배우 수정 애니메이션(외형, 위치, 틴트 등 변경)에 기본적으로 사용할 수 있는 쉬운 기능입니다.")]
        public EasingType DefaultEasing = EasingType.Linear;
        [Tooltip("수정 명령을 실행할 때 액터를 자동으로 표시(표시)할지 여부입니다.")]
        public bool AutoShowOnModify = true;

        public abstract ActorMetadataMap MetadataMap { get; }

        /// <summary>
        /// Attempts to retrieve metadata of an actor with the provided ID;
        /// when not found, will return a default metadata.
        /// </summary>
        public ActorMetadata GetMetadataOrDefault (string actorId) => GetMetadataOrDefaultNonGeneric(actorId);

        /// <summary>
        /// Attempts to retrieve a pose associated with the provided actor ID and name (assigned via actor metadata).
        /// When not found, will attempt to retrieve a shared pose with the provided name (assigned via configuration).
        /// Will return null in case neither found.
        /// </summary>
        public ActorPose<TState> GetActorOrSharedPose<TState> (string actorId, string poseName) where TState : ActorState
        {
            return GetMetadataOrDefault(actorId).GetPose<TState>(poseName) ?? GetSharedPose<TState>(poseName);
        }

        protected abstract ActorMetadata GetMetadataOrDefaultNonGeneric (string actorId);
        protected abstract ActorPose<TState> GetSharedPose<TState> (string poseName) where TState : ActorState;
    }

    /// <summary>
    /// Asset used to configure <see cref="IActorManager"/> services.
    /// </summary>
    /// <typeparam name="TMeta">Type of actor metadata configured service operates with.</typeparam>
    public abstract class ActorManagerConfiguration<TMeta> : ActorManagerConfiguration
        where TMeta : ActorMetadata
    {
        public abstract TMeta DefaultActorMetadata { get; }
        public abstract ActorMetadataMap<TMeta> ActorMetadataMap { get; }
        public override ActorMetadataMap MetadataMap => ActorMetadataMap;

        /// <inheritdoc cref="ActorManagerConfiguration.GetMetadataOrDefault"/>
        public new TMeta GetMetadataOrDefault (string actorId)
        {
            return ActorMetadataMap.ContainsId(actorId) ? ActorMetadataMap[actorId] : DefaultActorMetadata;
        }

        protected override ActorMetadata GetMetadataOrDefaultNonGeneric (string actorId) => GetMetadataOrDefault(actorId);
    }
}
