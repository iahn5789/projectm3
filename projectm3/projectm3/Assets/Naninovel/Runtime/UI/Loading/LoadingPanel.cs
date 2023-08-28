// Copyright 2022 ReWaffle LLC. All rights reserved.

using UnityEngine;

namespace Naninovel.UI
{
    public class LoadingPanel : CustomUI, ILoadingUI
    {
        [Tooltip("0.0 ~ 1.0 범위의 스크립트 프리로드 진행률이 변경될 때 이벤트가 호출됩니다.")]
        [SerializeField] private FloatUnityEvent onProgressChanged;

        private IStateManager stateManager;
        private IScriptPlayer scriptPlayer;

        protected override void Awake ()
        {
            base.Awake();

            stateManager = Engine.GetService<IStateManager>();
            scriptPlayer = Engine.GetService<IScriptPlayer>();
        }

        protected override void OnEnable ()
        {
            base.OnEnable();

            stateManager.OnGameLoadStarted += HandleLoadStarted;
            stateManager.OnGameLoadFinished += HandleLoadFinished;
            stateManager.OnResetStarted += Show;
            stateManager.OnResetFinished += Hide;
            scriptPlayer.OnPreloadProgress += HandleProgressChanged;
        }

        protected override void OnDisable ()
        {
            base.OnDisable();

            if (stateManager != null)
            {
                stateManager.OnGameLoadStarted -= HandleLoadStarted;
                stateManager.OnGameLoadFinished -= HandleLoadFinished;
                stateManager.OnResetStarted -= Show;
                stateManager.OnResetFinished -= Hide;
            }

            if (scriptPlayer != null)
                scriptPlayer.OnPreloadProgress -= HandleProgressChanged;
        }

        protected override void HandleVisibilityChanged (bool visible)
        {
            base.HandleVisibilityChanged(visible);
            onProgressChanged?.Invoke(0);
        }

        protected virtual void HandleLoadStarted (GameSaveLoadArgs args) => Show();
        protected virtual void HandleLoadFinished (GameSaveLoadArgs args) => Hide();
        protected virtual void HandleProgressChanged (float value) => onProgressChanged?.Invoke(value);
    }
}
