// Copyright 2022 ReWaffle LLC. All rights reserved.

using UnityEngine;

namespace Naninovel.UI
{
    public class ControlPanelSaveButton : ScriptableButton
    {
        public Animator autoButtonAnim;
        private ICustomVariableManager variableManager;
        private IUIManager uiManager;

        protected override void Awake ()
        {
            base.Awake();

            uiManager = Engine.GetService<IUIManager>();
        }

        protected override void OnButtonClick ()
        {
            uiManager.GetUI<IPauseUI>()?.Hide();

            var saveLoadUI = uiManager.GetUI<ISaveLoadUI>();
            if (saveLoadUI is null) return;

            saveLoadUI.PresentationMode = SaveLoadUIPresentationMode.Save;
            saveLoadUI.Show();
        }
        public void OnClick (string InputKey)
        {
            uiManager.GetUI<IPauseUI>()?.Hide();

            var saveLoadUI = uiManager.GetUI<ISaveLoadUI>();
            var saveLoadUI_Load = uiManager.GetUI<ISaveLoadUI>();
            if (saveLoadUI is null) return;
            if (!Engine.GetService<IInputManager>().ProcessInput) return;

            variableManager = Engine.GetService<ICustomVariableManager>();
            variableManager?.SetVariableValue($"InputKeyValue", InputKey);
            autoButtonAnim.SetTrigger("UIHide");

            saveLoadUI.PresentationMode = SaveLoadUIPresentationMode.Save;
            saveLoadUI.Show();
        }
    } 
}
