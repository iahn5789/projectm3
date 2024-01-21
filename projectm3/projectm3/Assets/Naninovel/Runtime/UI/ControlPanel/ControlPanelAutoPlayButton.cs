// Copyright 2022 ReWaffle LLC. All rights reserved.

using UnityEngine;

namespace Naninovel.UI
{
    public class ControlPanelAutoPlayButton : ScriptableLabeledButton
    {
        [SerializeField] private Color activeColorMultiplier = Color.red;

        private IScriptPlayer player;
        public Animator autoButtonAnim;

        protected override void Awake ()
        {
            base.Awake();

            player = Engine.GetService<IScriptPlayer>();
        }

        protected override void OnEnable ()
        {
            base.OnEnable();
            player.OnSkip -= HandleSkipModeChange;
            player.OnAutoPlay += HandleAutoModeChange;
        }

        protected override void OnDisable ()
        {
            base.OnDisable();
            player.OnAutoPlay -= HandleAutoModeChange;
        }

        protected override void OnButtonClick ()
        {
            player.SetAutoPlayEnabled(!player.AutoPlayActive);
        }

        private void HandleAutoModeChange (bool enabled)
        {
            UIComponent.LabelColorMultiplier = enabled ? activeColorMultiplier : Color.white;
        }
        private void HandleSkipModeChange (bool enabled)
        {
            UIComponent.LabelColorMultiplier = enabled ? activeColorMultiplier : Color.white;
        }
        public void OffAuto ()
        {
            if (!Engine.GetService<IInputManager>().ProcessInput) return;
            OnDisable();
        }
        public void HideUI()
        {
            if (!player.AutoPlayActive)
            {
                autoButtonAnim.SetTrigger("UIHide");
            }
        }
    } 
}
