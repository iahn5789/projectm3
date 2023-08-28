// Copyright 2022 ReWaffle LLC. All rights reserved.

using UnityEngine;

namespace Naninovel
{
    [EditInProjectSettings]
    public class TextPrintersConfiguration : OrthoActorManagerConfiguration<TextPrinterMetadata>
    {
        public const string DefaultPathPrefix = "TextPrinters";

        [Tooltip("기본적으로 사용할 텍스트 프린터의 ID입니다.")]
        public string DefaultPrinterId = "Dialogue";
        [Range(0f, 1f), Tooltip("게임을 처음 시작할 때 설정할 기본 공개 속도(게임 설정).")]
        public float DefaultBaseRevealSpeed = .5f;
        [Range(0f, 1f), Tooltip("게임을 처음 시작할 때 설정할 기본 자동 지연(게임 설정).")]
        public float DefaultBaseAutoDelay = .5f;
        [Tooltip("문자 메시지를 공개(출력)할 때 지연 제한(초). 게임 설정에서 '메시지 속도'를 통해 특정 공개 속도가 설정됩니다. 이 값은 사용 가능한 범위(값이 높을수록 공개 속도가 낮음)를 정의합니다."), Range(.01f, 1f)]
        public float MaxRevealDelay = .06f;
        [Tooltip("자동 플레이 모드에서 계속 대기하는 동안 각 인쇄 문자당 지연 제한(초). 게임 설정에서 '자동 지연'을 통해 특정 지연이 설정되며 이 값은 사용 가능한 범위를 정의합니다."), Range(.0f, .5f)]
        public float MaxAutoWaitDelay = .02f;
        [Tooltip("자동 재생 모드에서 인쇄 명령에 설정된 노출 속도로 대기 시간을 조정할지 여부입니다.")]
        public bool ScaleAutoWait = true;
        [Tooltip("텍스트 프린터 사용자를 만들 때 기본적으로 사용할 메타데이터와 생성된 사용자 정의 메타데이터가 없습니다.")]
        public TextPrinterMetadata DefaultMetadata = new TextPrinterMetadata();
        [Tooltip("특정 ID를 가진 텍스트 프린터 사용자를 만들 때 사용할 메타데이터입니다.")]
        public TextPrinterMetadata.Map Metadata = new TextPrinterMetadata.Map {
            ["Dialogue"] = CreateBuiltinMeta(),
            ["Fullscreen"] = CreateBuiltinMeta(false, 2, authoredTemplate: "%AUTHOR%: “%TEXT%” "),
            ["Wide"] = CreateBuiltinMeta(),
            ["Chat"] = CreateBuiltinMeta(false, 0, true),
            ["Bubble"] = CreateBuiltinMeta(),
            ["TMProDialogue"] = CreateBuiltinMeta(),
            ["TMProFullscreen"] = CreateBuiltinMeta(false, 2, authoredTemplate: "%AUTHOR%: “%TEXT%” "),
            ["TMProWide"] = CreateBuiltinMeta(),
            ["TMProChat"] = CreateBuiltinMeta(false, 0, true),
            ["TMProBubble"] = CreateBuiltinMeta()
        };

        public override TextPrinterMetadata DefaultActorMetadata => DefaultMetadata;
        public override ActorMetadataMap<TextPrinterMetadata> ActorMetadataMap => Metadata;

        public TextPrintersConfiguration ()
        {
            AutoShowOnModify = false;
            ZOffset = 0;
            ZStep = 0;
        }

        protected override ActorPose<TState> GetSharedPose<TState> (string poseName) => null;

        private static TextPrinterMetadata CreateBuiltinMeta (bool autoReset = true, int autoBr = 0,
            bool splitBacklog = false, string authoredTemplate = null) => new TextPrinterMetadata {
            Implementation = typeof(UITextPrinter).AssemblyQualifiedName,
            AutoReset = autoReset,
            AutoLineBreak = autoBr,
            SplitBacklogMessages = splitBacklog,
            AuthoredTemplate = authoredTemplate
        };
    }
}
