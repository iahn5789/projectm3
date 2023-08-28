// Copyright 2022 ReWaffle LLC. All rights reserved.

using System;
using UnityEngine;
using UnityEngine.Events;

namespace Naninovel
{
    /// <summary>
    /// Hosts events routed by <see cref="GenericActor{TBehaviour,TMeta}"/>.
    /// </summary>
    public abstract class GenericActorBehaviour : MonoBehaviour
    {
        [Serializable]
        private class AppearanceChangedEvent : UnityEvent<string> { }
        [Serializable]
        private class VisibilityChangedEvent : UnityEvent<bool> { }
        [Serializable]
        private class TintColorChangedEvent : UnityEvent<Color> { }

        /// <summary>
        /// Invoked when appearance of the actor is changed.
        /// </summary>
        public event Action<string> OnAppearanceChanged;
        /// <summary>
        /// Invoked when visibility of the actor is changed.
        /// </summary>
        public event Action<bool> OnVisibilityChanged;
        /// <summary>
        /// Invoked when tint color of the actor is changed.
        /// </summary>
        public event Action<Color> OnTintColorChanged;

        [Tooltip("배우의 모양이 변경될 때 호출됩니다.")]
        [SerializeField] private AppearanceChangedEvent onAppearanceChanged;
        [Tooltip("액터의 가시성이 변경될 때 호출됩니다.")]
        [SerializeField] private VisibilityChangedEvent onVisibilityChanged;
        [Tooltip("배우의 색조 색이 변경될 때 호출됩니다.")]
        [SerializeField] private TintColorChangedEvent onTintColorChanged;

        public void InvokeAppearanceChangedEvent (string value)
        {
            OnAppearanceChanged?.Invoke(value);
            onAppearanceChanged?.Invoke(value);
        }

        public void InvokeVisibilityChangedEvent (bool value)
        {
            OnVisibilityChanged?.Invoke(value);
            onVisibilityChanged?.Invoke(value);
        }

        public void InvokeTintColorChangedEvent (Color value)
        {
            OnTintColorChanged?.Invoke(value);
            onTintColorChanged?.Invoke(value);
        }
    }
}
