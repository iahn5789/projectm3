// Copyright 2022 ReWaffle LLC. All rights reserved.

using System;
using UnityEngine;
using UnityEngine.Events;

namespace Naninovel
{
    /// <summary>
    /// Allows to listen for events when value of a custom state variable with specific name is changed.
    /// </summary>
    public class CustomVariableTrigger : MonoBehaviour
    {
        [Serializable]
        private class VariableValueChangedEvent : UnityEvent<string> { }
        [Serializable]
        private class FloatVariableValueChangedEvent : UnityEvent<float> { }
        [Serializable]
        private class IntVariableValueChangedEvent : UnityEvent<int> { }
        [Serializable]
        private class BoolVariableValueChangedEvent : UnityEvent<bool> { }

        /// <summary>
        /// Invoked when value of the listened variable is changed.
        /// </summary>
        public event Action<string> OnVariableValueChanged;

        /// <summary>
        /// Name of a custom state variable to listen for.
        /// </summary>
        public string CustomVariableName { get => customVariableName; set => customVariableName = value; }
        /// <summary>
        /// Attempts to retrieve current value of the listened variable.
        /// </summary>
        public string CustomVariableValue => variableManager?.GetVariableValue(CustomVariableName);

        [Tooltip("수신 대기할 사용자 지정 상태 변수의 이름입니다.")]
        [SerializeField] private string customVariableName;
        [Tooltip("지정된 이름의 사용자 지정 변수 값이 변경될 때 호출되며, 구성 요소가 시작될 때도 호출됩니다.")]
        [SerializeField] private VariableValueChangedEvent onVariableValueChanged;
        [Tooltip("지정된 이름의 사용자 지정 변수 값이 변경되고 값이 부동 변수일 때 호출되며 구성 요소가 시작될 때도 호출됩니다.")]
        [SerializeField] private FloatVariableValueChangedEvent onFloatVariableValueChanged;
        [Tooltip("지정된 이름의 사용자 지정 변수 값이 변경되고 값이 정수일 때 호출되며 구성 요소가 시작될 때도 호출됩니다.")]
        [SerializeField] private IntVariableValueChangedEvent onIntVariableValueChanged;
        [Tooltip("지정된 이름의 사용자 지정 변수 값이 변경되고 값이 부울일 때 호출되며 구성 요소가 시작될 때도 호출됩니다.")]
        [SerializeField] private BoolVariableValueChangedEvent onBoolVariableValueChanged;

        private ICustomVariableManager variableManager;
        private IStateManager stateManager;

        private void Awake ()
        {
            variableManager = Engine.GetService<ICustomVariableManager>();
            stateManager = Engine.GetService<IStateManager>();
        }

        private void OnEnable ()
        {
            variableManager.OnVariableUpdated += HandleVariableUpdated;
            stateManager.AddOnGameDeserializeTask(HandleGameDeserialized);
        }

        private void OnDisable ()
        {
            if (variableManager != null)
                variableManager.OnVariableUpdated -= HandleVariableUpdated;
            stateManager?.RemoveOnGameDeserializeTask(HandleGameDeserialized);
        }

        private void Start ()
        {
            OnVariableValueChanged?.Invoke(CustomVariableValue);
            onVariableValueChanged?.Invoke(CustomVariableValue);
            if (!string.IsNullOrEmpty(CustomVariableValue) && ParseUtils.TryInvariantFloat(CustomVariableValue, out var floatValue))
                onFloatVariableValueChanged?.Invoke(floatValue);
            if (!string.IsNullOrEmpty(CustomVariableValue) && ParseUtils.TryInvariantInt(CustomVariableValue, out var intValue))
                onIntVariableValueChanged?.Invoke(intValue);
            if (!string.IsNullOrEmpty(CustomVariableValue) && bool.TryParse(CustomVariableValue, out var boolValue))
                onBoolVariableValueChanged?.Invoke(boolValue);
        }

        private void HandleVariableUpdated (CustomVariableUpdatedArgs args)
        {
            if (!args.Name.EqualsFastIgnoreCase(CustomVariableName)) return;

            OnVariableValueChanged?.Invoke(args.Value);
            onVariableValueChanged?.Invoke(args.Value);
            if (!string.IsNullOrEmpty(args.Value) && ParseUtils.TryInvariantFloat(args.Value, out var floatValue))
                onFloatVariableValueChanged?.Invoke(floatValue);
            if (!string.IsNullOrEmpty(args.Value) && ParseUtils.TryInvariantInt(args.Value, out var intValue))
                onIntVariableValueChanged?.Invoke(intValue);
            if (!string.IsNullOrEmpty(args.Value) && bool.TryParse(args.Value, out var boolValue))
                onBoolVariableValueChanged?.Invoke(boolValue);
        }

        private UniTask HandleGameDeserialized (GameStateMap state)
        {
            OnVariableValueChanged?.Invoke(CustomVariableValue);
            onVariableValueChanged?.Invoke(CustomVariableValue);
            if (!string.IsNullOrEmpty(CustomVariableValue) && ParseUtils.TryInvariantFloat(CustomVariableValue, out var floatValue))
                onFloatVariableValueChanged?.Invoke(floatValue);
            if (!string.IsNullOrEmpty(CustomVariableValue) && ParseUtils.TryInvariantInt(CustomVariableValue, out var intValue))
                onIntVariableValueChanged?.Invoke(intValue);
            if (!string.IsNullOrEmpty(CustomVariableValue) && bool.TryParse(CustomVariableValue, out var boolValue))
                onBoolVariableValueChanged?.Invoke(boolValue);
            return UniTask.CompletedTask;
        }
    }
}
