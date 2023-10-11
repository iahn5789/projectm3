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
    private bool shouldStartCountdown = false; // 코루틴 시작을 위한 플래그
    private string bt_active;
    public float speed = 5.0f; // 움직이는 속도
    private bool moveRight = true;
    private bool stopMove = false;
    private float stopDuration = 0.5f;  // 멈추는 시간 (0.5초)
    private float currentStopTime = 0f;  // 현재 멈춘 시간 추적

    public Text JobName;
    public Text JobSubtitle;
    public Image JobIcon;
    public Text JobReward;
    public Text JobSuccessProbability;
    public Image[] Star;
    public Sprite[] JobIconList;
    public Sprite StarOn;
    public Sprite StarOff;
    public GameObject SuccessUI;
    public GameObject FailUI;
    public GameObject MainUI;
    public Button RetryButton;
    public Text FailCount;
    public Text SuccessReward;
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
                // 아르바이트 성공 !!!!!!!!!
                StartCoroutine(HandleSuccess());
            }

        }
    }
    IEnumerator HandleSuccess()
    {
        yield return new WaitForSeconds(0.5f);

        variableManager?.SetVariableValue("Start_Timer", "false");
        variableManager?.SetVariableValue("PartTimeJob_Count", "0");
        var money = int.Parse(variableManager?.GetVariableValue("money"));
        var Reward = int.Parse(variableManager?.GetVariableValue("PartTimeJob_Object")) * 200;
        variableManager?.SetVariableValue("money", (money + Reward).ToString());
        variableManager?.SetVariableValue("update_TestSceneUI_variable", "true");
        SuccessUI.SetActive(true);
        MainUI.SetActive(false);
        SuccessReward.text = JobReward.text;
    }
    public void RetryGame()
    {
        string count = variableManager?.GetVariableValue("PartTimeJob_Count");
        if (count != "")
        {
            variableManager?.SetVariableValue("PartTimeJob_Count", (int.Parse(count) - 1).ToString());
        }
        variableManager?.SetVariableValue("Start_Timer", "true");
        variableManager?.SetVariableValue("Create_Object", "true");
        MainUI.SetActive(true);
    }
    void Update()
    {
        
        if (shouldStartCountdown)
            return;
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
        
            if (newX > 640f)
            {
                newX = 640f;
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
            if (create_Object == "true" && !shouldStartCountdown)
            {
                shouldStartCountdown = true;
                StartCoroutine(InitializeAndCountdown());
                return;
            }
            delayTime += Time.deltaTime;
            timer -= Time.deltaTime;
            if (delayTime >= interval)
            {
                if (timer <= 0)
                {
                    // 아르바이트 실패 !!!!!!!!!
                    StartCoroutine(HandleFailure());
                }

                // 타이머 값을 텍스트로 표시
                timerText.text = timer.ToString("F0"); // 소수점 첫 번째 자리까지 출력
                delayTime = 0f;
            }
        }
    }
    IEnumerator HandleFailure()
    {
        variableManager?.SetVariableValue("Start_Timer", "false");
        yield return new WaitForSeconds(0.5f);

        FailUI.SetActive(true);
        MainUI.SetActive(false);
        string count = variableManager?.GetVariableValue("PartTimeJob_Count");
        variableManager?.SetVariableValue("update_TestSceneUI_variable", "true");
        FailCount.text = count;
        if (count == "0")
        {
            RetryButton.interactable = false;
        }
        timer = 0;
    }
    IEnumerator InitializeAndCountdown()
    {
        // 처음 입장시 초기화 부분
        timer = countdownTime;
        moveRight = true;
        MainUI.SetActive(true);
        
        Vector2 newPosition = new Vector2(10, trigger.rectTransform.anchoredPosition.y);
        trigger.rectTransform.anchoredPosition = newPosition;

        string TriggerSpeed = variableManager?.GetVariableValue("PartTimeJob_Speed");

        float parsedSpeed;

        if (float.TryParse(TriggerSpeed, out parsedSpeed))
        {
            speed = parsedSpeed;
        }

        timerText.text = timer.ToString("F0");
        string PartTimeJob_Object = variableManager?.GetVariableValue("PartTimeJob_Object");
        Set_Active_Object(PartTimeJob_Object);
        // 0.5초 딜레이
        yield return StartCoroutine(DelayForSeconds(0.5f));

        variableManager?.SetVariableValue("Create_Object", "false");
        shouldStartCountdown = false;  // 코루틴이 끝난 후 플래그 리셋
    }
    IEnumerator DelayForSeconds(float time)
    {
        yield return new WaitForSeconds(time);
    }
    void SetStarOnOff(int PartTimeJob_Object)
    {
        for (int i = 0 ; i<5; i++)
        {
            if (i <PartTimeJob_Object)
            {
                Star[i].sprite = StarOn;
            }
            else
            {
                Star[i].sprite = StarOff;
            }
        }
    }
    void Set_Active_Object(string PartTimeJob_Object)
    {
        ResetObjects();

        if (PartTimeJob_Object == "1")
        {
            JobName.text = "용돈 받기";
            JobSubtitle.text = "두꺼운 봉투를 보고 기대하셨나요? 파란 종이가 나와도 실망하지 마세요. 은색 동전보다는 나을테니까요. 학생에게 노란 종이는 사치입니다!";
            JobIcon.sprite = JobIconList[0];
            JobReward.text = "200 코인";
            JobSuccessProbability.text = variableManager?.GetVariableValue("PartTimeJob_SuccessProbability01");
            if (JobSuccessProbability.text == "")
            {
                JobSuccessProbability.text = "-";
            }
            SetStarOnOff(1);
            SetRandomWidthAndPosition(range1, 110, 90);
        }
        else if (PartTimeJob_Object == "2")
        {
            JobName.text = "호텔 서빙";
            JobSubtitle.text = "누구나 할 수 있는 일이지만 그만큼 보수가 적습니다. 물론 일이 쉬운 건 아니지만요. 팔이 후들거리는 건 기분 탓만은 아닐 겁니다.";
            JobIcon.sprite = JobIconList[1];
            JobReward.text = "400 코인";
            JobSuccessProbability.text = variableManager?.GetVariableValue("PartTimeJob_SuccessProbability02");
            if (JobSuccessProbability.text == "")
            {
                JobSuccessProbability.text = "-";
            }
            SetStarOnOff(2);
            SetRandomWidthAndPosition(range2, 70, 50);
        }
        else if (PartTimeJob_Object == "3")
        {
            JobName.text = "인형탈 알바";
            JobSubtitle.text = "어릴 적 인형 탈 안에 사람이 있는지 궁금했다면, 이제 직접 알아볼 차례입니다. 비 오듯 흐르는 땀을 뒤로 한 채 아이들의 동심을 지켜주세요.";
            JobIcon.sprite = JobIconList[2];
            JobReward.text = "600 코인";
            JobSuccessProbability.text = variableManager?.GetVariableValue("PartTimeJob_SuccessProbability03");
            if (JobSuccessProbability.text == "")
            {
                JobSuccessProbability.text = "-";
            }
            SetStarOnOff(3);
            SetRandomWidthAndPosition(range1, 110, 90);
            SetRandomWidthAndPosition(range2, 70, 50, range1);
        }
        else if (PartTimeJob_Object == "4")
        {
            JobName.text = "택배 상하차";
            JobSubtitle.text = "단기간에 택배 상하차만큼 돈을 벌 수 있는 일은 없습니다. 병원비로 다 쓰지만 않는다면 말이죠. 도망치고 싶다면 지금입니다!";
            JobIcon.sprite = JobIconList[3];
            JobReward.text = "800 코인";
            JobSuccessProbability.text = variableManager?.GetVariableValue("PartTimeJob_SuccessProbability04");
            if (JobSuccessProbability.text == "")
            {
                JobSuccessProbability.text = "-";
            }
            SetStarOnOff(4);
            SetRandomWidthAndPosition(range2, 70, 50);
            SetRandomWidthAndPosition(range3, 30, 20, range2);
        }
        else if (PartTimeJob_Object == "5")
        {
            JobName.text = "거리 공연";
            JobSubtitle.text = "드라마 속 주인공의 낭만 넘치는 거리 공연 따위는 기대하지 마세요. 취객, 진상, 양아치들 사이에서 살아남을 자신이 있다면 지금 당장 거리로 나가세요!";
            JobIcon.sprite = JobIconList[4];
            JobReward.text = "1000 코인";
            JobSuccessProbability.text = variableManager?.GetVariableValue("PartTimeJob_SuccessProbability05");
            if (JobSuccessProbability.text == "")
            {
                JobSuccessProbability.text = "-";
            }
            SetStarOnOff(5);
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

        return (triggerX + 10 > targetX && triggerX < targetX + targetWidth);
    }
}
