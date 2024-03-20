using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class EndingDialogCreditManager : MonoBehaviour
{
    public Animator EndingCG; // EndingCG Animator
    public GameObject credit; // 크레딧 텍스트를 위한 GameObject
    public float scrollSpeed = 20f; // 텍스트 스크롤 속도

    // 특정 시간 후에 애니메이션 트리거를 설정하기 위해 시간 매개변수 추가
    public void StartScroll(float afterTime)
    {
        StartCoroutine(ScrollCredits(afterTime));
    }

    IEnumerator ScrollCredits(float afterTime)
    {
        float posY = credit.transform.position.y;

        // 특정 시간을 위한 타이머
        float timer = 0;

        // 텍스트가 위로 스크롤되는 동안 무한 반복
        while (true)
        {
            posY += scrollSpeed * Time.deltaTime; // 텍스트 위치 업데이트
            credit.transform.position = new Vector2(credit.transform.position.x, posY);

            // 타이머 업데이트
            timer += Time.deltaTime;
            // 지정된 시간이 경과했는지 확인
            if (timer >= afterTime)
            {
                // 애니메이션 트리거 설정
                EndingCG.SetTrigger("In");

                // 루프 종료
                break;
            }
            
            yield return null; // 다음 프레임까지 기다림
        }
    }
}
