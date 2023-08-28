// Copyright 2022 ReWaffle LLC. All rights reserved.

using System.Collections.Generic;
using UnityEngine;

namespace Naninovel
{
    [System.Serializable]
    public class InputBinding
    {
        [Tooltip("입력 관리자를 통해 액세스하는 데 사용되는 바인딩의 이름(ID)입니다.")]
        public string Name = string.Empty;
        [Tooltip("게임에서 벗어나 메뉴에서 바인딩을 항상 처리할지 여부입니다.")]
        public bool AlwaysProcess;
        [Tooltip("이 바인딩을 트리거해야 하는 키입니다.")]
        public List<KeyCode> Keys = new List<KeyCode>();
        [Tooltip("이 바인딩을 트리거해야 하는 축입니다.")]
        public List<InputAxisTrigger> Axes = new List<InputAxisTrigger>();
        [Tooltip("이 바인딩을 트리거할 스와이프(터치 스크린).")]
        public List<InputSwipeTrigger> Swipes = new List<InputSwipeTrigger>();
    }
}
