// Copyright 2022 ReWaffle LLC. All rights reserved.
using System.Threading.Tasks;
using UnityEngine;

namespace Naninovel.UI
{
    public class TitleContinueButton : ScriptableButton
    {
        private IStateManager stateManager;
        private IUIManager uiManager;
        public GameObject SaveLoadUIPrefab;

        protected override void Awake ()
        {
            base.Awake();

            stateManager = Engine.GetService<IStateManager>();
            uiManager = Engine.GetService<IUIManager>();
        }

        protected override void Start ()
        {
            base.Start();

            ControlInteractability(default);
        }

        protected override void OnEnable ()
        {
            base.OnEnable();

            stateManager.GameSlotManager.OnSaved += ControlInteractability;
            stateManager.GameSlotManager.OnDeleted += ControlInteractability;
        }

        protected override void OnDisable ()
        {
            base.OnDisable();

            stateManager.GameSlotManager.OnSaved -= ControlInteractability;
            stateManager.GameSlotManager.OnDeleted -= ControlInteractability;
        }

        protected override async void OnButtonClick ()
        {
            var saveLoadUI = uiManager.GetUI<ISaveLoadUI>();
            if (saveLoadUI == null)
            {
                saveLoadUI = await CreateAndInitializeSaveLoadUIAsync();
                if (saveLoadUI == null) return; // 생성 실패 시 함수 종료
            }

            var lastLoadMode = saveLoadUI.GetLastLoadMode();
            saveLoadUI.PresentationMode = lastLoadMode;
            saveLoadUI.Show();
        }
        private async Task<ISaveLoadUI> CreateAndInitializeSaveLoadUIAsync()
        {
            var saveLoadUIInstance = await uiManager.AddUIAsync(SaveLoadUIPrefab);
            return saveLoadUIInstance as ISaveLoadUI;
        }

        // private void ControlInteractability (string _) => UIComponent.interactable = stateManager.AnyGameSaveExists;
        private void ControlInteractability (string _)
        {
            UIComponent.interactable = true; // 항상 활성화 상태로 유지
        }
    }
}
