// Copyright 2022 ReWaffle LLC. All rights reserved.

using System;
using System.Collections.Generic;
using System.Linq;
using Naninovel.Runtime.UI;
using TMPro;
using UnityEngine;

namespace Naninovel.UI
{
    /// <summary>
    /// An implementation of <see cref="IManagedUI"/>, that
    /// can be used to create custom user managed UI objects.
    /// </summary>
    public class CustomUI : ScriptableUIBehaviour, IManagedUI
    {
        [Serializable]
        public class GameState
        {
            public bool Visible;
        }

        [Serializable]
        public class FontChangeConfiguration
        {
            [Tooltip("글꼴 변경에 영향을 받는 텍스트 구성 요소가 있는 게임 개체입니다.")]
            public GameObject Object;
            [Tooltip("텍스트 구성 요소의 글꼴 변경을 허용할지 여부입니다.")]
            public bool AllowFontChange = true;
            [Tooltip("텍스트 구성 요소의 글꼴 크기 변경을 허용할지 여부입니다.")]
            public bool AllowFontSizeChange = true;
            [Tooltip("크기 목록은 텍스트 구성 요소에 적용할 실제 글꼴 크기를 포함해야 합니다. 목록의 각 요소는 글꼴 크기 드롭다운 목록 인덱스: Small -> 0, Default -> 1, Large -> 2, Extra Large -> 3(설정 UI를 통해 변경할 수 있음)에 해당합니다. 기본값은 무시되고 Prefab에 처음 설정된 글꼴 크기가 대신 사용됩니다.")]
            public List<int> FontSizes;
            [NonSerialized]
            public int DefaultSize;
            [NonSerialized]
            public Font DefaultFont;
            [NonSerialized]
            public TMP_FontAsset DefaultTMPFont;
        }

        public virtual bool HideOnLoad => hideOnLoad;
        public virtual bool HideInThumbnail => hideInThumbnail;
        public virtual bool SaveVisibilityState => saveVisibilityState;
        public virtual bool BlockInputWhenVisible => blockInputWhenVisible;
        public virtual bool ModalUI => modalUI;

        protected virtual List<FontChangeConfiguration> FontChangeConfigurations => fontChangeConfiguration;
        protected virtual string[] AllowedSamplers => allowedSamplers;

        [Tooltip("게임을 로드하거나 상태를 재설정할 때 UI를 자동으로 숨길지 여부입니다.")]
        [SerializeField] private bool hideOnLoad = true;
        [Tooltip("저장 로드 슬롯에 대한 썸네일을 캡처할 때 UI를 숨길지 여부입니다.")]
        [SerializeField] private bool hideInThumbnail;
        [Tooltip("게임을 저장/로딩할 때 UI의 가시성을 유지할지 여부입니다.")]
        [SerializeField] private bool saveVisibilityState = true;
        [Tooltip("UI가 표시되는 동안 사용자 입력 처리를 중지할지 여부. 또한 UI가 표시되면 자동 읽기를 종료하고 스크립트 플레이어 모드를 건너뜁니다.")]
        [SerializeField] private bool blockInputWhenVisible;
        [Tooltip("UI가 표시되는 동안 입력이 차단된 경우에도 어떤 입력 샘플러가 허용되어야 합니다.")]
        [SerializeField] private string[] allowedSamplers;
        [Tooltip("UI가 표시되는 동안 다른 모든 관리되는 UI를 상호 작용할 수 없도록 할지 여부입니다.")]
        [SerializeField] private bool modalUI;
        [Tooltip("글꼴 및 텍스트 크기 변경(게임 설정에서 설정)의 영향을 받는 게임 개체를 설정합니다.")]
        [SerializeField] private List<FontChangeConfiguration> fontChangeConfiguration;

        private IStateManager stateManager;
        private IInputManager inputManager;
        private IUIManager uiManager;
        private IScriptPlayer scriptPlayer;

        public virtual UniTask InitializeAsync () => UniTask.CompletedTask;

        public virtual void SetFont (Font font, TMP_FontAsset tmpFont)
            => FontChanger.ChangeFont(font, tmpFont, FontChangeConfigurations);

        public virtual void SetFontSize (int dropdownIndex)
            => FontChanger.ChangeFontSize(dropdownIndex, FontChangeConfigurations);

        protected override void Awake ()
        {
            stateManager = Engine.GetService<IStateManager>();
            inputManager = Engine.GetService<IInputManager>();
            uiManager = Engine.GetService<IUIManager>();
            scriptPlayer = Engine.GetService<IScriptPlayer>();

            base.Awake();

            InitializeFontChangeConfiguration();
        }

        protected override void OnEnable ()
        {
            base.OnEnable();

            if (HideOnLoad)
            {
                stateManager.OnGameLoadStarted += HandleGameLoadStarted;
                stateManager.OnResetStarted += Hide;
            }

            stateManager.AddOnGameSerializeTask(SerializeState);
            stateManager.AddOnGameDeserializeTask(DeserializeState);

            if (BlockInputWhenVisible)
                inputManager.AddBlockingUI(this, AllowedSamplers);
        }

        protected override void OnDisable ()
        {
            base.OnDisable();

            if (HideOnLoad && stateManager != null)
            {
                stateManager.OnGameLoadStarted -= HandleGameLoadStarted;
                stateManager.OnResetStarted -= Hide;
            }

            if (stateManager != null)
            {
                stateManager.RemoveOnGameSerializeTask(SerializeState);
                stateManager.RemoveOnGameDeserializeTask(DeserializeState);
            }

            if (BlockInputWhenVisible)
                inputManager?.RemoveBlockingUI(this);
        }

        protected virtual void SerializeState (GameStateMap stateMap)
        {
            if (SaveVisibilityState)
            {
                var state = new GameState {
                    Visible = Visible
                };
                stateMap.SetState(state, name);
            }
        }

        protected virtual UniTask DeserializeState (GameStateMap stateMap)
        {
            if (SaveVisibilityState)
            {
                var state = stateMap.GetState<GameState>(name);
                if (state is null) return UniTask.CompletedTask;
                Visible = state.Visible;
            }
            return UniTask.CompletedTask;
        }

        protected override void HandleVisibilityChanged (bool visible)
        {
            base.HandleVisibilityChanged(visible);

            if (ModalUI)
            {
                if (visible) uiManager?.AddModalUI(this);
                else uiManager?.RemoveModalUI(this);
            }

            if (BlockInputWhenVisible)
            {
                if (scriptPlayer.SkipActive && !(AllowedSamplers?.Contains(InputConfiguration.SkipName) ?? false))
                    scriptPlayer.SetSkipEnabled(false);
                if (scriptPlayer.AutoPlayActive && !(AllowedSamplers?.Contains(InputConfiguration.AutoPlayName) ?? false))
                    scriptPlayer.SetAutoPlayEnabled(false);
            }
        }

        protected virtual void InitializeFontChangeConfiguration () =>
            FontChanger.InitializeConfiguration(FontChangeConfigurations);

        private void HandleGameLoadStarted (GameSaveLoadArgs args) => Hide();
    }
}
