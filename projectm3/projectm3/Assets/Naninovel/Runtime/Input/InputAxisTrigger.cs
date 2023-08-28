// Copyright 2022 ReWaffle LLC. All rights reserved.

using UnityEngine;

namespace Naninovel
{
    [System.Serializable]
    public class InputAxisTrigger
    {
        [Tooltip("축의 이름입니다.")]
        public string AxisName = string.Empty;
        [Tooltip("축 값이 positive, negative 또는 두 가지 모두일 때 트리거를 수행할지 여부입니다.")]
        public InputAxisTriggerMode TriggerMode = InputAxisTriggerMode.Both;
        [Tooltip("축 값이 이 값보다 작거나 같으면 트리거가 활성화되지 않습니다."), Range(0, .999f)]
        public float TriggerTolerance = .001f;

        /// <summary>
        /// Returns the current axis value when it's above the trigger tolerance; zero otherwise.
        /// </summary>
        public float Sample ()
        {
            #if ENABLE_LEGACY_INPUT_MANAGER
            if (string.IsNullOrEmpty(AxisName)) return 0;

            var value = Input.GetAxis(AxisName);

            if (TriggerMode == InputAxisTriggerMode.Positive && value <= 0) return 0;
            if (TriggerMode == InputAxisTriggerMode.Negative && value >= 0) return 0;

            if (Mathf.Abs(value) < TriggerTolerance) return 0;

            return value;
            #else
            return 0;
            #endif
        }
    }
}
