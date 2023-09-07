// Copyright 2022 ReWaffle LLC. All rights reserved.
using UnityEngine;
using UnityEngine.UI;

namespace Naninovel.UI
{
    public class BacklogCloseButton : ScriptableLabeledButton
    {
        private BacklogPanel backlogPanel;

        protected override void Awake ()
        {
            base.Awake();

            backlogPanel = GetComponentInParent<BacklogPanel>();
        }

        protected override void OnButtonClick ()
        {
            backlogPanel.Hide();
        }
    }
}
