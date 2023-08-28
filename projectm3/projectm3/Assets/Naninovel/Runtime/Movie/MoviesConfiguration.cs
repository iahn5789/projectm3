// Copyright 2022 ReWaffle LLC. All rights reserved.

using UnityEngine;

namespace Naninovel
{
    [EditInProjectSettings]
    public class MoviesConfiguration : Configuration
    {
        public const string DefaultPathPrefix = "Movies";

        [Tooltip("동영상 리소스에 사용되는 리소스 로더의 구성입니다.")]
        public ResourceLoaderConfiguration Loader = new ResourceLoaderConfiguration { PathPrefix = DefaultPathPrefix };
        [Tooltip("사용자가 '취소' 입력 키를 활성화할 때 동영상 재생을 생략할지 여부입니다.")]
        public bool SkipOnInput = true;
        [Tooltip("현재 시간을 따라잡기 위해 프레임을 건너 뛸지 여부입니다.")]
        public bool SkipFrames = true;
        [Tooltip("동영상 재생을 시작/종료하기 전에 페이드 인/아웃하는 시간(초)입니다.")]
        public float FadeDuration = 1f;
        [Tooltip("페이딩하는 동안 보여줄 텍스처. 제공되지 않을 때 간단한 검은색 텍스처를 사용합니다.")]
        public Texture2D CustomFadeTexture;
        [Tooltip ("엔진 초기화 후 메인 메뉴를 표시하기 전에 동영상을 자동으로 재생할지 여부입니다.")]
        public bool PlayIntroMovie;
        [Tooltip("소개 동영상 리소스의 경로입니다.")]
        [ResourcePopup(DefaultPathPrefix, DefaultPathPrefix)]
        public string IntroMovieName;
    }
}
