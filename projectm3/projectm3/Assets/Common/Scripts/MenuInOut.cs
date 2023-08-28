using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MenuInOut : MonoBehaviour
{
    public Animator animator; // 애니메이터 컴포넌트
    private bool isMenuVisible = false; // 메뉴가 보이는 상태를 나타내는 변수

    private void Update()
    {
        // ESC 키가 눌렸을 때
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            // 현재 메뉴 상태에 따라 애니메이션 전환
            if (!isMenuVisible)
            {
                animator.SetTrigger("MenuUI"); // MenuUI 애니메이션 재생
            }
            else
            {
                animator.SetTrigger("MenuUIOut"); // MenuUIOut 애니메이션 재생
            }

            // 메뉴 상태 변경
            isMenuVisible = !isMenuVisible;
        }
    }
}