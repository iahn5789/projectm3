// Copyright 2022 ReWaffle LLC. All rights reserved.

using Naninovel;
using Naninovel.Commands;
using UnityEngine;

namespace Naninovel.UI
{
    public class ControlPanelLoadButton : ScriptableButton
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

            saveLoadUI.PresentationMode = SaveLoadUIPresentationMode.Load;
            saveLoadUI.Show();
        }
        public void OnClick (string InputKey)
        {
            uiManager.GetUI<IPauseUI>()?.Hide();
            variableManager = Engine.GetService<ICustomVariableManager>();
            bool FlashBackStart = bool.Parse(variableManager.GetVariableValue("G_FlashBackStart"));
            var saveLoadUI = uiManager.GetUI<ISaveLoadUI>();
            var saveLoadUI_Save = uiManager.GetUI<ISaveLoadUI>();
            if (FlashBackStart) return;
            if (saveLoadUI is null) return;
            if (!Engine.GetService<IInputManager>().ProcessInput) return;

            variableManager = Engine.GetService<ICustomVariableManager>();
            variableManager?.SetVariableValue($"InputKeyValue", InputKey);
            autoButtonAnim.ResetTrigger("FirstShow"); // MenuUI 애니메이션 재생
            autoButtonAnim.SetTrigger("Hide");
            
            saveLoadUI.PresentationMode = SaveLoadUIPresentationMode.Load;
            saveLoadUI.Show();
        }
    } 
}
