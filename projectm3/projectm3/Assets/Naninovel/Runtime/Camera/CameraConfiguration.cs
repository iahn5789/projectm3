// Copyright 2022 ReWaffle LLC. All rights reserved.

using UnityEngine;

namespace Naninovel
{
    [EditInProjectSettings]
    public class CameraConfiguration : Configuration
    {
        [Tooltip("기준 해상도는 적절한 렌더링 차원을 평가하는 데 사용되므로 배우가 장면에 올바르게 배치됩니다. 경험의 규칙으로 게임에서 만든 배경 텍스처의 해상도와 동일하게 설정하십시오.")]
        public Vector2Int ReferenceResolution = new Vector2Int(1920, 1080);
        [Tooltip("장면 단위에 해당하는 픽셀의 수. 이를 줄이면 모든 배우가 더 작아지고 그 반대도 마찬가지입니다. 대부분의 경우 기본값 100이 권장됩니다.")]
        public float ReferencePPU = 100;
        [Tooltip("기준 장면 직사각형 너비를 화면 너비와 일치시켜야 하는지 여부입니다. 이 옵션을 선택하면 상대(장면) 위치 평가에서 화면 테두리를 원점으로 사용하고, 그렇지 않으면 기준 해상도가 사용됩니다.")]
        public bool MatchScreenWidth;
        [Tooltip("관리되는 카메라의 초기 월드 위치입니다.")]
        public Vector3 InitialPosition = new Vector3(0, 0, -10);
        [Tooltip("렌더링에 사용할 카메라 구성 요소가 있는 프리패브. 지정되지 않은 경우 기본값을 사용합니다. 일부 카메라 속성(배경 색상, FOV, HDR 등)을 설정하거나 후처리 스크립트를 추가하려는 경우 원하는 카메라 설정으로 프리패브를 생성하고 이 필드에 프리패브를 할당합니다.")]
        public Camera CustomCameraPrefab;
        [Tooltip("전용 카메라로 UI를 렌더링할지 여부. 이 옵션은 하위 호환성을 위한 것이며 새 프로젝트에서 비활성화해서는 안 됩니다. 비활성화 시 문제가 예상됩니다(예: 카메라 애니메이션에서 지속적인 uGUI 레이아웃 재구축).")]
        public bool UseUICamera = true;
        [Tooltip("UI 렌더링에 사용할 카메라 구성 요소가 있는 프리패브입니다. 지정하지 않으면 기본값을 사용합니다. 'UI 카메라 사용'이 비활성화된 경우 효과가 없습니다")]
        public Camera CustomUICameraPrefab;
        [Tooltip("모든 카메라 수정(줌, 위치, 회전 등 변경)의 기본 지속 시간(초)입니다.")]
        public float DefaultDuration = .35f;
        [Tooltip("모든 카메라 수정(줌, 위치, 회전 등 변경)에 기본적으로 사용할 수 있는 기능을 완화합니다.")]
        public EasingType DefaultEasing = EasingType.Linear;

        [Header("Thumbnails")]
        [Tooltip("미리 보기 게임 저장 슬롯에 대한 축소판 그림이 캡처됩니다.")]
        public Vector2Int ThumbnailResolution = new Vector2Int(240, 140);
        [Tooltip("썸네일을 캡처할 때 UI 계층을 무시할지 여부입니다.")]
        public bool HideUIInThumbnails;

        /// <summary>
        /// Rectangle representing reference dimensions of the scene.
        /// </summary>
        public Rect SceneRect => EvaluateSceneRect();

        /// <summary>
        /// Returns a rectangle that frames the scene content, in units.
        /// </summary>
        /// <param name="center">Position of the scene origin in world space.</param>
        /// <param name="resolution">Reference resolution.</param>
        /// <param name="ppu">Reference pixels per unit.</param>
        public static Rect EvaluateSceneRect (Vector2 center, Vector2 resolution, float ppu)
        {
            var size = resolution / ppu;
            var position = center - size / 2;
            return new Rect(position, size);
        }

        /// <summary>
        /// Converts provided relative scene position into world space based on the provided scene rect.
        /// </summary>
        /// <param name="scenePosition">x0y0 is at the bottom left and x1y1 is at the top right corner of the scene.</param>
        /// <param name="sceneRect">Rectangle, representing scene dimensions and position, in world-space units.</param>
        public static Vector3 SceneToWorldSpace (Vector3 scenePosition, Rect sceneRect)
        {
            var resultXY = sceneRect.min + Vector2.Scale(scenePosition, sceneRect.size);
            return new Vector3(resultXY.x, resultXY.y, scenePosition.z);
        }

        /// <summary>
        /// Inverse to <see cref="SceneToWorldSpace(Vector3,Rect)"/>.
        /// </summary>
        public static Vector3 WorldToSceneSpace (Vector3 worldPosition, Rect sceneRect)
        {
            var resultXY = new Vector2 {
                x = (worldPosition.x - sceneRect.min.x) / sceneRect.size.x,
                y = (worldPosition.y - sceneRect.min.y) / sceneRect.size.y
            };
            return new Vector3(resultXY.x, resultXY.y, worldPosition.z);
        }

        /// <inheritdoc cref="SceneToWorldSpace(UnityEngine.Vector3,UnityEngine.Rect)"/>
        public virtual Vector3 SceneToWorldSpace (Vector3 scenePosition) => SceneToWorldSpace(scenePosition, SceneRect);

        /// <inheritdoc cref="WorldToSceneSpace(UnityEngine.Vector3,UnityEngine.Rect)"/>
        public virtual Vector3 WorldToSceneSpace (Vector3 worldPosition) => WorldToSceneSpace(worldPosition, SceneRect);

        /// <inheritdoc cref="SceneRect"/>
        protected virtual Rect EvaluateSceneRect ()
        {
            var resolution = Vector2.zero;
            if (MatchScreenWidth)
            {
                var modifier = ReferenceResolution.y / (float)Screen.height;
                var width = Screen.width * modifier;
                resolution = new Vector2(width, ReferenceResolution.y);
            }
            else resolution = ReferenceResolution;
            return EvaluateSceneRect(InitialPosition, resolution, ReferencePPU);
        }
    }
}
