using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.UI.ProceduralImage;
using Naninovel;
using Naninovel.Commands;

public class ExamUIManager : MonoBehaviour
{
    // 시험
    private int round = 0;
    private int CorrectAnswers = 0;
    private int score = 100;
    private List<int> numbers = new List<int>();
    public string[] QuestionTitleList;
    public string[] QuestionList;
    public string[] AnswerList;
    public GameObject[] AnswerGameObjectList;
    public GameObject[] AnswerAnimationList;
    public string[] CorrectAnswerList;
    public Text QuestionTitle;
    public Text Question;
    public Text[] Answer;
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
    private ICustomVariableManager variableManager;

    void Start()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
        // 1부터 5까지의 숫자를 리스트에 추가
        for (int i = 0; i < 5; i++)
        {
            numbers.Add(i);
        }
    }
    void Update()
    {
        if (test_start)
        {
            // 경과 시간을 업데이트
            timer += Time.deltaTime;
            RectTransform rectTran = gauge.GetComponent<RectTransform>();
            rectTran.SetSizeWithCurrentAnchors(RectTransform.Axis.Horizontal, (targetTime - timer) * 64);
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
        RoundUI.text = round.ToString();
        ScoreUI.text = score.ToString();
        CorrectNumberUI.text = CorrectAnswers.ToString();
    }
    public void nextExam()
    {
        if (round < 5)
        {
            // 시험 업데이트
            round = 1 + round;
            timer = 0f;
            for (int j = 0; j< 5;j++)
            {
                ProceduralImage answergameobject = AnswerGameObjectList[j].GetComponent<ProceduralImage>();
                answergameobject.color = Color.white;
                // AnswerAnimationList[i-1].SetActive(false);
            }
            // 시험 문제 출제
            QuestionTitle.text = QuestionTitleList[round-1].Replace("\\n", "\n");
            Question.text = QuestionList[round-1].Replace("\\n", "\n");
            RandomAnswer();
            // 단계 점수 정답 수

            test_start = true;
            selectAnswer = "";
        }
        updateExamUI();
    }

    public void RandomAnswer()
    {
        // Fisher-Yates 셔플 알고리즘을 사용하여 리스트를 섞음
        for (int i = numbers.Count - 1; i > 0; i--)
        {
            int j = Random.Range(0, i + 1);
            int temp = numbers[i];
            numbers[i] = numbers[j];
            numbers[j] = temp;
        }

        // 리스트에서 처음 5개의 숫자를 가져와 사용
        for (int i = 0; i < 5; i++)
        {
            Answer[i].text = AnswerList[numbers[i]+((round-1)*5)];
        }
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
                answergameobject.color = Color.black;
                // AnswerAnimationList[i-1].SetActive(true);
            }
            else
            {
                ProceduralImage answergameobject = AnswerGameObjectList[j].GetComponent<ProceduralImage>();
                answergameobject.color = Color.white;
                // AnswerAnimationList[i-1].SetActive(false);
            }
        }
    }
    public void CheckCollectExam()
    {
        if (selectAnswer == "")
        {
            // 아무것도 선택 안했을때 여기 들어옴
            return;
        }
        if(round == 1)
        {
            if (selectAnswer == CorrectAnswerList[round-1])
            {

                ResultSetActive("success");
            }
            else
            {
                ResultSetActive("fail");
            }
        }
        else if (round == 2)
        {
            if (selectAnswer == CorrectAnswerList[round-1])
            {

                ResultSetActive("success");
            }
            else
            {
                ResultSetActive("fail");
            }
        }
        else if (round == 3)
        {
            if (selectAnswer == CorrectAnswerList[round-1])
            {

                ResultSetActive("success");
            }
            else
            {
                ResultSetActive("fail");
            }
        }
        else if (round == 4)
        {
            if (selectAnswer == CorrectAnswerList[round-1])
            {

                ResultSetActive("success");
            }
            else
            {
                ResultSetActive("fail");
            }
        }
        else if (round == 5)
        {
            if (selectAnswer == CorrectAnswerList[round-1])
            {

                ResultSetActive("success");
            }
            else
            {
                ResultSetActive("fail");
            }
        }
    }
}
