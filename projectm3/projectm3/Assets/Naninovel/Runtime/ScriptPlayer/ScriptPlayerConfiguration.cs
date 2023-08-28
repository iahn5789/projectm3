// Copyright 2022 ReWaffle LLC. All rights reserved.

using Naninovel.Commands;
using UnityEngine;

namespace Naninovel
{
    [EditInProjectSettings]
    public class ScriptPlayerConfiguration : Configuration
    {
        [Tooltip("게임을 처음 시작할 때 설정할 기본 스킵 모드입니다.")]
        public PlayerSkipMode DefaultSkipMode = PlayerSkipMode.ReadOnly;
        [Tooltip("건너뛰기(빠른 회송) 모드일 때 사용할 시간 척도."), Range(1f, 100f)]
        public float SkipTimeScale = 10f;
        [Tooltip("자동 재생 모드에서 다음 명령을 실행하기 전에 대기하는 최소 시간(초)입니다.")]
        public float MinAutoPlayDelay = 3f;
        [Tooltip("'continue' 입력이 활성화되면 시간 경과에 따라 수행된 차단('wait:true') 명령을 즉시 완료할지 여부입니다(예: 애니메이션, 숨김/공개, 틴트 변경 등).")]
        public bool CompleteOnContinue = true;
        [Tooltip("엔진 초기화 시 플레이어 디버그 창을 표시할지 여부입니다.")]
        public bool ShowDebugOnInit;
        [Tooltip("'wait' 매개 변수가 명시적으로 지정되지 않은 경우 재생된 명령을 대기할지 여부입니다.")]
        public bool WaitByDefault = true;

        public virtual bool ShouldWait (Command command)
        {
            if (command.ForceWait) return true;
            if (Command.Assigned(command.Wait)) return command.Wait;
            return WaitByDefault || command is Wait;
        }
    }
}
