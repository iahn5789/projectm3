// Copyright 2022 ReWaffle LLC. All rights reserved.

using UnityEngine;

namespace Naninovel
{
    [EditInProjectSettings]
    public class StateConfiguration : Configuration
    {
        [Tooltip("이 폴더는 게임 데이터 폴더에 생성됩니다.")]
        public string SaveFolderName = "Saves";
        [Tooltip("설정 저장 파일의 이름입니다.")]
        public string DefaultSettingsSlotId = "Settings";
        [Tooltip("글로벌 저장 파일의 이름입니다.")]
        public string DefaultGlobalSlotId = "GlobalSave";
        [Tooltip("저장 슬롯의 이름을 지정하는 데 사용되는 마스크입니다.")]
        public string SaveSlotMask = "GameSave{0:000}";
        [Tooltip("빠른 저장 슬롯의 이름을 지정하는 데 사용되는 마스크입니다.")]
        public string QuickSaveSlotMask = "GameQuickSave{0:000}";
        [Tooltip("최대 저장 슬롯 수."), Range(1, 999)]
        public int SaveSlotLimit = 99;
        [Tooltip("빠른 저장 슬롯의 최대 수."), Range(1, 999)]
        public int QuickSaveSlotLimit = 18;
        [Tooltip("저장된 파일을 텍스트 파일(.json)이 아닌 이진 파일(.nson)로 압축하여 저장할지 여부. 이렇게 하면 파일 크기가 크게 줄어들고 (부정행위를 방지하기 위해) 편집하기가 어려워지지만 저장 및 로드 시 더 많은 메모리 및 CPU 시간이 소모됩니다.")]
        public bool BinarySaveFiles = true;
        [Tooltip("로드 작업을 시작하기 전에 대기하는 시간(초). 로드 관련 버터가 발생하기 전에 사전 로드 애니메이션이 완료되도록 하는 데 사용됩니다.")]
        public float LoadStartDelay = 0.3f;
        [Tooltip("[@goto] 명령을 통해 다른 스크립트를 로드할 때 엔진 서비스의 상태를 재설정할지 여부입니다. [@resetState] 명령 대신 사용하여 각 goto의 모든 리소스를 자동으로 언로드할 수 있습니다.")]
        public bool ResetOnGoto;

        [Header("State Rollback")]
        [Tooltip("플레이어가 스크립트를 뒤로 되감을 수 있는 상태 롤백 기능을 활성화할지 여부입니다.")]
        public bool EnableStateRollback = true;
        [Tooltip("런타임에 유지할 상태 스냅샷 수. 롤백(되감기)을 수행할 수 있는 범위를 결정합니다. 이 값을 증가시키면 더 많은 메모리가 사용됩니다.")]
        public int StateRollbackSteps = 1024;
        [Tooltip("저장 게임 슬롯 아래에서 직렬화(저장)할 상태 스냅샷 수. 저장된 게임을 로드한 후 롤백을 수행할 수 있는 범위를 결정합니다. 이 값을 증가시키면 저장 게임 파일이 확대됩니다.")]
        public int SavedRollbackSteps = 128;

        [Header("Serialization Handlers")]
        [Tooltip("로컬(세션별) 게임 상태를 비활성화/직렬화하는 기능을 담당하는 구현. 사용자 지정 직렬화 핸들러를 추가하는 방법은 '상태 관리' 안내서를 참조하십시오.")]
        public string GameStateHandler = typeof(UniversalGameStateSerializer).AssemblyQualifiedName;
        [Tooltip("글로벌 게임 상태의 디시리얼라이징을 담당하는 구현. 사용자 지정 시리얼라이징 핸들러를 추가하는 방법은 '상태 관리' 안내서를 참조하십시오.")]
        public string GlobalStateHandler = typeof(UniversalGlobalStateSerializer).AssemblyQualifiedName;
        [Tooltip("게임 설정 해제/시리얼화를 담당하는 구현. 사용자 지정 직렬화 핸들러를 추가하는 방법은 '상태 관리' 안내서를 참조하십시오.")]
        public string SettingsStateHandler = typeof(UniversalSettingsStateSerializer).AssemblyQualifiedName;

        /// <summary>
        /// Generates save slot ID using provided index and <see cref="SaveSlotMask"/>.
        /// </summary>
        public string IndexToSaveSlotId (int index) => string.Format(SaveSlotMask, index);
        /// <summary>
        /// Generates quick save slot ID using provided index and <see cref="QuickSaveSlotMask"/>.
        /// </summary>
        public string IndexToQuickSaveSlotId (int index) => string.Format(QuickSaveSlotMask, index);
    }
}
