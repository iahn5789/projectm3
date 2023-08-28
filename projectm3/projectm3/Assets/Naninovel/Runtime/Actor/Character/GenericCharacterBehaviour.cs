// Copyright 2022 ReWaffle LLC. All rights reserved.

using System;
using UnityEngine;
using UnityEngine.Events;

namespace Naninovel
{
    /// <summary>
    /// Hosts events routed by <see cref="GenericActor{TBehaviour,TMeta}"/>.
    /// </summary>
    public class GenericCharacterBehaviour : GenericActorBehaviour
    {
        [Serializable]
        private class LookDirectionChangedEvent : UnityEvent<CharacterLookDirection> { }

        /// <summary>
        /// Invoked when look direction of the character is changed.
        /// </summary>
        public event Action<CharacterLookDirection> OnLookDirectionChanged;
        /// <summary>
        /// Invoked when the character becomes or cease to be the author of the last printed text message.
        /// </summary>
        public event Action<bool> OnIsSpeakingChanged;

        public bool TransformByLookDirection => transformByLookDirection;
        public float LookDeltaAngle => lookDeltaAngle;

        [Tooltip("문자의 모양 방향이 변경되면 호출됩니다.")]
        [SerializeField] private LookDirectionChangedEvent onLookDirectionChanged;
        [Tooltip("문자가 인쇄된 텍스트 메시지의 작성자가 될 때 호출됩니다.")]
        [SerializeField] private UnityEvent onStartedSpeaking;
        [Tooltip("메시지가 완전히 표시되거나 (자동 음성이 활성화된 경우) 음성 클립 재생이 완료되면 'On Started Speaking'(시작된 발화 시) 후에 호출됩니다.")]
        [SerializeField] private UnityEvent onFinishedSpeaking;
        [Tooltip("방향을 보기 위해 반응할지 여부는 객체의 변환을 회전함으로써 변경됩니다.")]
        [SerializeField] private bool transformByLookDirection = true;
        [Tooltip("`" + nameof(transformByLookDirection) + "` 활성화될 때 회전 각도를 제어합니다.")]
        [SerializeField] private float lookDeltaAngle = 30;

        public void NotifyLookDirectionChanged (CharacterLookDirection value)
        {
            OnLookDirectionChanged?.Invoke(value);
            onLookDirectionChanged?.Invoke(value);
        }

        public void NotifyIsSpeakingChanged (bool value)
        {
            OnIsSpeakingChanged?.Invoke(value);

            if (value) onStartedSpeaking?.Invoke();
            else onFinishedSpeaking?.Invoke();
        }
    }
}
