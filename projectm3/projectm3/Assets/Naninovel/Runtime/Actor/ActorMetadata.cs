// Copyright 2022 ReWaffle LLC. All rights reserved.

using UnityEngine;

namespace Naninovel
{
    /// <summary>
    /// Represents serializable data required to construct and initialize a <see cref="IActor"/>.
    /// </summary>
    [System.Serializable]
    public abstract class ActorMetadata
    {
        /// <summary>
        /// Globally-unique identifier of the medata instance.
        /// </summary>
        public string Guid => guid;

        [Tooltip("어셈블리 자격 형식의 배우 구현 이름입니다.")]
        public string Implementation;
        [Tooltip("배우의 리소스를 로드하는 방법을 설명하는 데이터입니다.")]
        public ResourceLoaderConfiguration Loader;

        [HideInInspector]
        [SerializeField] private string guid = System.Guid.NewGuid().ToString();
        [SerializeReference] private CustomMetadata customData;

        /// <summary>
        /// Attempts to retrieve an actor pose associated with the provided name;
        /// returns null when not found.
        /// </summary>
        public abstract ActorPose<TState> GetPose<TState> (string poseName) where TState : ActorState;

        /// <summary>
        /// Attempts to retrieve a custom data of type <typeparamref name="TData"/>.
        /// </summary>
        /// <typeparam name="TData">Type of the custom data to retrieve.</typeparam>
        public virtual TData GetCustomData<TData> () where TData : CustomMetadata
        {
            return customData as TData;
        }

        /// <summary>
        /// Returns ID of the resource category associated with the metadata.
        /// </summary>
        public string GetResourceCategoryId () => $"{Loader.PathPrefix}/{Guid}";
    }
}
