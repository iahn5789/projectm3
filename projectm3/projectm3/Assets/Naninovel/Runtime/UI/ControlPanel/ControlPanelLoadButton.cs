// Copyright 2022 ReWaffle LLC. All rights reserved.


namespace Naninovel.UI
{
    public class ControlPanelLoadButton : ScriptableButton
    {
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
        public void OnClick ()
        {
            uiManager.GetUI<IPauseUI>()?.Hide();

            var saveLoadUI = uiManager.GetUI<ISaveLoadUI>();
            var saveLoadUI_Save = uiManager.GetUI<ISaveLoadUI>();
            if (saveLoadUI is null) return;
            if (!Engine.GetService<IInputManager>().ProcessInput) return;

            saveLoadUI.PresentationMode = SaveLoadUIPresentationMode.Load;
            saveLoadUI.Show();
        }
    } 
}
