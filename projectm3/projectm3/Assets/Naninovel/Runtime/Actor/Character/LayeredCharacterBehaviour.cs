// Copyright 2022 ReWaffle LLC. All rights reserved.

using System;
using UnityEngine;
using UnityEngine.Events;

namespace Naninovel
{
    /// <summary>
    /// Represent a prefab resource used by <see cref="LayeredCharacter"/> actors.
    /// </summary>
    public class LayeredCharacterBehaviour : LayeredActorBehaviour
    {
        /// <summary>
        /// Invoked when the character becomes or cease to be the author of the last printed text message.
        /// </summary>
        public event Action<bool> OnIsSpeakingChanged;

        [Tooltip("문자가 인쇄된 텍스트 메시지의 작성자가 될 때 호출됩니다.")]
        [SerializeField] private UnityEvent onStartedSpeaking;
        [Tooltip("메시지가 완전히 표시되거나 (자동 음성이 활성화된 경우) 음성 클립 재생이 완료되면 'On Started Speaking'(시작된 발화 시) 후에 호출됩니다.")]
        [SerializeField] private UnityEvent onFinishedSpeaking;

        public void NotifyIsSpeakingChanged (bool value)
        {
            OnIsSpeakingChanged?.Invoke(value);

            if (value) onStartedSpeaking?.Invoke();
            else onFinishedSpeaking?.Invoke();
        }
    }
}
