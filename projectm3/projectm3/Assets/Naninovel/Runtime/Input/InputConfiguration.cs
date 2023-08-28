// Copyright 2022 ReWaffle LLC. All rights reserved.

using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

namespace Naninovel
{
    [EditInProjectSettings]
    public class InputConfiguration : Configuration
    {
        public const string SubmitName = "Submit";
        public const string CancelName = "Cancel";
        public const string DeleteName = "Delete";
        public const string ContinueName = "Continue";
        public const string PauseName = "Pause";
        public const string SkipName = "Skip";
        public const string ToggleSkipName = "ToggleSkip";
        public const string AutoPlayName = "AutoPlay";
        public const string ToggleUIName = "ToggleUI";
        public const string ShowBacklogName = "ShowBacklog";
        public const string RollbackName = "Rollback";
        public const string CameraLookXName = "CameraLookX";
        public const string CameraLookYName = "CameraLookY";

        [Tooltip("초기화 시 이벤트 시스템 생성 여부.")]
        public bool SpawnEventSystem = true;
        [Tooltip("이벤트 시스템 구성 요소를 사용하여 입력 프로세스를 생성하기 위해 이벤트 시스템 구성 요소입니다.지정되지 않은 경우 기본 하나를 생성합니다.")]
        public EventSystem CustomEventSystem;
        [Tooltip("초기화할 때 입력 모듈을 생성할지 여부입니다.")]
        public bool SpawnInputModule = true;
        [Tooltip("입력 처리를 위해 생성할 'InputModule' 구성 요소가 있는 프리패브. 지정되지 않으면 기본값을 생성합니다.")]
        public BaseInputModule CustomInputModule;
        [Tooltip("등록된 터치 입력의 빈도를 초 단위로 제한합니다.")]
        public float TouchFrequencyLimit = .1f;
        [Tooltip("등록된 터치 입력의 거리를 픽셀 단위로 제한합니다.")]
        public float TouchDistanceLimit = 25f;
        #if ENABLE_INPUT_SYSTEM && INPUT_SYSTEM_AVAILABLE
        [Tooltip("유니티의 새 입력 시스템이 설치되면 여기에 입력 작업 자산을 할당합니다.\nNaninovel의 입력 바인딩에 입력 작업을 매핑하려면 'Naninovel' 작업 맵을 만들고 바인딩 이름과 동일한 이름의 작업을 추가합니다('제어 체계' -> 바인딩 목록 아래에 있음).\n\n2차원(Vector2) 축은 지원되지 않습니다.")]
        public UnityEngine.InputSystem.InputActionAsset InputActions = default;
        #endif
        [Tooltip("레거시 입력 바인딩을 처리할지 여부. 유니티의 새 입력 시스템을 사용하고 있고 입력 작업 외에 레거시 바인딩이 작동하지 않도록 하려면 사용하지 않도록 설정합니다.")]
        public bool ProcessLegacyBindings = true;

        [Header("Control Scheme"), Tooltip("Bindings to process input for.")]
        public List<InputBinding> Bindings = new List<InputBinding> {
            new InputBinding {
                Name = SubmitName,
                Keys = new List<KeyCode> { KeyCode.Return, KeyCode.JoystickButton0 }
            },
            new InputBinding {
                Name = CancelName,
                Keys = new List<KeyCode> { KeyCode.Escape, KeyCode.JoystickButton1 }, AlwaysProcess = true
            },
            new InputBinding {
                Name = DeleteName,
                Keys = new List<KeyCode> { KeyCode.Delete, KeyCode.JoystickButton7 }, AlwaysProcess = true
            },
            new InputBinding {
                Name = ContinueName,
                Keys = new List<KeyCode> { KeyCode.Return, KeyCode.KeypadEnter, KeyCode.JoystickButton0 },
                Axes = new List<InputAxisTrigger> { new InputAxisTrigger { AxisName = "Mouse ScrollWheel", TriggerMode = InputAxisTriggerMode.Negative } },
                Swipes = new List<InputSwipeTrigger> { new InputSwipeTrigger { Direction = InputSwipeDirection.Left } }
            },
            new InputBinding {
                Name = PauseName,
                Keys = new List<KeyCode> { KeyCode.Backspace, KeyCode.JoystickButton7 }
            },
            new InputBinding {
                Name = SkipName,
                Keys = new List<KeyCode> { KeyCode.LeftControl, KeyCode.RightControl, KeyCode.JoystickButton1 }
            },
            new InputBinding {
                Name = ToggleSkipName,
                Keys = new List<KeyCode> { KeyCode.Tab, KeyCode.JoystickButton9 }
            },
            new InputBinding {
                Name = AutoPlayName,
                Keys = new List<KeyCode> { KeyCode.A, KeyCode.JoystickButton2 }
            },
            new InputBinding {
                Name = ToggleUIName,
                Keys = new List<KeyCode> { KeyCode.Space, KeyCode.JoystickButton3 },
                Swipes = new List<InputSwipeTrigger> { new InputSwipeTrigger { Direction = InputSwipeDirection.Down } }
            },
            new InputBinding {
                Name = ShowBacklogName,
                Keys = new List<KeyCode> { KeyCode.L, KeyCode.JoystickButton5 },
                Swipes = new List<InputSwipeTrigger> { new InputSwipeTrigger { Direction = InputSwipeDirection.Up } }
            },
            new InputBinding {
                Name = RollbackName,
                Keys = new List<KeyCode> { KeyCode.JoystickButton4 },
                Axes = new List<InputAxisTrigger> { new InputAxisTrigger { AxisName = "Mouse ScrollWheel", TriggerMode = InputAxisTriggerMode.Positive } },
                Swipes = new List<InputSwipeTrigger> { new InputSwipeTrigger { Direction = InputSwipeDirection.Right } },
            },
            new InputBinding {
                Name = CameraLookXName,
                Axes = new List<InputAxisTrigger> {
                    new InputAxisTrigger { AxisName = "Horizontal", TriggerMode = InputAxisTriggerMode.Both },
                    new InputAxisTrigger { AxisName = "Mouse X", TriggerMode = InputAxisTriggerMode.Both }
                }
            },
            new InputBinding {
                Name = CameraLookYName,
                Axes = new List<InputAxisTrigger> {
                    new InputAxisTrigger { AxisName = "Vertical", TriggerMode = InputAxisTriggerMode.Both },
                    new InputAxisTrigger { AxisName = "Mouse Y", TriggerMode = InputAxisTriggerMode.Both }
                }
            }
        };
    }
}
