// Copyright 2022 ReWaffle LLC. All rights reserved.

using UnityEngine;
using UnityEngine.Events;

namespace Naninovel
{
    /// <summary>
    /// Allows listening for events when screen aspect ratio goes below or above specified threshold.
    /// </summary>
    public class ReactToAspectRatio : MonoBehaviour
    {
        [System.Serializable]
        private class ThresholdReachedEvent : UnityEvent<bool> { }

        [Tooltip("장면 종횡비(폭을 높이로 나눈 값)가 값을 상회하거나 하회하면 이벤트가 호출됩니다.")]
        [SerializeField] private float aspectThreshold = 1f;
        [Tooltip("값을 업데이트하는 빈도(초)입니다."), Range(0f, 1f)]
        [SerializeField] private float updateDelay = .5f;
        [Tooltip("장면 종횡비(폭을 높이로 나눈 값)가 변경되어 지정된 임계값 이상(참값) 또는 미만(거짓값)이 될 때 호출됩니다.")]
        [SerializeField] private ThresholdReachedEvent onThresholdReached;

        private AspectMonitor aspectMonitor;

        private void Awake ()
        {
            aspectMonitor = new AspectMonitor();
            aspectMonitor.OnChanged += HandleAspectChanged;
            aspectMonitor.Start(updateDelay, this);
        }

        private void OnDestroy ()
        {
            if (aspectMonitor != null)
            {
                aspectMonitor.OnChanged -= HandleAspectChanged;
                aspectMonitor.Stop();
            }
        }

        private void HandleAspectChanged (AspectMonitor monitor)
        {
            onThresholdReached?.Invoke(monitor.CurrentAspect >= aspectThreshold);
        }
    }
}
