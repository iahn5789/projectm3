// Copyright 2022 ReWaffle LLC. All rights reserved.

using System.Collections.Generic;
using System.Linq;
using UnityEngine;

namespace Naninovel
{
    /// <summary>
    /// Represents data required to construct and initialize a <see cref="ICharacterActor"/>.
    /// </summary>
    [System.Serializable]
    public class CharacterMetadata : OrthoActorMetadata
    {
        [System.Serializable]
        public class Map : ActorMetadataMap<CharacterMetadata> { }
        [System.Serializable]
        public class Pose : ActorPose<CharacterState> { }

        [Tooltip("문자 질감에서 방향을 세로(구운)로 봅니다. 글자를 적절하게 뒤집어서 장면의 올바른 면을 '얼굴'로 만들어야 합니다.")]
        public CharacterLookDirection BakedLookDirection = CharacterLookDirection.Left;
        [Tooltip("프린터 이름 레이블 UI에 표시할 문자의 전체 이름. 지정되지 않은 경우 문자 ID를 사용합니다.\n표시 이름을 현지화하거나 사용자 지정 변수에 바인딩할 수 있습니다. 자세한 내용은 '문자' -> '표시 이름'의 안내서를 참조하십시오.")]
        public string DisplayName;
        [Tooltip("프린터 메시지 및 이름 레이블 UI에 문자별 색상을 적용할지 여부입니다.")]
        public bool UseCharacterColor;
        [Tooltip("프린터 이름 레이블 UI에 색을 칠할 문자별 색상입니다.")]
        public Color NameColor = Color.white;
        [Tooltip("프린터 메시지에 색을 칠할 문자별 색상입니다.")]
        public Color MessageColor = Color.white;
        [Tooltip("이 옵션을 선택하면 이 배우가 마지막으로 인쇄된 텍스트의 작성자인지 여부에 따라 지정된 포즈를 적용합니다.")]
        public bool HighlightWhenSpeaking;
        [Tooltip("강조 표시는 지정된 수의 문자가 장면에 표시될 때만 발생합니다. 표시되는 문자의 수에 상관없이 강조 표시하려면 0을 유지하십시오.")]
        public int HighlightCharacterCount;
        [Tooltip("캐릭터가 말할 때 적용할 포즈의 이름입니다. 포즈를 적용하지 않으려면 비워 둡니다.")]
        public string SpeakingPose;
        [Tooltip("캐릭터가 말을 하지 않을 때 적용할 포즈의 이름입니다. 포즈를 적용하지 않으려면 비워 둡니다.")]
        public string NotSpeakingPose;
        [Tooltip("강조 표시된 문자를 가장 위의 위치로 이동할지 여부입니다(z축 위의 카메라에 더 가깝습니다).")]
        public bool PlaceOnTop = true;
        [Tooltip("하이라이트 포즈 애니메이션 지속 시간입니다.")]
        public float HighlightDuration = .35f;
        [Tooltip("하이라이트 포즈 애니메이션이 완화됩니다.")]
        public EasingType HighlightEasing = EasingType.SmoothStep;
        [Tooltip("메시지를 인쇄(공개)할 때 재생할 사운드(SFX) 경로이며 캐릭터는 작성자입니다. 각 문자 표시에서 사운드가 재생되므로 매우 짧고 날카로우는지 확인하십시오(오디오 클립 시작 부분에 일시 중지/침묵이 없음).")]
        [ResourcePopup(AudioConfiguration.DefaultAudioPathPrefix)]
        public string MessageSound;
        [Tooltip("'메시지 사운드'가 할당되면 재생 유형 제어:" +
                    "\n • 루프드 — 루프드 사운드 재생, 메시지가 완전히 드러나면 중지" +
                    "\n • One Shot — 메시지의 공개된 각 문자에 대해 처음부터 소리를 재생합니다." +
                    "\n • 원샷 클리핑 — '원샷'과 동일하지만, 다음 캐릭터가 공개되는 동안 소리가 계속 재생될 경우를 대비하여 사운드를 다시 시작합니다.")]
        public MessageSoundPlayback MessageSoundPlayback;
        [Tooltip("할당되면 캐릭터 개체 아래에 게임 개체를 인스턴스화하고 첨부된 오디오 소스 구성 요소를 사용하여 캐릭터와 관련된 음성 클립을 재생합니다.")]
        public AudioSource VoiceSource;
        [Tooltip("문자가 인쇄된 메시지의 작성자인 경우 선택한 텍스트 프린터가 자동으로 인쇄를 처리하는 데 사용됩니다. 사용자 지정 프린터만 허용됩니다.")]
        [ActorPopup(TextPrintersConfiguration.DefaultPathPrefix)]
        public string LinkedPrinter;
        [Tooltip("문자의 명명된 상태(포즈). 포즈 이름은 '@char' 명령에서 모양으로 사용하여 관련 상태의 활성화된 속성을 설정할 수 있습니다.")]
        public List<Pose> Poses = new List<Pose>();

        public CharacterMetadata ()
        {
            Implementation = typeof(SpriteCharacter).AssemblyQualifiedName;
            Loader = new ResourceLoaderConfiguration { PathPrefix = CharactersConfiguration.DefaultPathPrefix };
            Pivot = new Vector2(.5f, .0f);
        }

        public override ActorPose<TState> GetPose<TState> (string poseName) => Poses.FirstOrDefault(p => p.Name == poseName) as ActorPose<TState>;
    }
}
