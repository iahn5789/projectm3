using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class MenuInOut : MonoBehaviour
{
    public static Action target;

    public Animator animator; // 애니메이터 컴포넌트
    public bool isMenuVisible = false; // 메뉴가 보이는 상태를 나타내는 변수

    private bool isFirstEscape = true; // 첫 ESC 입력 여부를 나타내는 변수

    private void Awake()
    {
        target = () => { setIsMenuVisible(); };
    }

    public void setIsMenuVisible()
    {
        // 현재 상태에 따라 애니메이션 전환
        if (!isMenuVisible)
        {
            animator.SetTrigger("MenuUIOut"); // MenuUIOut 애니메이션 재생
        }
        else
        {
            animator.SetTrigger("MenuUI"); // MenuUI 애니메이션 재생
        }

        // 메뉴 상태 변경
        isMenuVisible = !isMenuVisible;
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