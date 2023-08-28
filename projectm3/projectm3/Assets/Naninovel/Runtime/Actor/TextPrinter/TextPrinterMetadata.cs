// Copyright 2022 ReWaffle LLC. All rights reserved.

using UnityEngine;

namespace Naninovel
{
    /// <summary>
    /// Represents data required to construct and initialize a <see cref="ITextPrinterActor"/>.
    /// </summary>
    [System.Serializable]
    public class TextPrinterMetadata : OrthoActorMetadata
    {
        [System.Serializable]
        public class Map : ActorMetadataMap<TextPrinterMetadata> { }

        [Tooltip("각 '@print' 명령에서 프린터를 자동으로 재설정할지 여부('reset' 매개 변수를 명시적으로 사용하지 않도록 설정하지 않는 경우).")]
        public bool AutoReset = true;
        [Tooltip("각 '@print' 명령에서 자동으로 프린터를 기본값으로 설정하고 다른 프린터를 숨길지 여부('기본값' 매개 변수를 명시적으로 사용하지 않도록 설정하지 않는 경우).")]
        public bool AutoDefault = true;
        [Tooltip("각 '@print' 명령에 대한 사용자 입력을 자동으로 대기할지 여부('waitInput' 매개 변수가 명시적으로 사용되지 않도록 설정되지 않은 경우).")]
        public bool AutoWait = true;
        [Tooltip("텍스트 표시가 생략된 후 사용자 입력을 대기할지 여부를 제어합니다. 비활성화하면 '자동 대기' 옵션이나 'waitInput' 매개 변수에 관계없이 대기하지 않습니다.")]
        public bool WaitAfterRevealSkip = true;
        [Tooltip("('br' 매개 변수를 명시적으로 지정하지 않는 한) 프린터에 이미 일부 텍스트가 포함되어 있을 때 각 '@print' 명령의 인쇄된 텍스트 앞에 자동으로 삽입할 줄 바꿈 수.")]
        public int AutoLineBreak;
        [Tooltip("인쇄된 메시지를 프린터 잔량에 추가할지 여부입니다.")]
        public bool AddToBacklog = true;
        [Tooltip("프린터가 재설정되지 않은 경우에도 추가된 백로그 메시지를 항상 분할할지 여부입니다.")]
        public bool SplitBacklogMessages;
        [Tooltip("각 '@print' 명령에서 재생 중인 음성을 중지할지 여부입니다.")]
        public bool StopVoice;
        [Tooltip("기본 가시성 변경 애니메이션 기간. 스크립트 명령에서 해당 매개 변수가 지정되지 않은 경우 사용됩니다.")]
        public float ChangeVisibilityDuration = .3f;
        [Tooltip("텍스트 인쇄를 시작하기 전에 프린터가 완전히 보일 때까지 기다려야 하는지 여부입니다.")]
        public bool WaitVisibilityBeforePrint;
        [Tooltip("@print 명령을 완료하기 전에 대기할 프레임 수입니다. 생략 모드에서 인쇄된 텍스트를 표시하려면 0보다 큰 값이 필요합니다.")]
        public int PrintFrameDelay = 1;
        [Tooltip("연관된 작성자가 있는 인쇄 메시지에 적용할 템플릿입니다. %TEXT%는 메시지 텍스트로 대체되고 %AUTHER%는 작성자 이름(문자 표시 이름)으로 대체됩니다.")]
        public string AuthoredTemplate;

        public TextPrinterMetadata ()
        {
            Implementation = typeof(UITextPrinter).AssemblyQualifiedName;
            Loader = new ResourceLoaderConfiguration { PathPrefix = TextPrintersConfiguration.DefaultPathPrefix };
            Pivot = new Vector2(.5f, .5f);
        }

        public override ActorPose<TState> GetPose<TState> (string poseName) => null;
    }
}
