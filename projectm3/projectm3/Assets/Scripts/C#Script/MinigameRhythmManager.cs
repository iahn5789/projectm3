﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.InputSystem;

public class MinigameRhythmManager : MonoBehaviour
{
    public GameObject Arrow; // note
    public GameObject ArrowParent;
    public Sprite[] ArrowImage;
    private List<GameObject> arrows = new List<GameObject>(); // 생성된 노트를 추적하는 리스트
    public GameObject PerfectArea;
    public GameObject GoodArea;
    public GameObject BadArea;
    public int Score = 0;

    // Update is called once per frame
    void Update()
    {
        
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
            CreateArrow();
        }
    }
    void CreateArrow()
    {
        if (Arrow != null && ArrowParent != null && ArrowImage.Length > 0)
        {
            Vector3 newPosition = ArrowParent.transform.position + Vector3.right * 100;
            GameObject newArrow = Instantiate(Arrow, newPosition, Quaternion.identity, ArrowParent.transform);
            Image arrowImage = newArrow.GetComponent<Image>();
            MinigameRhythmArrowManager arrowScript = newArrow.GetComponent<MinigameRhythmArrowManager>();

            if (arrowImage != null && arrowScript != null)
            {
                int index = Random.Range(0, ArrowImage.Length);
                arrowImage.sprite = ArrowImage[index];

                 // NoteDirection 값을 설정하기 위해 열거형의 모든 값을 가져옴
                NoteDirection[] directions = (NoteDirection[]) System.Enum.GetValues(typeof(NoteDirection));

                // 이미지 인덱스에 해당하는 방향을 설정 (방향 배열의 길이를 넘지 않도록 조건을 체크)
                if(index < directions.Length)
                {
                    NoteDirection selectedDirection = directions[index];
                    arrowScript.direction = selectedDirection;
                }
            }
            arrows.Add(newArrow); // 생성된 노트를 리스트에 추가
        }
    }

    // 예제를 위해 추가: 사용자 입력에 따른 노트 판정 시뮬레이션
    public void JudgeNoteOnKeyPress(NoteDirection direction)
    {
        if (arrows.Count > 0)
        {
            GameObject lastArrow = arrows[arrows.Count - 1]; // 가장 최근에 생성된 노트 가져오기
            MinigameRhythmArrowManager arrowManager = lastArrow.GetComponent<MinigameRhythmArrowManager>();
            if (arrowManager != null)
            {
                string Judgement = "";
                Debug.Log("arrowManager.direction : " + arrowManager.direction);
                Debug.Log("direction : " + direction);
                if (arrowManager.direction == direction)
                {
                    Judgement = arrowManager.GetJudgement();
                    AddJudgement(Judgement);
                }
                else
                {
                    Judgement = "Bad";
                }
                Debug.Log("JudgeNoteOnKeyPress 판정 : "+ Judgement);
                arrowManager.JudgeAndDestroyNote(); // 노트 판정 및 처리
                arrows.RemoveAt(arrows.Count - 1); // 처리된 노트는 리스트에서 제거
            }
        }
    }
    private void AddJudgement(string Judgement)
    {
        if (Judgement == "Perfect")
        {
            Score += 3;
        }
        else if (Judgement == "Good")
        {
            Score += 2;
        }
        else if (Judgement == "Bad")
        {
            Score += 1;
        }
        else
        {
            // Miss

        }
    }

}
