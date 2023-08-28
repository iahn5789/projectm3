// Copyright 2022 ReWaffle LLC. All rights reserved.

using UnityEngine;

namespace Naninovel
{
    [EditInProjectSettings]
    public class EngineConfiguration : Configuration
    {
        public const string DefaultGeneratedDataPath = "NaninovelData";
        public static readonly string[] DefaultTypeAssemblies = { "Assembly-CSharp", "Assembly-CSharp-Editor", "Elringus.Naninovel.Runtime", "Elringus.Naninovel.Editor" };

        [Tooltip("자동으로 생성된 자산을 저장하기 위한 상대적(애플리케이션 데이터 디렉토리에 대한) 경로입니다.")]
        public string GeneratedDataPath = DefaultGeneratedDataPath;
        [Tooltip("모든 엔진 개체에 특정 계층을 할당할지 여부입니다. 엔진의 카메라는 도태 마스크에 레이어를 사용합니다. 이를 통해 Naninovel 객체가 다른 카메라에 의해 렌더링되지 않도록 격리할 수 있습니다.")]
        public bool OverrideObjectsLayer;
        [Tooltip("'Override Objects Layer'를 활성화하면 지정된 레이어가 모든 엔진 객체에 할당됩니다.")]
        public int ObjectsLayer;
        [Tooltip("UniTask 관련 예외에 사용할 로그 유형입니다.")]
        public LogType AsyncExceptionLogType = LogType.Error;
        [Tooltip("다양한 유형(예: 액터 구현, 직렬화 핸들러, 관리되는 텍스트 등)을 찾을 때 엔진은 더 나은 성능을 위해 지정된 어셈블리의 내보내기 유형만 검색합니다. Naninovel 관련 유형을 유니티의 미리 정의된 어셈블리 정의 밖에 유지하는 경우 여기에 어셈블리 이름을 추가하십시오.\n\n경고: 변경 내용을 적용하려면 목록을 수정한 후 솔루션을 다시 컴파일하거나 유니티 편집기를 다시 시작하십시오.")]
        public string[] TypeAssemblies = DefaultTypeAssemblies;

        [Header("Initialization")]
        [Tooltip("응용 프로그램이 시작될 때 엔진을 자동으로 초기화할지 여부입니다.")]
        public bool InitializeOnApplicationLoad = true;
        [Tooltip("엔진 객체에 'DontDestroyOnLoad'를 적용하여 로드된 장면과 독립적으로 수명을 설정할지 여부입니다. 비활성화하면 객체는 엔진이 초기화된 Unity 장면의 일부가 되고 장면이 언로드되면 파괴됩니다.")]
        public bool SceneIndependent = true;
        [Tooltip("엔진이 초기화되는 동안 로딩 UI를 표시할지 여부입니다.")]
        public bool ShowInitializationUI = true;
        [Tooltip("엔진이 초기화되는 동안 표시할 UI(활성화된 경우). 제공되지 않을 때 기본 UI를 사용합니다.")]
        public ScriptableUIBehaviour CustomInitializationUI;
        [Tooltip("엔진 초기화 후 제목 화면 UI(주 메뉴)를 자동으로 표시합니다.UI 사용자 정의 기능을 사용하여 제목 UI를 수정할 수 있습니다.")]
        public bool ShowTitleUI = true;

        [Header("Bridging")]
        [Tooltip("외부 Naninovel 도구와 통신하기 위해 브리징 서버를 자동으로 시작할지 여부: IDE 확장, 웹 편집기 등.")]
        public bool EnableBridging = true;
        [Tooltip("서버가 수신할 네트워크 포트입니다. 기본 포트가 다른 응용 프로그램에 의해 사용되는 경우 여기와 외부 도구에서 모두 변경합니다.")]
        public int ServerPort = 41016;
        [Tooltip("통합 편집기가 시작되었을 때 프로젝트 메타데이터를 자동으로 생성합니다.")]
        public bool AutoGenerateMetadata = true;
        [Tooltip("스크립트 레이블 자동 완성에 사용되는 메타데이터를 생성할지 여부입니다. 프로젝트에 스크립트가 많을 경우 상당한 시간이 걸릴 수 있습니다.")]
        public bool GenerateLabelMetadata = true;
        
        [Header("Development Console")]
        [Tooltip("개발 콘솔을 활성화할지 여부입니다.")]
        public bool EnableDevelopmentConsole = true;
        [Tooltip("개발 콘솔을 전환하는 데 사용되는 키. 터치스크린을 사용할 때 멀티(3개 이상) 터치로 전환할 수도 있습니다.")]
        public KeyCode ToggleConsoleKey = KeyCode.BackQuote;
    }
}
