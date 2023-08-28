// Copyright 2022 ReWaffle LLC. All rights reserved.

using System;
using UnityEngine;

namespace Naninovel
{
    /// <summary>
    /// Allows detecting touch swipes by sampling user input.
    /// </summary>
    [Serializable]
    public class InputSwipeTrigger
    {
        [Tooltip("어느 방향으로 스와이프를 등록해야 합니다.")]
        public InputSwipeDirection Direction;
        [Tooltip("스와이프를 등록하려면 손가락(터치)이 얼마나 활성화되어야 합니다."), Range(1, 5)]
        public int FingerCount = 1;
        [Tooltip("트리거를 활성화하는 데 필요한 최소 스와이프 거리(픽셀)입니다.")]
        public float MinimumDistance = 50f;
        [Tooltip("손가락을 움직이는 동안 입력을 활성화할지 여부입니다. 비활성화하면 손가락을 놓을 때만 활성화됩니다.")]
        public bool ActivateOnMove;
        
        private Vector2 startPosition;

        /// <summary>
        /// Returns whether the swipe is currently registered.
        /// </summary>
        public bool Sample ()
        {
            #if ENABLE_LEGACY_INPUT_MANAGER
            if (Input.touchCount != FingerCount) return false;

            for (int i = 0; i < Input.touchCount; i++)
            {
                var touch = Input.GetTouch(i);
                if (CheckTouch(touch)) return true;
            }
            #endif
            return false;
        }

        #if ENABLE_LEGACY_INPUT_MANAGER
        private bool CheckTouch (Touch touch)
        {
            switch (touch.phase)
            {
                case TouchPhase.Began: startPosition = touch.position; return false;
                case TouchPhase.Moved: return ActivateOnMove && CheckSwipe(touch.position);
                case TouchPhase.Ended: return CheckSwipe(touch.position);
                default: return false;
            }
        }

        private bool CheckSwipe (Vector2 endPosition)
        {
            var horDist = Mathf.Abs(endPosition.x - startPosition.x);
            var verDist = Mathf.Abs(endPosition.y - startPosition.y);

            switch (Direction)
            {
                case InputSwipeDirection.Up: return MovedUp();
                case InputSwipeDirection.Down: return MovedDown();
                case InputSwipeDirection.Left: return MovedLeft();
                case InputSwipeDirection.Right: return MovedRight();
                default: return false;
            }

            bool MovedHorizontally () => horDist > MinimumDistance && horDist > verDist;
            bool MovedVertically () => verDist > MinimumDistance && verDist > horDist;
            bool MovedRight () => MovedHorizontally() && endPosition.x - startPosition.x > 0;
            bool MovedLeft () => MovedHorizontally() && endPosition.x - startPosition.x < 0;
            bool MovedUp () => MovedVertically() && endPosition.y - startPosition.y > 0;
            bool MovedDown () => MovedVertically() && endPosition.y - startPosition.y < 0;
        }
        #endif
    }
}
