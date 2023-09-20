using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Naninovel;
using Naninovel.Commands;

public class Timer : MonoBehaviour
{
    public Text timerText; // UI Text 요소
    public float countdownTime; // 타이머 시간(초)
    public Image range1;
    public Image range2;
    public Image range3;
    public Image trigger;
    private float timer; // 경과 시간을 추적할 변수
    private float interval = 1f;
    private float delayTime; // 경과 시간을 추적할 변수
    private ICustomVariableManager variableManager;
    private string bt_active;
    public float speed = 5.0f; // 움직이는 속도
    private bool moveRight = true;
    private bool stopMove = false;
    private float stopDuration = 0.5f;  // 멈추는 시간 (0.5초)
    private float currentStopTime = 0f;  // 현재 멈춘 시간 추적
    void Start()
    {
        timer = countdownTime;
        timerText.text = timer.ToString("F0"); // 소수점 첫 번째 자리까지 출력
        variableManager = Engine.GetService<ICustomVariableManager>();
    }
    public void SpaceBtn_Click()
    {
        if (bt_active == "true")
        {
            currentStopTime = stopDuration;  // 멈추는 시간 설정
            bool isOverlapping = false;
            Image[] images = { range1, range2, range3 };
            foreach (Image img in images)
            {
                if (img.gameObject.activeSelf && IsOverlappingWithTrigger(img))
                {
                    img.gameObject.SetActive(false);
                    isOverlapping = true;  // 겹치는 이미지가 있음
                    break;  // 이미 겹치는 이미지를 찾았으므로 반복 종료
                }
            }
            bool isActive = false;
            foreach (Image img in images)
            {
                if (img.gameObject.activeSelf)
                {
                    isActive = true;
                    break;  // 이미지가 on인 경우를 찾으면 반복 종료
                }
            }
            if (!isActive)
            {
                // 아르바이트 성공!
                var inputHideUI = new List<string>() {"PartTimeJobUI"};
                var HideUI = new HideUI{UINames = inputHideUI};
                HideUI.ExecuteAsync();
                variableManager?.SetVariableValue("Start_Timer", "false");
            }

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
            if (currentStopTime > 0)  // 현재 멈춘 시간이 설정된 시간보다 작으면
            {
                stopMove = true;
                currentStopTime -= Time.deltaTime;
            }
            else
            {
                stopMove = false;
            }
        
            float newX = trigger.rectTransform.anchoredPosition.x + (moveRight ? speed : -speed) * Time.deltaTime;
        
            if (newX > 510f)
            {
                newX = 510f;
                moveRight = false;
            }
            else if (newX < 0f)
            {
                newX = 0f;
                moveRight = true;
            }
            if (!stopMove)  
            {
                trigger.rectTransform.anchoredPosition = new Vector2(newX, trigger.rectTransform.anchoredPosition.y);
            }
            string create_Object = variableManager?.GetVariableValue("Create_Object");
            if (create_Object == "true")
            {
                string PartTimeJob_Object = variableManager?.GetVariableValue("PartTimeJob_Object");
                variableManager?.SetVariableValue("Create_Object", "false");
                Set_Active_Object(PartTimeJob_Object);
            }
            delayTime += Time.deltaTime;
            timer -= Time.deltaTime;
            if (delayTime >= interval)
            {
                if (timer <= 0)
                {
                    // 아르바이트 실패!!!!!!!!!!!
                    
                    var inputShowUI = new List<string>() {"PartTimeJobUI"};
                    var HideUI = new HideUI{UINames = inputShowUI};
                    HideUI.ExecuteAsync();
                    timer = 0;
                    variableManager?.SetVariableValue("Start_Timer", "false");
                }

                // 타이머 값을 텍스트로 표시
                timerText.text = timer.ToString("F0"); // 소수점 첫 번째 자리까지 출력
                delayTime = 0f;
            }
        }
    }
    void Set_Active_Object(string PartTimeJob_Object)
    {
        ResetObjects();

        if (PartTimeJob_Object == "1")
        {
            SetRandomWidthAndPosition(range1, 110, 90);
        }
        else if (PartTimeJob_Object == "2")
        {
            SetRandomWidthAndPosition(range2, 70, 50);
        }
        else if (PartTimeJob_Object == "3")
        {
            SetRandomWidthAndPosition(range1, 110, 90);
            SetRandomWidthAndPosition(range2, 70, 50, range1);
        }
        else if (PartTimeJob_Object == "4")
        {
            SetRandomWidthAndPosition(range2, 70, 50);
            SetRandomWidthAndPosition(range3, 30, 20, range2);
        }
        else if (PartTimeJob_Object == "5")
        {
            SetRandomWidthAndPosition(range1, 110, 90);
            SetRandomWidthAndPosition(range2, 70, 50, range1);
            SetRandomWidthAndPosition(range3, 30, 20, range2, range1);
        }
    }

    void ResetObjects()
    {
        range1.gameObject.SetActive(false);
        range2.gameObject.SetActive(false);
        range3.gameObject.SetActive(false);
    }

    void SetRandomWidthAndPosition(Image img, int maxWidth, int minWidth, params Image[] otherRanges)
    {
        img.gameObject.SetActive(true);

        float randomWidth = Random.Range(minWidth, maxWidth + 1);
        RectTransform rect = img.GetComponent<RectTransform>();
        rect.sizeDelta = new Vector2(randomWidth, rect.sizeDelta.y);

        float maxXPos = 515f - randomWidth;
        float randomXPos;

        bool isOverlapping;
        int attempt = 0;

        do
        {
            attempt++;
            isOverlapping = false;
            randomXPos = Random.Range(20f, maxXPos + 1);

            foreach (Image other in otherRanges)
            {
                if (other.gameObject.activeSelf && IsOverlapping(randomXPos, randomWidth, other))
                {
                    isOverlapping = true;
                    break;
                }
            }
        } while (isOverlapping && attempt < 100);

        if (attempt < 100)
        {
            rect.anchoredPosition = new Vector2(randomXPos, rect.anchoredPosition.y);
        }
    }
    bool IsOverlapping(float xPos, float width, Image other)
    {
        float spacing = 10f; // 추가된 간격
        float otherX = other.GetComponent<RectTransform>().anchoredPosition.x;
        float otherWidth = other.GetComponent<RectTransform>().sizeDelta.x;
    
        return (xPos < otherX + otherWidth + spacing) && (xPos + width + spacing > otherX);
    }
    bool IsOverlappingWithTrigger(Image target)
    {
        float triggerX = trigger.rectTransform.anchoredPosition.x;
        float targetX = target.rectTransform.anchoredPosition.x;
        float targetWidth = target.rectTransform.sizeDelta.x;

        // 12는 겹치는 부분에 포함되지 않음
        return (triggerX + 12 > targetX && triggerX + 15 < targetX + targetWidth);
    }
}
