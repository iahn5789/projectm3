using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class MenuInOut : MonoBehaviour
{
    public static Action target;

    public Animator MenuAnimator; // 애니메이터 컴포넌트
    public Animator AutoAnimator;
    public bool isMenuVisible = false; // 메뉴가 보이는 상태를 나타내는 변수
    private bool isFirstEscape = true; // 첫 ESC 입력 여부를 나타내는 변수
    private bool isFirstShowActive = false; // FirstShow 트리거 활성화 여부를 나타내는 변수

    private void Awake()
    {
        target = () => { setIsMenuVisible(); };
    }

    public void setIsMenuVisible()
    {
        // 현재 상태에 따라 애니메이션 전환
        if (!isMenuVisible)
        {
            MenuAnimator.SetTrigger("MenuUIOut"); // MenuUIOut 애니메이션 재생
        }
        else
        {
            MenuAnimator.SetTrigger("MenuUI"); // MenuUI 애니메이션 재생
        }

        // 메뉴 상태 변경
        isMenuVisible = !isMenuVisible;
    }

    public void SetActiveAutoAnim()
    {
        // isFirstShowActive의 상태에 따라 애니메이터의 트리거 설정
        if (!isFirstShowActive)
        {
            MenuAnimator.ResetTrigger("Hide"); // MenuUI 애니메이션 재생
            AutoAnimator.SetTrigger("FirstShow");
            isFirstShowActive = true; // FirstShow가 활성화되어 있음을 나타냄
        }
        else
        {
            MenuAnimator.ResetTrigger("FirstShow"); // MenuUI 애니메이션 재생
            AutoAnimator.SetTrigger("Hide");
            isFirstShowActive = false; // Hide가 활성화되어 있음을 나타냄
        }
    }
    private void Update()
    {
        // ESC 키가 눌렸을 때
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            setIsMenuVisible();
        }
    }
}