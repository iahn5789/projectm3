// Copyright 2022 ReWaffle LLC. All rights reserved.

using UnityEngine;

namespace Naninovel.UI
{
    public class GameSettingsVoiceVolumeSlider : ScriptableSlider
    {
        [Tooltip("제공된 경우 슬라이더는 제공된 ID로 인쇄된 메시지 작성자(캐릭터 배우)의 음성 볼륨을 제어합니다. 비어 있으면 음성 믹서 그룹 볼륨을 제어합니다.")]
        [SerializeField] private string authorId;

        private IAudioManager audioManager;

        protected override void Awake ()
        {
            base.Awake();

            audioManager = Engine.GetService<IAudioManager>();
        }

        protected override void Start ()
        {
            base.Start();

            var authorVolume = audioManager.GetAuthorVolume(authorId);
            UIComponent.value = Mathf.Approximately(authorVolume, -1) ? audioManager.VoiceVolume : authorVolume;
        }

        protected override void OnValueChanged (float value)
        {
            if (string.IsNullOrEmpty(authorId))
                audioManager.VoiceVolume = value;
            else audioManager.SetAuthorVolume(authorId, value);
        }
    }
}
