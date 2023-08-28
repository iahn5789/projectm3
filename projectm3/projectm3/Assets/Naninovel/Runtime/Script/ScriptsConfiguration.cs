// Copyright 2022 ReWaffle LLC. All rights reserved.

using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UIElements;

namespace Naninovel
{
    [EditInProjectSettings]
    public class ScriptsConfiguration : Configuration
    {
        public enum GraphOrientationType
        {
            Vertical,
            Horizontal
        }

        public const string DefaultPathPrefix = "Scripts";

        [Tooltip("naninovel 스크립트 리소스와 함께 사용되는 리소스 로더 구성입니다.")]
        public ResourceLoaderConfiguration Loader = new ResourceLoaderConfiguration { PathPrefix = DefaultPathPrefix };
        [Tooltip(nameof(IScriptParser) + " 텍스트에서 스크립트 자산을 생성하는 데 사용하는 구현입니다. 이 속성을 수정한 후 스크립트 자산을 다시 가져오는 것을 잊지 마십시오.")]
        public string ScriptParser = typeof(ScriptParser).AssemblyQualifiedName;
        [Tooltip("엔진 초기화 직후 재생할 스크립트 이름입니다.")]
        [ResourcePopup(DefaultPathPrefix)]
        public string InitializationScript;
        [Tooltip("타이틀 UI를 표시할 때 재생할 스크립트 이름입니다. 타이틀 화면 장면(배경, 음악 등)을 설정하는 데 사용할 수 있습니다.")]
        [ResourcePopup(DefaultPathPrefix)]
        public string TitleScript;
        [Tooltip("새 게임을 시작할 때 실행할 스크립트 이름입니다. 제공되지 않은 경우 먼저 사용 가능합니다.")]
        [ResourcePopup(DefaultPathPrefix, DefaultPathPrefix)]
        public string StartGameScript;
        [Tooltip("생성된 naninovel 스크립트를 리소스에 자동으로 추가할지 여부입니다.")]
        public bool AutoAddScripts = true;
        [Tooltip("수정된(비주얼 및 외부 편집기를 통해) 스크립트를 다시 로드하고 재생을 다시 시작하지 않고 재생 모드 중에 변경 사항을 적용할지 여부입니다.")]
        public bool HotReloadScripts = true;
        [Tooltip("프로젝트의 '.nani' 파일에 대해 파일 시스템 감시기를 실행할지 여부입니다. 외부 응용 프로그램으로 편집할 때 스크립트 변경사항을 등록해야 합니다.")]
        public bool WatchScripts = true;
        [Tooltip("'Watch Scripts'를 사용하도록 설정한 경우 전체 프로젝트 대신 볼 특정 디렉토리를 선택하여 CPU 사용량을 줄입니다.")]
        public string WatchedDirectory = string.Empty;
        [Tooltip("서비스 초기화 시 사용 가능한 모든 나노노벨 스크립트에 존재하는 명령의 수를 계산할지 여부입니다. 스크립트 관리자의 Total Commands Count 속성과 나노노벨 스크립트 표현식에 Calculate Progress 함수를 사용하지 않으면 사용하지 않도록 설정하여 엔진 초기화 시간을 줄입니다.")]
        public bool CountTotalCommands;

        [Header("Visual Editor")]
        [Tooltip("스크립트를 선택할 때 시각적 스크립트 편집기를 표시할지 여부입니다.")]
        public bool EnableVisualEditor = true;
        [Tooltip("라인이 호버링 또는 포커스되지 않은 경우 명령줄에 할당되지 않은 매개 변수를 숨길지 여부입니다.")]
        public bool HideUnusedParameters = true;
        [Tooltip("시각적 편집기가 열려 있을 때 현재 재생 중인 스크립트를 자동으로 선택할지 여부입니다.")]
        public bool SelectPlayedScript = true;
        [Tooltip("Visual Editor가 포커스를 맞출 때 'Insert Line' 창을 표시할 때 사용하는 단축키입니다. 사용하지 않으려면 '없음'으로 설정하십시오.")]
        public KeyCode InsertLineKey = KeyCode.Space;
        [Tooltip("'줄 키 삽입'의 수식자입니다. 사용하지 않으려면 '없음'으로 설정하십시오.")]
        public EventModifiers InsertLineModifier = EventModifiers.Control;
        [Tooltip("비주얼 에디터가 포커스를 맞출 때 편집된 스크립트를 저장(시리얼화)하는 데 사용되는 단축키입니다. 사용하지 않으려면 '없음'으로 설정하십시오.")]
        public KeyCode SaveScriptKey = KeyCode.S;
        [Tooltip("'스크립트 키 저장'의 수식자입니다. 사용하지 않으려면 '없음'으로 설정하십시오.")]
        public EventModifiers SaveScriptModifier = EventModifiers.Control;
        [Tooltip("시각적 편집기의 한 줄을 클릭하면 마우스 단추로 되감기를 활성화할 수 있습니다. '0'은 왼쪽, '1'은 오른쪽, '2'는 가운데입니다. 비활성화하려면 '-1'로 설정하십시오.")]
        public int RewindMouseButton;
        [Tooltip("마우스 되감기 버튼의 수식어. 사용하지 않으려면 '없음'으로 설정합니다.")]
        public EventModifiers RewindModifier = EventModifiers.Shift;
        [Tooltip("시각적 편집기 페이지당 렌더링할 스크립트 줄 수 있습니다.")]
        public int EditorPageLength = 300;
        [Tooltip("시각적 편집기의 기본 스타일을 수정할 수 있습니다.")]
        public StyleSheet EditorCustomStyleSheet;

        [Header("Script Graph")]
        [Tooltip("그래프를 수직으로 만들 것인지 수평으로 만들 것인지 여부입니다.")]
        public GraphOrientationType GraphOrientation = GraphOrientationType.Horizontal;
        [Tooltip("자동 정렬을 수행할 때 각 노드에 추가할 패딩입니다.")]
        public Vector2 GraphAutoAlignPadding = new Vector2(10, 0);
        [Tooltip("그래프 노드 내부에서 스크립트의 첫 번째 주석 행을 표시할지 여부입니다.")]
        public bool ShowSynopsis = true;
        [Tooltip("스크립트 그래프의 기본 스타일을 수정할 수 있습니다.")]
        public StyleSheet GraphCustomStyleSheet;

        [Header("Community Modding")]
        [Tooltip("빌드에 외부 나노노벨 스크립트를 추가할 수 있는지 여부입니다.")]
        public bool EnableCommunityModding;
        [Tooltip("외부 나노노벨 스크립트 리소스와 함께 사용되는 리소스 로더 구성입니다.")]
        public ResourceLoaderConfiguration ExternalLoader = new ResourceLoaderConfiguration {
            ProviderTypes = new List<string> { ResourceProviderConfiguration.LocalTypeName },
            PathPrefix = DefaultPathPrefix
        };

        [Header("Script Navigator")]
        [Tooltip("스크립트 탐색기를 초기화하여 사용 가능한 나노노벨 스크립트를 찾을지 여부입니다.")]
        public bool EnableNavigator = true;
        [Tooltip("스크립트 관리자가 초기화될 때 nanovel 스크립트 탐색기를 표시할지 여부입니다.")]
        public bool ShowNavigatorOnInit;
        [Tooltip("스크립트 탐색기의 UI 정렬 순서입니다.")]
        public int NavigatorSortOrder = 900;
    }
}
