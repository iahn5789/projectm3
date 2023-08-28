// Copyright 2022 ReWaffle LLC. All rights reserved.

using UnityEngine;

namespace Naninovel
{
    /// <summary>
    /// Represents serializable data required to construct and initialize a <see cref="IActor"/> 
    /// managed in the orthographic scene space.
    /// </summary>
    [System.Serializable]
    public abstract class OrthoActorMetadata : ActorMetadata
    {
        [Tooltip("액터의 피벗 포인트.")]
        public Vector2 Pivot = Vector2.zero;
        [Tooltip("액터의 PPU 값입니다.")]
        public float PixelsPerUnit = 100;
        [Tooltip("z 버퍼에 추가 렌더 패스 쓰기를 수행할지 여부입니다. 일부 효과(예: 필드 깊이)에 필요합니다.")]
        public bool EnableDepthPass = true;
        [Range(0.001f, 0.999f), Tooltip("깊이 패스가 활성화되면 투명도 레벨(알파) 임계값을 제어하여 깊이 마스크의 렌더링된 픽셀을 잘라냅니다.")]
        public float DepthAlphaCutoff = 0.5f;
        [Tooltip("액터의 외형 텍스처를 그리고 전환할 때 사용할 사용자 정의 쉐이더입니다. 쉐이더는 특정 속성을 가지고 있어야 합니다. 기본 쉐이더(Naninovel/Resources/Naninovel/Shaders/Transitional Texture)를 참조하십시오.")]
        public Shader CustomTextureShader;
        [Tooltip("액터의 스프라이트를 그릴 때 사용할 사용자 지정 쉐이더(씬에서 스프라이트로 표시되는 경우). 기본적으로 단순한 조명이 없는 투명 쉐이더가 사용됩니다. 조명이나 표면 효과를 지원하려면 여기에 사용자 지정 쉐이더를 할당하십시오.")]
        public Shader CustomSpriteShader;
        [Tooltip("구현에 의해 할당되고 지원되는 경우 액터는 현장의 게임 객체 대신 텍스처로 렌더링됩니다.")]
        public RenderTexture RenderTexture;
        [Tooltip("텍스처로 렌더링할 때 렌더링할 액터의 영역을 수정할 수 있습니다. X와 Y는 왼쪽 하단 모서리의 수평 및 수직 오프셋이고, W와 H는 영역의 너비 및 높이 척도입니다. 두 매개 변수 모두 상대적입니다. 예를 들어, 10% 오프셋의 경우 0.1을 사용하십시오.\n\n예: [X0 Y0.5 W1.5 H1.5]는 액터의 상반부 부분을 전체 텍스처로 균일하게 늘입니다.")]
        public Rect RenderRectangle = new Rect(0, 0, 1, 1);
    }
}
