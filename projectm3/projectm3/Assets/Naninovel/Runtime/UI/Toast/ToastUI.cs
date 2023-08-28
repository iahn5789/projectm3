// Copyright 2022 ReWaffle LLC. All rights reserved.

using System;
using System.Collections.Generic;
using UnityEngine;

namespace Naninovel.UI
{
    /// <inheritdoc cref="IToastUI"/>
    public class ToastUI : CustomUI, IToastUI
    {
        [Tooltip("'aperance' 매개 변수가 제공되지 않을 때 기본적으로 사용되는 모양입니다.")]
        [SerializeField] private ToastAppearance defaultAppearance;
        [Tooltip("토스트를 숨기기 전에 대기하는 시간(초). 기본적으로 '기간' 매개 변수가 제공되지 않을 때 사용됩니다.")]
        [SerializeField] private float defaultDuration = 5f;

        private readonly Dictionary<string, ToastAppearance> appearances = new Dictionary<string, ToastAppearance>(StringComparer.OrdinalIgnoreCase);
        private Timer hideTimer;

        protected override void Awake ()
        {
            base.Awake();

            this.AssertRequiredObjects(defaultAppearance);

            hideTimer = new Timer(ignoreTimeScale: true, onCompleted: Hide);

            foreach (var appearance in GetComponentsInChildren<ToastAppearance>(true))
                appearances[appearance.name] = appearance;
        }

        public void Show (string text, string appearance = default, float? duration = default)
        {
            if (!TrySelectAppearance(appearance, out var selectedAppearance)) return;
            if (hideTimer.Running) hideTimer.Stop();
            selectedAppearance.SetText(text);
            hideTimer.Run(duration ?? defaultDuration, target: this);
            base.Show();
        }

        private bool TrySelectAppearance (string appearanceName, out ToastAppearance selectedAppearance)
        {
            var appearanceId = appearanceName ?? defaultAppearance.name;
            if (!appearances.TryGetValue(appearanceId, out selectedAppearance))
            {
                Engine.Err($"Failed to show toast with `{appearanceId}` appearance: the appearance game object is not found under the toast prefab.");
                selectedAppearance = null;
                return false;
            }

            foreach (var toastAppearance in appearances.Values)
                if (toastAppearance != selectedAppearance)
                    toastAppearance.SetSelected(false);
            selectedAppearance.SetSelected(true);

            return true;
        }
    }
}
