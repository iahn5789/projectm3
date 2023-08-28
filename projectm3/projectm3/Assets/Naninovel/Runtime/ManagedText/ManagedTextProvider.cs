// Copyright 2022 ReWaffle LLC. All rights reserved.

using UnityEngine;
using UnityEngine.Events;

namespace Naninovel
{
    /// <summary>
    /// Allows providing managed text values to game objects via Unity events.
    /// When attached to a managed UI, text printer or choice handler
    /// generated managed text documents will automatically include corresponding record.
    /// </summary>
    public class ManagedTextProvider : MonoBehaviour
    {
        [System.Serializable]
        private class ValueChangedEvent : UnityEvent<string> { }

        public string Category => category;
        public string Key => string.IsNullOrWhiteSpace(key) ? gameObject.name : key;
        public string DefaultValue => defaultValue;

        [Tooltip("추적된 관리 텍스트 레코드를 포함하는 관리 텍스트 문서의 이름입니다.")]
        [SerializeField] private string category = ManagedTextRecord.DefaultCategoryName;
        [Tooltip("추적된 관리되는 텍스트 레코드의 ID입니다. 제공되지 않은 경우(공백일 경우) 구성 요소가 연결된 게임 개체의 이름을 사용합니다.")]
        [SerializeField] private string key;
        [Tooltip("추적된 레코드가 누락된 경우 사용할 기본값입니다.")]
        [SerializeField] private string defaultValue;
        [Tooltip("추적된 관리 텍스트 레코드의 값이 변경될 때(예: 현지화 전환 시) 호출되며, 엔진이 초기화될 때도 호출됩니다.")]
        [SerializeField] private ValueChangedEvent onValueChanged;

        private ILocalizationManager localizationManager;
        private ITextManager textManager;

        private void OnEnable ()
        {
            if (Engine.Initialized) HandleEngineInitialized();
            else Engine.OnInitializationFinished += HandleEngineInitialized;
        }

        private void OnDisable ()
        {
            if (localizationManager != null)
                localizationManager.OnLocaleChanged -= HandleLocalizationChanged;
            Engine.OnInitializationFinished -= HandleEngineInitialized;
        }

        private void HandleEngineInitialized ()
        {
            Engine.OnInitializationFinished -= HandleEngineInitialized;

            textManager = Engine.GetService<ITextManager>();
            localizationManager = Engine.GetService<ILocalizationManager>();
            localizationManager.OnLocaleChanged += HandleLocalizationChanged;

            InvokeValueChanged();
        }

        private void HandleLocalizationChanged (string locale) => InvokeValueChanged();

        private void InvokeValueChanged ()
        {
            var recordKey = string.IsNullOrWhiteSpace(key) ? gameObject.name : key;
            var value = textManager.GetRecordValue(recordKey, category);
            onValueChanged?.Invoke(value ?? DefaultValue);
        }
    }
}
