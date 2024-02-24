﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.InputSystem;
using Naninovel;
using Naninovel.Commands;

public class MinigameRhythmManager : MonoBehaviour
{
    public Animator PatternLainAnim;
    public Animator ScoreAnim;
    public GameObject Arrow; // note
    public GameObject ArrowParent;
    public Sprite[] ArrowImage; // Up, Down, Left, Right
    public List<GameObject> arrows = new List<GameObject>(); // 생성된 노트를 추적하는 리스트
    public int Score = 0;
    public Text ScoreText;
    public int Combo = 0;
    public Text ComboText;
    public GameObject[] JudgementTextList;
    public GameObject endGamePopup;
    public float bpm = 130f;
    private float spawnInterval;
    private string notePattern;
    public TextAsset notePatternText; // 음악!
    private Coroutine nodeCoroutine;
    public Text ResultCoinText;
    private ICustomVariableManager variableManager;

    void Start()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
        // 32분음표 간격 계산 (60초 / BPM / 8)
        // spawnInterval = (60f / bpm) / 3f;
        spawnInterval = 0.1538461538461538f;
    }
    public void StartGame()
    {
        nodeCoroutine = StartCoroutine(SpawnNotes());
    }
    IEnumerator SpawnNotes()
    {
        // 코루틴 시작 시간을 기록합니다.
        float startTime = Time.time;

        // 텍스트 파일 로드
        notePattern = notePatternText.text.Replace("\n", "").Replace("\r", "").Replace(" ", "");

        int noteCount = 0; // 생성된 노트의 수를 추적합니다.

        foreach (char note in notePattern)
        {
            // 다음 노트를 생성할 예정 시간을 계산합니다.
            float nextNoteTime = startTime + (noteCount * spawnInterval);

            // 현재 시간이 다음 노트 생성 시간보다 작을 동안 대기합니다.
            while (Time.time < nextNoteTime)
            {
                yield return null; // 다음 프레임까지 대기합니다.
            }

            if (note != '0') // '0'이 아닌 경우에만 노트 생성
            {
                int noteIndex = note - '0' - 1; // 문자를 숫자로 변환하고, 배열 인덱스에 맞춤
                CreateArrow(noteIndex);
            }
            noteCount++; // 노트 수를 증가시킵니다.
        }
        yield return new WaitForSeconds(3);
        
        EndGame();
    }
    public void EndGamePopup()
    {
        if(endGamePopup != null)
        {
            endGamePopup.SetActive(true);
        }
    }
    public void EndGame()
    {
        if (Score >= 1000)
        {
            SetMoney(3000);
        }
        else if (Score >= 500)
        {
            SetMoney(2500);
        }
        else if (Score >= 100)
        {
            SetMoney(2000);
        }
        else
        {
            SetMoney(1500);
        }
        EndGamePopup();
    }
    void OnEnable()
    {
        MinigameRhythmArrowManager.OnArrowDestroyed += HandleArrowDestroyed;
    }

    void OnDisable()
    {
        MinigameRhythmArrowManager.OnArrowDestroyed -= HandleArrowDestroyed;
    }

    public void StopNodeMake()
    {
        StopCoroutine(nodeCoroutine);
    }
    private void HandleArrowDestroyed(GameObject arrow)
    {
        if (arrows.Contains(arrow))
        {
            var arrowManager = arrow.GetComponent<MinigameRhythmArrowManager>();
            if (arrowManager != null)
            {
                JudgementUpdate(arrowManager.GetJudgement());
                ScoreUpdate();
                arrows.Remove(arrow);
                Destroy(arrow);
            }
        }
        // else
        // {
        //     Debug.LogError("Tried to remove an arrow that doesn't exist in the list.");
        // }
    }

    public void UpButton(InputAction.CallbackContext context)
    {
        if (context.phase == InputActionPhase.Performed)
        {
            JudgeNoteOnKeyPress(NoteDirection.Up);
        }
    }
    public void DownButton(InputAction.CallbackContext context)
    {
        if (context.phase == InputActionPhase.Performed) // 버튼이 눌렸을 때
        {
            JudgeNoteOnKeyPress(NoteDirection.Down);
        }
    }
    public void LeftButton(InputAction.CallbackContext context)
    {
        if (context.phase == InputActionPhase.Performed) // 버튼이 눌렸을 때
        {
            JudgeNoteOnKeyPress(NoteDirection.Left);
        }
    }
    public void RightButton(InputAction.CallbackContext context)
    {
        if (context.phase == InputActionPhase.Performed) // 버튼이 눌렸을 때
        {
            JudgeNoteOnKeyPress(NoteDirection.Right);
        }
    }
    public void SpaceButton(InputAction.CallbackContext context)
    {
        if (context.phase == InputActionPhase.Performed) // 버튼이 눌렸을 때
        {
            CreateArrow(1);
        }
    }
    void CreateArrow(int Pattern)
    {
        if (Arrow != null && ArrowParent != null && ArrowImage.Length > 0)
        {
            Vector3 newPosition = ArrowParent.transform.position + Vector3.right * 100;
            GameObject newArrow = Instantiate(Arrow, newPosition, Quaternion.identity, ArrowParent.transform);
            Image arrowImage = newArrow.GetComponent<Image>();
            MinigameRhythmArrowManager arrowScript = newArrow.GetComponent<MinigameRhythmArrowManager>();

            if (arrowImage != null && arrowScript != null)
            {
                arrowImage.sprite = ArrowImage[Pattern];

                 // NoteDirection 값을 설정하기 위해 열거형의 모든 값을 가져옴
                NoteDirection[] directions = (NoteDirection[]) System.Enum.GetValues(typeof(NoteDirection));

                // 이미지 인덱스에 해당하는 방향을 설정 (방향 배열의 길이를 넘지 않도록 조건을 체크)
                if(Pattern < directions.Length)
                {
                    NoteDirection selectedDirection = directions[Pattern];
                    arrowScript.direction = selectedDirection;
                }
            }
            arrows.Add(newArrow); // 생성된 노트를 리스트에 추가
        }
    }

    // 예제를 위해 추가: 사용자 입력에 따른 노트 판정 시뮬레이션
    public void JudgeNoteOnKeyPress(NoteDirection direction)
    {
        PatternLainAnim.Play("MR_Zone", -1, 0f);
        // PatternLainAnim.Play("MR_Zone");
        if (arrows.Count > 0)
        {
            // Debug.Log("arrows.Count : "+arrows.Count);
            GameObject lastArrow = arrows[0]; // 가장 최근에 생성된 노트 가져오기
            MinigameRhythmArrowManager arrowManager = lastArrow.GetComponent<MinigameRhythmArrowManager>();
            string Judgement = "";
            Judgement = arrowManager.GetJudgement();
            if (arrowManager != null && Judgement != "" && arrows.Count > 0)
            {
                // Debug.Log("arrowManager.direction : " + arrowManager.direction);
                // Debug.Log("direction : " + direction);
                if (arrowManager.direction == direction)
                {
                    AddJudgement(Judgement);
                }
                else
                {
                    AddJudgement("Miss");
                    arrowManager.SetJudgement("Miss");
                }
                // Debug.Log("JudgeNoteOnKeyPress 판정 : "+ Judgement);
                arrowManager.JudgeAndDestroyNote(); // 노트 판정 및 처리
            }
        }
    }
    private void AddJudgement(string Judgement)
    {
        if (Judgement == "Perfect")
        {
            ScoreAnim.Play("MR_Score", -1, 0f);
            Score += 3;
        }
        else if (Judgement == "Good")
        {
            ScoreAnim.Play("MR_Score", -1, 0f);
            Score += 2;
        }
        else if (Judgement == "Bad")
        {
            ScoreAnim.Play("MR_Score", -1, 0f);
            Score += 1;
        }
        else
        {
            // Miss
        }
    }
    public void JudgementUpdate(string Judgement)
    {
        // 모든 판정 텍스트를 먼저 비활성화
        foreach (GameObject text in JudgementTextList)
        {
            text.SetActive(false);
        }

        // 판정에 따라 해당하는 텍스트만 활성화
        switch (Judgement)
        {
            case "Perfect":
                JudgementTextList[0].SetActive(true);
                ComboPuls();
                break;
            case "Good":
                JudgementTextList[1].SetActive(true);
                ComboPuls();
                break;
            case "Bad":
                JudgementTextList[2].SetActive(true);
                ComboPuls();
                break;
            default: // "Miss"와 그 외의 경우
                JudgementTextList[3].SetActive(true);
                ComboReset();
                break;
        }

    }
    public void ComboReset()
    {
        Combo = 0;
        ComboTextUpdate();
    }
    public void ComboPuls()
    {
        Combo += 1;
        ComboTextUpdate();
    }

    public void ComboTextUpdate()
    {
        ComboText.text = Combo.ToString();
    }
    public void ScoreUpdate()
    {
        ScoreText.text = Score.ToString();
    }

    public void SetMoney(int money)
    {
        AddMoney(money); // 스킵시 보상 1500
        ResultCoinText.text = $"{money}개";
        EndGamePopup();
    }
    public void AddMoney(int addmoney)
    {
        int money = int.Parse(variableManager?.GetVariableValue("money"));
        money += addmoney;
        variableManager?.SetVariableValue("money", money.ToString());
    }

}
