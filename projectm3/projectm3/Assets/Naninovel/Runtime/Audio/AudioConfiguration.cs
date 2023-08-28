// Copyright 2022 ReWaffle LLC. All rights reserved.

using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

namespace Naninovel
{
    [EditInProjectSettings]
    public class AudioConfiguration : Configuration
    {
        public const string DefaultAudioPathPrefix = "Audio";
        public const string DefaultVoicePathPrefix = "Voice";
        public const string AutoVoiceClipNameTemplate = "{0}/{1}.{2}";

        [Tooltip("오디오(BGM 및 SFX) 리소스에 사용되는 리소스 로더의 구성입니다.")]
        public ResourceLoaderConfiguration AudioLoader = new ResourceLoaderConfiguration { PathPrefix = DefaultAudioPathPrefix };
        [Tooltip("음성 리소스에 사용되는 리소스 로더의 구성입니다.")]
        public ResourceLoaderConfiguration VoiceLoader = new ResourceLoaderConfiguration { PathPrefix = DefaultVoicePathPrefix };
        [Tooltip(nameof(IAudioPlayer) + " 오디오 클립 재생을 담당하는 구현.")]
        public string AudioPlayer = typeof(AudioPlayer).AssemblyQualifiedName;
        [Range(0f, 1f), Tooltip("게임을 처음 시작할 때 설정할 마스터 볼륨입니다.")]
        public float DefaultMasterVolume = 1f;
        [Range(0f, 1f), Tooltip("게임을 처음 시작할 때 설정할 BGM 볼륨.")]
        public float DefaultBgmVolume = 1f;
        [Range(0f, 1f), Tooltip("게임을 처음 시작할 때 설정할 SFX 볼륨입니다.")]
        public float DefaultSfxVolume = 1f;
        [Range(0f, 1f), Tooltip("게임을 처음 시작할 때 설정할 음성 볼륨입니다.")]
        public float DefaultVoiceVolume = 1f;
        [Tooltip("활성화된 경우 각 '@print' 명령은 관련 음성 클립 재생을 시도합니다.")]
        public bool EnableAutoVoicing;
        [Tooltip("자동 음성 기능이 활성화된 경우 에서는 음성 클립을 @print 명령과 연결하는 방법을 제어합니다:" +
            "\n • 재생 스팟 — 음성 클립은 @print 명령의 스크립트 이름, 라인 및 인라인 인덱스(재생 스팟)에 의해 연결됩니다. 시나리오 스크립트가 완료된 후 음성이 추가될 때 가장 잘 작동합니다. 시나리오 스크립트 라인을 제거, 추가 또는 다시 정렬하면 연결이 끊어집니다." +
            "\n • 내용 해시 - 음성 클립은 음성 지도 유틸리티를 통해 인쇄된 텍스트와 작성자 이름으로 수동으로 연결됩니다. 시나리오 스크립트가 완료되기 전에 음성을 추가할 때 가장 효과적입니다. 시나리오 스크립트 줄을 제거하거나 추가하거나 다시 순서를 정해도 연결이 끊어지지 않습니다. 스크립트에서 인쇄된 텍스트를 수정해도 수정된 명령과의 연결만 끊어집니다.\n\n자세한 내용 및 예제는 음성 설명서를 참조하십시오.")]
        public AutoVoiceMode AutoVoiceMode = AutoVoiceMode.PlaybackSpot;
        [Tooltip("동시 음성 재생을 처리하는 방법을 지정합니다:" +
            "\n • 중복 허용 - 동시 음성은 제한 없이 재생됩니다." +
            "\n • 중복 방지 - 새 음성 클립을 재생하기 전에 재생되는 음성 클립을 중지하여 동시 음성 재생을 방지합니다." +
            "\n • 문자 중복 방지 - 문자당 동시 음성 재생을 방지합니다. 다른 문자의 음성(자동 음성)과 임의의 수의 [@voice] 명령을 동시에 재생할 수 있습니다.")]
        public VoiceOverlapPolicy VoiceOverlapPolicy = VoiceOverlapPolicy.PreventOverlap;
        [Tooltip("게임 설정에서 음성 언어를 선택할 수 있도록 현지화 태그를 지정합니다. '콘텐츠 해시' 자동 음성 모드에서는 사용할 수 없습니다.")]
        public List<string> VoiceLocales;
        [Tooltip("오디오 재생을 시작하거나 중지할 때 볼륨의 기본 페이드 인/아웃 기간입니다.")]
        public float DefaultFadeDuration = .35f;

        [Header("Audio Mixer")]
        [Tooltip("오디오 그룹을 제어하기 위한 오디오 믹서. 제공되지 않는 경우 기본값을 사용합니다.")]
        public AudioMixer CustomAudioMixer;
        [Tooltip("마스터 볼륨을 제어할 믹서의 핸들 이름(노출 매개 변수)입니다.")]
        public string MasterVolumeHandleName = "Master Volume";
        [Tooltip("마스터 볼륨을 제어할 믹서 그룹의 경로입니다.")]
        public string BgmGroupPath = "Master/BGM";
        [Tooltip("배경 음악 볼륨을 제어하기 위한 믹서의 핸들 이름(노출 매개 변수)입니다.")]
        public string BgmVolumeHandleName = "BGM Volume";
        [Tooltip("배경 음악 볼륨을 제어하는 믹서 그룹의 경로입니다.")]
        public string SfxGroupPath = "Master/SFX";
        [Tooltip("효과음 볼륨을 제어하기 위한 믹서 핸들(노출 매개 변수)의 이름입니다.")]
        public string SfxVolumeHandleName = "SFX Volume";
        [Tooltip("효과음 볼륨을 제어하는 믹서 그룹의 경로입니다.")]
        public string VoiceGroupPath = "Master/Voice";
        [Tooltip("음성 볼륨을 제어하기 위한 믹서의 핸들 이름(노출 매개 변수)입니다.")]
        public string VoiceVolumeHandleName = "Voice Volume";

        /// <summary>
        /// Generates auto voice clip (local) resource path based on the provided playback spot.
        /// </summary>
        public static string GetAutoVoiceClipPath (PlaybackSpot playbackSpot)
        {
            return string.Format(AutoVoiceClipNameTemplate, playbackSpot.ScriptName, playbackSpot.LineNumber, playbackSpot.InlineIndex);
        }

        /// <summary>
        /// Generates auto voice clip (local) resource path based on the provided print command content (voice ID, author ID and printed text).
        /// </summary>
        public static string GetAutoVoiceClipPath (Commands.PrintText printCommand)
        {
            if (printCommand is null || !Command.Assigned(printCommand.Text)) return string.Empty;
            var text = printCommand.Text.DynamicValue ? printCommand.Text.DynamicValueText : printCommand.Text.Value;
            var content = $"{printCommand.AutoVoiceId}{printCommand.AuthorId}{text}";
            return CryptoUtils.PersistentHexCode(content);
        }
    }
}
