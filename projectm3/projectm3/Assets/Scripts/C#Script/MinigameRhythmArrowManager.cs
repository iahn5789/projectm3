using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public enum NoteDirection
{
    Up,
    Down,
    Left,
    Right
}
public class MinigameRhythmArrowManager : MonoBehaviour
{
    public static event Action<GameObject> OnArrowDestroyed;
    public float noteSpeed = 800;
    public NoteDirection direction;
    private GameObject PerfectArea;
    private GameObject GoodArea;
    private GameObject BadArea;
    // 판정 결과를 저장하는 변수
    private string currentJudgement = "";
    void Start()
    {
        BadArea = GameObject.FindWithTag("BadArea");
        GoodArea = GameObject.FindWithTag("GoodArea");
        PerfectArea = GameObject.FindWithTag("PerfectArea");
    }
    void Update()
    {
        transform.localPosition -= Vector3.right * noteSpeed * Time.deltaTime;
    }
    void OnTriggerEnter2D(Collider2D other)
    {
        // 판정 영역에 들어왔을 때 판정 결과 설정
        // 판정 범위 수정 및 판정 시작 부분도 수정
        if (other.CompareTag("MissArea"))
        {
            // Debug.Log("OnTriggerEnter2D MissArea : Miss");
            currentJudgement = "Miss";
        }
        else if (other.CompareTag("BadArea"))
        {
            // Debug.Log("OnTriggerEnter2D BadArea : Bad");
            currentJudgement = "Bad";
        }
        else if (other.CompareTag("GoodArea"))
        {
            // Debug.Log("OnTriggerEnter2D GoodArea : Good");
            currentJudgement = "Good";
        }
        else if (other.CompareTag("PerfectArea"))
        {
            // Debug.Log("OnTriggerEnter2D PerfectArea : Perfect");
            currentJudgement = "Perfect";
        }
    }
    void OnTriggerExit2D(Collider2D other)
    {
        // 판정 영역에 나갔을 때 판정 결과 설정
        // 판정 범위 수정 및 판정 시작 부분도 수정
        if (other.CompareTag("PerfectArea"))
        {
            // Debug.Log("OnTriggerExit2D PerfectArea : Good");
            currentJudgement = "Good";
        }
        else if (other.CompareTag("GoodArea"))
        {
            // Debug.Log("OnTriggerExit2D GoodArea : Bad");
            currentJudgement = "Bad";
        }
        else if (other.CompareTag("BadArea"))
        {
            // Debug.Log("OnTriggerExit2D BadArea : Miss");
            currentJudgement = "Miss";
        }
        else if (other.CompareTag("MissArea"))
        {
            // Debug.Log("OnTriggerExit2D MissArea : Miss");
            currentJudgement = "Miss";
            OnArrowDestroyed?.Invoke(gameObject);
        }
    }
    // 외부에서 판정 결과를 가져올 수 있는 메서드
    public string GetJudgement()
    {
        return currentJudgement;
    }
    public void SetJudgement(string Judgement)
    {
        currentJudgement = Judgement;
    }

    // 판정 후 노트 처리를 위한 메서드
    public void JudgeAndDestroyNote()
    {
        OnArrowDestroyed?.Invoke(gameObject);
        // Destroy(gameObject); // 판정 후 노트 파괴
    }
}
