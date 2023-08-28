// Copyright 2022 ReWaffle LLC. All rights reserved.

using System;
using UnityEngine;
using UnityEngine.Events;

namespace Naninovel
{
    /// <summary>
    /// Allows to listen for events when an unlockable item managed by <see cref="IUnlockableManager"/> is updated.
    /// </summary>
    public class UnlockableTrigger : MonoBehaviour
    {
        [Serializable]
        private class UnlockedStateChangedEvent : UnityEvent<bool> { }

        /// <summary>
        /// Invoked when unlocked state of the listened unlockable item is changed.
        /// </summary>
        public event Action<bool> OnUnlockedStateChanged;

        /// <summary>
        /// ID of the unlockable item to listen for.
        /// </summary>
        public virtual string UnlockableItemId { get => unlockableItemId; set => unlockableItemId = value; }

        protected IUnlockableManager UnlockableManager => Engine.GetService<IUnlockableManager>();

        [Tooltip("듣는 잠금 해제 가능 항목의 ID")]
        [SerializeField] private string unlockableItemId;
        [Tooltip("수신된 잠금 해제 가능 항목의 잠금 해제 상태가 변경될 때 호출됩니다. 구성 요소가 시작될 때도 호출됩니다.")]
        [SerializeField] private UnlockedStateChangedEvent onUnlockedStateChanged;
        [Tooltip("항목 잠금 해제 시 호출")]
        [SerializeField] private UnityEvent onUnlocked;
        [Tooltip("항목이 잠겨 있을 때 호출됨")]
        [SerializeField] private UnityEvent onLocked;

        protected virtual void OnEnable ()
        {
            Engine.OnInitializationFinished += Initialize;
            if (Engine.Initialized) Initialize();
        }

        protected virtual void OnDisable ()
        {
            Engine.OnInitializationFinished -= Initialize;
            if (UnlockableManager != null)
                UnlockableManager.OnItemUpdated -= HandleItemUpdated;
        }

        protected virtual void Initialize ()
        {
            UnlockableManager.OnItemUpdated -= HandleItemUpdated;
            UnlockableManager.OnItemUpdated += HandleItemUpdated;

            var unlocked = UnlockableManager.ItemUnlocked(UnlockableItemId);
            InvokeEvents(unlocked);
        }

        protected virtual void HandleItemUpdated (UnlockableItemUpdatedArgs args)
        {
            if (args.Id.EqualsFastIgnoreCase(UnlockableItemId))
                InvokeEvents(args.Unlocked);
        }

        private void InvokeEvents (bool unlocked)
        {
            OnUnlockedStateChanged?.Invoke(unlocked);
            onUnlockedStateChanged?.Invoke(unlocked);
            if (unlocked) onUnlocked?.Invoke();
            else onLocked.Invoke();
        }
    }
}
