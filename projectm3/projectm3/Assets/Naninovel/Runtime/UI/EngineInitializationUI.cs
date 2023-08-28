// Copyright 2022 ReWaffle LLC. All rights reserved.

using UnityEngine;

namespace Naninovel.Runtime.UI
{
    /// <summary>
    /// Fullscreen UI shown when the engine is initializing to mask the process.
    /// </summary>
    /// <remarks>
    /// Be careful when using engine API's here, as it's not yet initialized.
    /// </remarks>
    public class EngineInitializationUI : ScriptableUIBehaviour
    {
        [Tooltip("엔진 초기화 진행률이 0.0 ~ 1.0 범위에서 변경될 때 이벤트가 호출됩니다.")]
        [SerializeField] private FloatUnityEvent onInitializationProgress;

        protected override void OnEnable ()
        {
            base.OnEnable();
            Engine.OnInitializationProgress += NotifyProgressChanged;
        }

        protected override void OnDisable ()
        {
            base.OnDisable();
            Engine.OnInitializationProgress -= NotifyProgressChanged;
        }

        protected virtual void NotifyProgressChanged (float value)
        {
            onInitializationProgress?.Invoke(value);
        }
    }
}
