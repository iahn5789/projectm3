using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.UI.ProceduralImage;
using Naninovel;
using Naninovel.Commands;
using EasyTransition;

public class ExamUIManager : MonoBehaviour
{
    // 시험
    private int round = 0;
    private int CorrectAnswers = 0;
    private int score = 100;
    private List<int> numbers = new List<int>();
    private Dictionary<string, string> KQuestionTitleList;
    private Dictionary<string, string> JQuestionTitleList;
    private Dictionary<string, string> SQuestionTitleList;
    private Dictionary<string, string> KQuestionList;
    private Dictionary<string, string> JQuestionList;
    private Dictionary<string, string> SQuestionList;
    private Dictionary<string, string> KAnswerList;
    private Dictionary<string, string> JAnswerList;
    private Dictionary<string, string> SAnswerList;
    private Dictionary<string, string> KCorrectAnswerList;
    private Dictionary<string, string> JCorrectAnswerList;
    private Dictionary<string, string> SCorrectAnswerList;
    public GameObject[] AnswerGameObjectList;
    public GameObject[] AnswerAnimationList;
    public Text QuestionTitle;
    public Text Question;
    public Text[] Answer;
    public Text[] AnswerNumber;
    public string selectAnswer;
    // 타이머
    private float timer = 0f;
    private float targetTime = 30f; // 30초 타이머 설정
    private bool test_start = true;
    public Text timeText;
    public GameObject gauge;
    public GameObject SuccessResult;
    public GameObject FailResult;
    public GameObject TimeOutResult;
    // UI
    public Text RoundUI;
    public Text ScoreUI;
    public Text CorrectNumberUI;
    public GameObject TestResultUI;
    public GameObject QuestionUI;
    public TestResultUIManager testResultUIManager;
    public DemoLoadScene demoLoadScene;
    private ICustomVariableManager variableManager;
    public Animator Answeranimator; // answer 애니메이터 컴포넌트
    public AudioSource audioSource;

    void Start()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
        // 1부터 5까지의 숫자를 리스트에 추가
        for (int i = 0; i < 5; i++)
        {
            numbers.Add(i);
        }
        // 문제 타이틀 숫자는 : (주차, 라운드 - 1)
        // Kang(50개)
        KQuestionTitleList = new Dictionary<string, string>();
        KQuestionTitleList.Add("00", "다음 보기에 공통점이 있는 인물을 고르시오.");
        KQuestionTitleList.Add("01", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        KQuestionTitleList.Add("02", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        KQuestionTitleList.Add("03", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");
        KQuestionTitleList.Add("04", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");

        // Jin(50개)
        JQuestionTitleList = new Dictionary<string, string>();
        JQuestionTitleList.Add("00", "다음 보기에 공통점이 있는 인물을 고르시오.");
        JQuestionTitleList.Add("01", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        JQuestionTitleList.Add("02", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        JQuestionTitleList.Add("03", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");
        JQuestionTitleList.Add("04", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");

        // Sul(50개)
        SQuestionTitleList = new Dictionary<string, string>();
        SQuestionTitleList.Add("00", "다음 보기에 공통점이 있는 인물을 고르시오.");
        SQuestionTitleList.Add("01", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        SQuestionTitleList.Add("02", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        SQuestionTitleList.Add("03", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");
        SQuestionTitleList.Add("04", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");

        // 문제 숫자는 : (주차, 라운드 - 1)
        // Kang(50개)
        KQuestionList = new Dictionary<string, string>();
        KQuestionList.Add("00", "분홍색\n단발머리\n베이스기타");
        KQuestionList.Add("01", "친구 전대용의 동아리 이름은?");
        KQuestionList.Add("02", "동아리에 내 이름을 등록했다.\n분명 여진이가 동아리실 위치를 알려줬었는데.. \n음.. 어디...였더라...?");
        KQuestionList.Add("03", "OO을 맡길 생각이야!\n아마 맡겨놓으면 제대로 할 수 있을거야!");
        KQuestionList.Add("04", "이렇게 예쁜 여자애가 내손을 잡았어…\n따뜻하고…OOO?");

        // Jin(50개)
        JQuestionList = new Dictionary<string, string>();
        JQuestionList.Add("00", "분홍색\n단발머리\n베이스기타");
        JQuestionList.Add("01", "친구 전대용의 동아리 이름은?");
        JQuestionList.Add("02", "동아리에 내 이름을 등록했다.\n분명 여진이가 동아리실 위치를 알려줬었는데.. \n음.. 어디...였더라...?");
        JQuestionList.Add("03", "OO을 맡길 생각이야!\n아마 맡겨놓으면 제대로 할 수 있을거야!");
        JQuestionList.Add("04", "이렇게 예쁜 여자애가 내손을 잡았어…\n따뜻하고…OOO?");

        // Sul(50개)
        SQuestionList = new Dictionary<string, string>();
        SQuestionList.Add("00", "분홍색\n단발머리\n베이스기타");
        SQuestionList.Add("01", "친구 전대용의 동아리 이름은?");
        SQuestionList.Add("02", "동아리에 내 이름을 등록했다.\n분명 여진이가 동아리실 위치를 알려줬었는데.. \n음.. 어디...였더라...?");
        SQuestionList.Add("03", "OO을 맡길 생각이야!\n아마 맡겨놓으면 제대로 할 수 있을거야!");
        SQuestionList.Add("04", "이렇게 예쁜 여자애가 내손을 잡았어…\n따뜻하고…OOO?");
        
        // 정답 항목 숫자는 : (주차, 라운드 - 1, 답 번호 -1)
        // Kang(250개)
        KAnswerList = new Dictionary<string, string>();
        KAnswerList.Add("000", "강여진");
        KAnswerList.Add("001", "진다영");
        KAnswerList.Add("002", "설나희");
        KAnswerList.Add("003", "전대용");
        KAnswerList.Add("004", "한갑수");
        KAnswerList.Add("010", "도서부");
        KAnswerList.Add("011", "프라모델부");
        KAnswerList.Add("012", "서예부");
        KAnswerList.Add("013", "과학서예부");
        KAnswerList.Add("014", "테니스부");
        KAnswerList.Add("020", "3층 과학실 옆");
        KAnswerList.Add("021", "4층 과학실 옆");
        KAnswerList.Add("022", "4층 음악실 옆");
        KAnswerList.Add("023", "2층 강당 옆");
        KAnswerList.Add("024", "3층 교무실 옆");
        KAnswerList.Add("030", "플룻");
        KAnswerList.Add("031", "호른");
        KAnswerList.Add("032", "심벌");
        KAnswerList.Add("033", "보컬");
        KAnswerList.Add("034", "드럼");
        KAnswerList.Add("040", "말랑해");
        KAnswerList.Add("041", "건조해");
        KAnswerList.Add("042", "촉촉해");
        KAnswerList.Add("043", "끈적해");
        KAnswerList.Add("044", "거칠어");

        // Jin(250개)
        JAnswerList = new Dictionary<string, string>();
        JAnswerList.Add("000", "강여진");
        JAnswerList.Add("001", "진다영");
        JAnswerList.Add("002", "설나희");
        JAnswerList.Add("003", "전대용");
        JAnswerList.Add("004", "한갑수");
        JAnswerList.Add("010", "도서부");
        JAnswerList.Add("011", "프라모델부");
        JAnswerList.Add("012", "서예부");
        JAnswerList.Add("013", "과학서예부");
        JAnswerList.Add("014", "테니스부");
        JAnswerList.Add("020", "3층 과학실 옆");
        JAnswerList.Add("021", "4층 과학실 옆");
        JAnswerList.Add("022", "4층 음악실 옆");
        JAnswerList.Add("023", "2층 강당 옆");
        JAnswerList.Add("024", "3층 교무실 옆");
        JAnswerList.Add("030", "플룻");
        JAnswerList.Add("031", "호른");
        JAnswerList.Add("032", "심벌");
        JAnswerList.Add("033", "보컬");
        JAnswerList.Add("034", "드럼");
        JAnswerList.Add("040", "말랑해");
        JAnswerList.Add("041", "건조해");
        JAnswerList.Add("042", "촉촉해");
        JAnswerList.Add("043", "끈적해");
        JAnswerList.Add("044", "거칠어");

        // Sul(250개)
        SAnswerList = new Dictionary<string, string>();
        SAnswerList.Add("000", "강여진");
        SAnswerList.Add("001", "진다영");
        SAnswerList.Add("002", "설나희");
        SAnswerList.Add("003", "전대용");
        SAnswerList.Add("004", "한갑수");
        SAnswerList.Add("010", "도서부");
        SAnswerList.Add("011", "프라모델부");
        SAnswerList.Add("012", "서예부");
        SAnswerList.Add("013", "과학서예부");
        SAnswerList.Add("014", "테니스부");
        SAnswerList.Add("020", "3층 과학실 옆");
        SAnswerList.Add("021", "4층 과학실 옆");
        SAnswerList.Add("022", "4층 음악실 옆");
        SAnswerList.Add("023", "2층 강당 옆");
        SAnswerList.Add("024", "3층 교무실 옆");
        SAnswerList.Add("030", "플룻");
        SAnswerList.Add("031", "호른");
        SAnswerList.Add("032", "심벌");
        SAnswerList.Add("033", "보컬");
        SAnswerList.Add("034", "드럼");
        SAnswerList.Add("040", "말랑해");
        SAnswerList.Add("041", "건조해");
        SAnswerList.Add("042", "촉촉해");
        SAnswerList.Add("043", "끈적해");
        SAnswerList.Add("044", "거칠어");
        
        // 정답 숫자는 : (주차, 라운드 - 1)
        // Kang(50개)
        KCorrectAnswerList = new Dictionary<string, string>();
        KCorrectAnswerList.Add("00", "진다영");
        KCorrectAnswerList.Add("01", "과학서예부");
        KCorrectAnswerList.Add("02", "4층 과학실 옆");
        KCorrectAnswerList.Add("03", "보컬");
        KCorrectAnswerList.Add("04", "거칠어");

        // Jin(50개)
        JCorrectAnswerList = new Dictionary<string, string>();
        JCorrectAnswerList.Add("00", "진다영");
        JCorrectAnswerList.Add("01", "과학서예부");
        JCorrectAnswerList.Add("02", "4층 과학실 옆");
        JCorrectAnswerList.Add("03", "보컬");
        JCorrectAnswerList.Add("04", "거칠어");

        // Sul(50개)
        SCorrectAnswerList = new Dictionary<string, string>();
        SCorrectAnswerList.Add("00", "진다영");
        SCorrectAnswerList.Add("01", "과학서예부");
        SCorrectAnswerList.Add("02", "4층 과학실 옆");
        SCorrectAnswerList.Add("03", "보컬");
        SCorrectAnswerList.Add("04", "거칠어");
    }
    void Update()
    {
        if (test_start)
        {
            // 경과 시간을 업데이트
            timer += Time.deltaTime;
            RectTransform rectTran = gauge.GetComponent<RectTransform>();
            rectTran.SetSizeWithCurrentAnchors(RectTransform.Axis.Horizontal, (targetTime - timer) * 60);
            timeText.text = (Mathf.CeilToInt(targetTime - timer)).ToString();
            // 30초 경과
            if (timer >= targetTime)
            {
                ResultSetActive("timeout");
            }
        }
    }
    public void newTest()
    {
        round = 0;
        CorrectAnswers = 0;
        score = 100;
        nextExam();
    }

    public void ResultSetActive(string type)
    {
        test_start = false;
        SuccessResult.SetActive(false);
        FailResult.SetActive(false);
        TimeOutResult.SetActive(false);
        if (type == "timeout")
        {
            TimeOutResult.SetActive(true);
            score -= 20;
            StartCoroutine(DeactivateAfterDelay(2f,TimeOutResult));
        }
        else if (type == "success")
        {
            SuccessResult.SetActive(true);
            CorrectAnswers += 1;
            StartCoroutine(DeactivateAfterDelay(2f, SuccessResult));
        }
        else if (type == "fail")
        {
            FailResult.SetActive(true);
            score -= 20;
            StartCoroutine(DeactivateAfterDelay(2f,FailResult));
        }
    }
    IEnumerator DeactivateAfterDelay(float delay, GameObject target)
    {
        yield return new WaitForSeconds(delay);
        target.SetActive(false);
        nextExam();
    }
    public void updateExamUI()
    {
        if (round !=5)
        {
            RoundUI.text = (round+1).ToString();
        }
        else
        {
            RoundUI.text = "5";
        }
        ScoreUI.text = score.ToString();
        CorrectNumberUI.text = CorrectAnswers.ToString();

    }
    public void SetVariableUI()
    {
        if (round !=5)
        {
            Answeranimator.SetTrigger("QuestionIn");
        }
        variableManager?.SetVariableValue("TestScore", ScoreUI.text);
        variableManager?.SetVariableValue("TestCorrect", CorrectNumberUI.text);
    }
    public void nextExam()
    {
        string name = variableManager?.GetVariableValue("Selected");
        int Week = Int32.Parse(variableManager?.GetVariableValue($"{name}Week"));
        updateExamUI();
        SetVariableUI();
        if (round < 5)
        {
            // 시험 업데이트
            timer = 0f;
            for (int j = 0; j< 5;j++)
            {
                ProceduralImage answergameobject = AnswerGameObjectList[j].GetComponent<ProceduralImage>();
                answergameobject.color = Color.white;
                AnswerAnimationList[j].SetActive(false);
                Answer[j].color = new Color(0.2666667f, 0.2666667f, 0.2666667f);
                AnswerNumber[j].color = new Color(0.2666667f, 0.2666667f, 0.2666667f);
            }
            // 시험 문제 출제
            QuestionTitle.text = SetQuestionTilte(name, Week);
            Question.text = SetQuestion(name, Week);
            RandomAnswer(name,Week);
            // 단계 점수 정답 수

            test_start = true;
            selectAnswer = "";
            round = 1 + round;
        }
        else
        {
            testResultUIManager.SetUI();
            StartCoroutine(WaitAndActivateUI());
        }
    }
    private string SetQuestionTilte(string name, int Week)
    {
        string key = (Week - 1).ToString() + round.ToString();
        string questionTitle;
        if (name == "Kang")
        {
            if (KQuestionTitleList.TryGetValue(key, out questionTitle))
            {
                return questionTitle.Replace("\\n", "\n");
            }
        }
        if (name == "Jin")
        {
            if (JQuestionTitleList.TryGetValue(key, out questionTitle))
            {
                return questionTitle.Replace("\\n", "\n");
            }
        }
        if (name == "Sul")
        {
            if (SQuestionTitleList.TryGetValue(key, out questionTitle))
            {
                return questionTitle.Replace("\\n", "\n");
            }
        }
        return "Error";
    }
    private string SetQuestion(string name, int Week)
    {
        string key = (Week - 1).ToString() + round.ToString();
        string question;
        if (name == "Kang")
        {
            if (KQuestionList.TryGetValue(key, out question))
            {
                return question.Replace("\\n", "\n");
            }
        }
        if (name == "Jin")
        {
            if (JQuestionList.TryGetValue(key, out question))
            {
                return question.Replace("\\n", "\n");
            }
        }
        if (name == "Sul")
        {
            if (SQuestionList.TryGetValue(key, out question))
            {
                return question.Replace("\\n", "\n");
            }
        }
        return "Error";
    }
    public void RandomAnswer(string name, int Week)
    {
        string key = (Week - 1).ToString() + round.ToString();
        string _Answer;
        // Fisher-Yates 셔플 알고리즘을 사용하여 리스트를 섞음
        for (int i = numbers.Count - 1; i > 0; i--)
        {
            int j = UnityEngine.Random.Range(0, i + 1); // UnityEngine.Random 명시
            int temp = numbers[i];
            numbers[i] = numbers[j];
            numbers[j] = temp;
        }
        if (name == "Kang")
        {
            for (int i = 0; i < 5; i++)
            {
                if (KAnswerList.TryGetValue(key + numbers[i].ToString(), out _Answer))
                {
                    Answer[i].text = _Answer;
                }
            }
        }
        else if (name == "Jin")
        {
            for (int i = 0; i < 5; i++)
            {
                if (JAnswerList.TryGetValue(key + numbers[i].ToString(), out _Answer))
                {
                    Answer[i].text = _Answer;
                }
            }
        }
        else if (name == "Sul")
        {
            for (int i = 0; i < 5; i++)
            {
                if (SAnswerList.TryGetValue(key + numbers[i].ToString(), out _Answer))
                {
                    Answer[i].text = _Answer;
                }
            }
        }
        // 리스트에서 처음 5개의 숫자를 가져와 사용
    }
    private IEnumerator WaitAndActivateUI()
    {
        demoLoadScene.LoadScene("projectm3");
    
        // 0.3초 기다림
        yield return new WaitForSeconds(2f);
    
        TestResultUI.SetActive(true);
        QuestionUI.SetActive(false);
    }
    public void CheckSecretMessage(int i)
    {
        string buyCheck = variableManager?.GetVariableValue($"SecretMessage{i}");
        if (buyCheck == "true")
        {
            // 샀을때 animation이 on 되거나 setactive가 on
        }
    }
    public void SelectedAnswerText(Text selectText)
    {
        selectAnswer = selectText.text;
    }
    // 정답 선택시 애니메이션 및 색 변경?
    public void OnSelectedAnswer(int i)
    {
        for (int j = 0; j< 5;j++)
        {
            if (j == i)
            {
                ProceduralImage answergameobject = AnswerGameObjectList[j].GetComponent<ProceduralImage>();
                answergameobject.color = new Color(0.3137f, 0.5176f, 0.9804f);
                AnswerAnimationList[j].SetActive(true);
                Answer[j].color = Color.white;
                AnswerNumber[j].color = Color.white;
            }
            else
            {
                ProceduralImage answergameobject = AnswerGameObjectList[j].GetComponent<ProceduralImage>();
                answergameobject.color = Color.white;
                AnswerAnimationList[j].SetActive(false);
                Answer[j].color = new Color(0.2666667f, 0.2666667f, 0.2666667f);
                AnswerNumber[j].color = new Color(0.2666667f, 0.2666667f, 0.2666667f);
            }
        }
    }
    public void CheckCollectExam()
    {
        string name = variableManager?.GetVariableValue("Selected");
        int Week = Int32.Parse(variableManager?.GetVariableValue($"{name}Week"));
        string key = (Week - 1).ToString() + (round - 1).ToString();
        string CorrectAnswer;
        if (selectAnswer == "")
        {
            // 아무것도 선택 안했을때 여기 들어옴
            return;
        }

        if (name == "Kang")
        {
            if (KCorrectAnswerList.TryGetValue(key, out CorrectAnswer))
            {
                if (selectAnswer == CorrectAnswer)
                {
                    AppendTestCorrectResult((int)Math.Pow(2, round - 1));
                    ResultSetActive("success");
                }
                else
                {
                    ResultSetActive("fail");
                }
            }
        }
        else if(name == "Jin")
        {
            if (JCorrectAnswerList.TryGetValue(key, out CorrectAnswer))
            {
                if (selectAnswer == CorrectAnswer)
                {
                    AppendTestCorrectResult((int)Math.Pow(2, round - 1));
                    ResultSetActive("success");
                }
                else
                {
                    ResultSetActive("fail");
                }
            }
        }
        else if(name == "Sul")
        {
            if (SCorrectAnswerList.TryGetValue(key, out CorrectAnswer))
            {
                if (selectAnswer == CorrectAnswer)
                {
                    AppendTestCorrectResult((int)Math.Pow(2, round - 1));
                    ResultSetActive("success");
                }
                else
                {
                    ResultSetActive("fail");
                }
            }
        }
    }
    public void AppendTestCorrectResult(int Add)
    {
        int TestCorrectResult = Int32.Parse(variableManager?.GetVariableValue("TestCorrectResult"));
        variableManager?.SetVariableValue("TestCorrectResult", (Add+TestCorrectResult).ToString());

    }
    public void FadeInAudio()
    {
        if (audioSource != null)
        {
            StartCoroutine(FadeAudioSource.StartFadeIn(audioSource,2f,1f));
        }
        else
        {
            Debug.Log("없어");
        }
    }
    public void FadeOutAudio()
    {
        if (audioSource != null)
        {
            StartCoroutine(FadeAudioSource.StartFadeOut(audioSource,0.5f,0f));
        }
        else
        {
            Debug.Log("없어");
        }
    }
}
