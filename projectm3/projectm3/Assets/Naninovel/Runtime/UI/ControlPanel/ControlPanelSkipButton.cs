// Copyright 2022 ReWaffle LLC. All rights reserved.

using UnityEngine;
using UnityEngine.InputSystem;

namespace Naninovel.UI
{
    public class ControlPanelSkipButton : ScriptableLabeledButton
    {
        [SerializeField] private Color activeColorMultiplier = Color.red;
        public Animator autoButtonAnim2;
        private IScriptPlayer player;
        private bool SkipStatus;
        protected override void Awake ()
        {
            base.Awake();
            SkipStatus = true;
            player = Engine.GetService<IScriptPlayer>();
        }

        protected override void OnEnable ()
        {
            base.OnEnable();
            player.OnAutoPlay -= HandleAutoModeChange;
            player.OnSkip += HandleSkipModeChange;
        }

        protected override void OnDisable ()
        {
            base.OnDisable();
            player.OnSkip -= HandleSkipModeChange;
        }

        protected override void OnButtonClick ()
        {
            player.SetSkipEnabled(!player.SkipActive);

            autoButtonAnim2.ResetTrigger("FirstShow"); // MenuUI 애니메이션 재생
            autoButtonAnim2.SetTrigger("Hide");
            Debug.Log("OnButtonClick");
        }

        private void HandleSkipModeChange (bool enabled)
        {
            UIComponent.LabelColorMultiplier = enabled ? activeColorMultiplier : Color.white;
            if (autoButtonAnim2 != null)
            {
                autoButtonAnim2.ResetTrigger("FirstShow"); // MenuUI 애니메이션 재생
                autoButtonAnim2.SetTrigger("Hide");
                Debug.Log("HandleSkipModeChange");
            }
        }
        private void HandleAutoModeChange (bool enabled)
        {
            UIComponent.LabelColorMultiplier = enabled ? activeColorMultiplier : Color.white;
        }
    } 
}
