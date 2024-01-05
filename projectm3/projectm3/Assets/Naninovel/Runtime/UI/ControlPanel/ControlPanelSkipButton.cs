// Copyright 2022 ReWaffle LLC. All rights reserved.

using UnityEngine;
using UnityEngine.InputSystem;

namespace Naninovel.UI
{
    public class ControlPanelSkipButton : ScriptableLabeledButton
    {
        [SerializeField] private Color activeColorMultiplier = Color.red;

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
        }

        private void HandleSkipModeChange (bool enabled)
        {
            UIComponent.LabelColorMultiplier = enabled ? activeColorMultiplier : Color.white;
        }
        private void HandleAutoModeChange (bool enabled)
        {
            UIComponent.LabelColorMultiplier = enabled ? activeColorMultiplier : Color.white;
        }
        public void OnSkip (InputAction.CallbackContext context)
        {
            if (context.started && SkipStatus)
            {
                //button is press
                SkipStatus = !SkipStatus;
                if (!Engine.GetService<IInputManager>().ProcessInput) return;
                Debug.Log("OnSkip press : "+ gameObject.name + " : " + SkipStatus);
                player.SetSkipEnabled(!player.SkipActive);
            }
            else if (context.canceled && !SkipStatus)
            {
                //button is released
                SkipStatus = !SkipStatus;
                Debug.Log("OnSkip released : "+ gameObject.name + " : " + SkipStatus);
            }
        }
    } 
}
