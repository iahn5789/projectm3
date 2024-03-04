using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class EndingDialogCreditManager : MonoBehaviour
{
    public Text creditText; // 크레딧 텍스트를 위한 Text 컴포넌트
    public float scrollSpeed = 20f; // 텍스트 스크롤 속도

    public void StartScroll()
    {
        StartCoroutine(ScrollCredits());
    }

    IEnumerator ScrollCredits()
    {
        float posY = creditText.transform.position.y;

        // 텍스트가 위로 스크롤되는 동안 무한 반복
        while (true)
        {
            posY += scrollSpeed * Time.deltaTime; // 텍스트 위치 업데이트
            creditText.transform.position = new Vector2(creditText.transform.position.x, posY);
            
            yield return null; // 다음 프레임까지 기다림
        }
    }
}
