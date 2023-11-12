// Copyright 2022 ReWaffle LLC. All rights reserved.


namespace Naninovel.UI
{
    public class ControlPanelTitleButton : ScriptableButton
    {
        [ManagedText("DefaultUI")]
        protected static string ConfirmationMessage = "타이틀 화면으로 돌아가시겠습니까?\n저장되지 않은 게임 진행 상황은 모두 사라집니다.";

        private IStateManager gameState;
        private IUIManager uiManager;
        private IConfirmationUI confirmationUI;

        protected override void Awake ()
        {
            base.Awake();

            gameState = Engine.GetService<IStateManager>();
            uiManager = Engine.GetService<IUIManager>();
        }

        protected override void Start ()
        {
            base.Start();

            confirmationUI = uiManager.GetUI<IConfirmationUI>();
        }

        protected override void OnButtonClick ()
        {
            uiManager.GetUI<IPauseUI>()?.Hide();

            ExitToTitleAsync();
        }

        private async void ExitToTitleAsync ()
        {
            if (!await confirmationUI.ConfirmAsync(ConfirmationMessage)) return;

            await gameState.ResetStateAsync();
            uiManager.GetUI<ITitleUI>()?.Show();
        }
    } 
}
