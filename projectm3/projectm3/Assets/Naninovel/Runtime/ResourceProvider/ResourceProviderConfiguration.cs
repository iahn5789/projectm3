// Copyright 2022 ReWaffle LLC. All rights reserved.

using UnityEngine;

namespace Naninovel
{
    [EditInProjectSettings]
    public class ResourceProviderConfiguration : Configuration
    {
        /// <summary>
        /// Assembly-qualified type name of the built-in project resource provider.
        /// </summary>
        public const string ProjectTypeName = "Naninovel.ProjectResourceProvider, Elringus.Naninovel.Runtime, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null";
        /// <summary>
        /// Assembly-qualified type name of the built-in local resource provider.
        /// </summary>
        public const string LocalTypeName = "Naninovel.LocalResourceProvider, Elringus.Naninovel.Runtime, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null";
        /// <summary>
        /// Assembly-qualified type name of the built-in Google Drive resource provider.
        /// </summary>
        public const string GoogleDriveTypeName = "Naninovel.GoogleDriveResourceProvider, Elringus.Naninovel.Runtime, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null";
        /// <summary>
        /// Assembly-qualified type name of the built-in virtual resource provider.
        /// </summary>
        public const string VirtualTypeName = "Naninovel.VirtualResourceProvider, Elringus.Naninovel.Runtime, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null";
        /// <summary>
        /// Assembly-qualified type name of the built-in addressable resource provider.
        /// </summary>
        public const string AddressableTypeName = "Naninovel.AddressableResourceProvider, Elringus.Naninovel.Runtime, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null";
        /// <summary>
        /// Unique identifier (group name, address prefix, label) used with assets managed by the Naninovel resource provider.
        /// </summary>
        public const string AddressableId = "Naninovel";
        /// <summary>
        /// Assigned from the editor assembly when the application is running under Unity editor.
        /// </summary>
        public static IResourceProvider EditorProvider = default;

        /// <summary>
        /// Used by the <see cref="IResourceProviderManager"/> before all the other providers.
        /// </summary>
        public virtual IResourceProvider MasterProvider => EditorProvider;

        [Header("Resources Management")]
        [Tooltip("스크립트 실행 중에 리소스가 로드되고 언로드되는 시기를 지정합니다:" +
            "\n • 스태틱 - 스크립트 실행에 필요한 모든 리소스는 재생을 시작할 때 미리 로드되고(로드 화면으로 마스킹됨) 스크립트 재생이 완료될 때만 언로드됩니다. 이 정책은 기본값이며 대부분의 경우 권장됩니다." +
            "\n • 다이나믹 — 스크립트 실행 중에 다음 'Dynamic Policy Steps' 명령에 필요한 리소스만 사전 로드되고 사용되지 않은 리소스는 즉시 모두 언로드됩니다. 메모리 제한이 엄격한 플랫폼을 대상으로 할 때 이 모드를 사용하면 naninovel 스크립트를 제대로 구성할 수 없습니다. 게임이 진행되는 동안 리소스가 백그라운드에서 로드되면 오류가 발생할 수 있습니다.")]
        public ResourcePolicy ResourcePolicy = ResourcePolicy.Static;
        [Tooltip("동적 리소스 폴리시를 사용하도록 설정한 경우 사전 로드할 스크립트 명령 수를 정의합니다.")]
        public int DynamicPolicySteps = 25;
        [Tooltip("동적 리소스 폴리시를 사용 가능한 경우 스크립트 재생 중에 리소스를 로드할 때 오류를 방지하기 위해 Unity의 백그라운드 로드 스레드 우선 순위를 낮게 설정합니다.")]
        public bool OptimizeLoadingPriority = true;
        [Tooltip("로드 화면에서 리소스 로드 작업을 기록할지 여부입니다.")]
        public bool LogResourceLoading;

        [Header("Build Processing")]
        [Tooltip("Naninovel 리소스로 할당된 자산을 처리하기 위한 사용자 지정 빌드 플레이어 핸들 등록 여부입니다.\n\n경고: 이 설정을 적용하려면 Unity 편집기를 다시 시작해야 합니다.")]
        public bool EnableBuildProcessing = true;
        [Tooltip("주소 지정 가능한 에셋 시스템이 설치된 경우 이 속성을 활성화하면 에셋 처리 단계가 최적화되어 빌드 시간이 단축됩니다.")]
        public bool UseAddressables = true;
        [Tooltip("플레이어를 빌드할 때 주소 지정 가능한 에셋 번들을 자동으로 구축(빌드)할지 여부입니다. 주소 지정 가능 사용이 비활성화된 경우에는 영향이 없습니다.")]
        public bool AutoBuildBundles = true;

        [Header("Addressable Provider")]
        [Tooltip("주소 지정 가능한 제공자(provider)를 편집기에서 사용할지 여부입니다. 나니노벨의 리소스 관리자에게 할당하는 대신 주소 지정 가능한 주소를 통해 리소스를 수동으로 노출하는 경우 활성화합니다. 이를 활성화하면 리소스 관리자에서 리소스가 할당되고 주소 지정 가능한 주소로 등록된 후 이름이 바뀌거나 복제될 때 문제가 발생할 수 있습니다.")]
        public bool AllowAddressableInEditor;
        [Tooltip("Naninovel 리소스 카테고리별로 주소 지정 가능한 그룹(스크립트, 문자, 오디오 등)을 생성할지 여부입니다. 비활성화된 경우 모든 리소스에 대해 하나의 'Naninovel' 그룹을 사용합니다.")]
        public bool GroupByCategory;
        [Tooltip("주소 지정 가능한 공급자(provider)는 '나니노벨' 레이블 외에 할당된 레이블이 있는 자산에서만 작동합니다. 사용자 지정 기준(예: HD vs SD 텍스처)을 기반으로 엔진에서 사용되는 에셋을 필터링하는 데 사용할 수 있습니다.")]
        public string[] ExtraLabels;

        [Header("Local Provider")]
        [Tooltip("로컬 리소스 제공자(provider)에 사용할 경로 루트입니다. 리소스가 있는 폴더의 절대 경로이거나 사용 가능한 원본 중 하나가 있는 상대 경로일 수 있습니다:" +
            "\n • %DATA% - 대상 장치의 게임 데이터 폴더(UnityEngine.Application.dataPath)." +
            "\n • %PDATA% - 대상 장치의 영구 데이터 디렉토리(UnityEngine.Application.persistentDataPath)입니다." +
            "\n • %STREAM% - 'StreamingAssets' 폴더(UnityEngine.Application.StreamingAssetsPath)." +
            "\n • %SPECIAL{F}% - OS 특수 폴더(여기서 F는 System.Environment.SpecialFolder의 값)입니다.")]
        public string LocalRootPath = "%DATA%/Resources";
        [Tooltip("WebGL(영화, 비디오 배경)에서 비디오를 스트리밍할 때 비디오 파일의 확장자를 지정합니다.")]
        public string VideoStreamExtension = ".mp4";

        [Header("Project Provider")]
        [Tooltip("나노노벨별 에셋이 위치한 '리소스' 폴더에 대한 경로입니다.")]
        public string ProjectRootPath = "Naninovel";

        #if UNITY_GOOGLE_DRIVE_AVAILABLE
        [Header("Google Drive Provider")]
        [Tooltip("Google 드라이브 리소스 공급자(provider)에 사용할 경로 루트입니다.")]
        public string GoogleDriveRootPath = "Resources";
        [Tooltip("Google Drive API에 연결할 때 허용되는 최대 동시 요청 수.")]
        public int GoogleDriveRequestLimit = 2;
        [Tooltip("리소스를 다운로드할 때 사용할 캐시 정책입니다. 'Smart'는 Changes API를 사용하여 드라이브에서 수정 사항을 확인하려고 시도합니다. 'PurgeAllOnInit'은 공급자(provider)가 초기화되면 모든 리소스를 다시 다운로드합니다.")]
        public GoogleDriveResourceProvider.CachingPolicyType GoogleDriveCachingPolicy = GoogleDriveResourceProvider.CachingPolicyType.Smart;
        #endif
    }
}
