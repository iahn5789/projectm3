// Copyright 2022 ReWaffle LLC. All rights reserved.

using System;
using UnityEngine;
using UnityEngine.Events;

namespace Naninovel
{
    /// <summary>
    /// Retrieves <see cref="OrthoActorMetadata.RenderTexture"/> when the engine is ready
    /// and invokes a Unity event with the retrieved texture.
    /// </summary>
    /// <remarks>
    /// Used as a workaround instead of directly assigning actor render texture to an addressable
    /// prefab due to https://issuetracker.unity3d.com/product/unity/issues/guid/1277169.
    /// </remarks>
    public class GetActorRenderTexture : MonoBehaviour
    {
        [Serializable]
        private class RenderTextureRetrievedEvent : UnityEvent<RenderTexture> { }
        
        private enum ActorType { Character, Background }
        
        [Tooltip("배우가 캐릭터인지 배경인지.")]
        [SerializeField] private ActorType actorType;
        [Tooltip("렌더 텍스처를 가져올 배우의 ID입니다.")]
        [SerializeField] private string actorId;
        [Tooltip("렌더 텍스처가 지정된 액터에서 검색될 때 호출됩니다.")]
        [SerializeField] private RenderTextureRetrievedEvent onRenderTextureRetrieved;
        
        private void OnEnable ()
        {
            if (Engine.Initialized) RetrieveTexture();
            else Engine.OnInitializationFinished += RetrieveTexture;
        }
        
        private void OnDisable ()
        {
            Engine.OnInitializationFinished -= RetrieveTexture;
        }

        private void RetrieveTexture ()
        {
            var renderTexture = actorType == ActorType.Character
                ? Engine.GetConfiguration<CharactersConfiguration>().GetMetadataOrDefault(actorId).RenderTexture
                : Engine.GetConfiguration<BackgroundsConfiguration>().GetMetadataOrDefault(actorId).RenderTexture;
            if (renderTexture == null)
            {
                Engine.Err($"Failed to retrieve `{actorId}` {actorType} actor render texture: either the actor doesn't exist or the render texture is not assigned in the configuration.");
                return;
            }
            
            onRenderTextureRetrieved?.Invoke(renderTexture);
        }
    }
}
