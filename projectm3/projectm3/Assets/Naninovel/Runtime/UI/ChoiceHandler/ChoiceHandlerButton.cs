// Copyright 2022 ReWaffle LLC. All rights reserved.

using System;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

namespace Naninovel.UI
{
    [RequireComponent(typeof(Button))]
    public class ChoiceHandlerButton : ScriptableButton
    {
        [Serializable]
        private class SummaryTextChangedEvent : UnityEvent<string> { }

        /// <summary>
        /// Invoked when the choice summary text is changed.
        /// </summary>
        public event Action<string> OnSummaryTextChanged;

        public ChoiceState ChoiceState { get; private set; }

        [Tooltip("선택 요약 텍스트가 변경되면 호출됩니다.")]
        [SerializeField] private SummaryTextChangedEvent onSummaryTextChanged;

        public virtual void Initialize (ChoiceState choiceState)
        {
            ChoiceState = choiceState;

            OnSummaryTextChanged?.Invoke(choiceState.Summary);
            onSummaryTextChanged?.Invoke(choiceState.Summary);
        }
    }
}
