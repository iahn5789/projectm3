using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System;
using Naninovel;

public class Timer : MonoBehaviour
{
    public Text timerText; // UI Text 요소
    public float countdownTime; // 타이머 시간(초)
    private float timer; // 경과 시간을 추적할 변수
    private float interval = 1f;
    private float delayTime; // 경과 시간을 추적할 변수
    private ICustomVariableManager variableManager;
    private string bt_active;
    
    void Start()
    {
        timer = countdownTime;
        timerText.text = timer.ToString("F0"); // 소수점 첫 번째 자리까지 출력
        variableManager = Engine.GetService<ICustomVariableManager>();
    }
    public void SpaceBtn_Click() {
        // space bar btn click 시 들어오는 곳
        if (bt_active == "true"){
            Debug.Log("Space bar가 눌렸습니다.");
        }
    }
    void Update()
    {
        bt_active = variableManager?.GetVariableValue("Start_Timer");
        if (bt_active == "true")
        {
            if (Input.GetKeyDown(KeyCode.Space)) // Space 키가 처음 눌렸을 때만 실행
            {
                SpaceBtn_Click();
            }
            delayTime += Time.deltaTime;
            timer -= Time.deltaTime;
            if (delayTime >= interval)
            {
                if (timer <= 0)
                {
                    timer = 0;
                    variableManager?.SetVariableValue("Start_Timer", "false");
                }

                // 타이머 값을 텍스트로 표시
                timerText.text = timer.ToString("F0"); // 소수점 첫 번째 자리까지 출력
                delayTime = 0f;
            }
        }
    }
}
