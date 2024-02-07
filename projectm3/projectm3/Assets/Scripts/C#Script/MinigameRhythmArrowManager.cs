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
        if (transform.localPosition.x <= -2220)
        {
            Destroy(gameObject);
            currentJudgement = "Miss";
        }
    }
    void OnTriggerEnter2D(Collider2D other)
    {
        // 판정 영역에 들어왔을 때 판정 결과 설정
        if (other.CompareTag("PerfectArea"))
        {
            Debug.Log("OnTriggerEnter2D PerfectArea : Perfect");
            currentJudgement = "Perfect";
        }
        else if (other.CompareTag("GoodArea"))
        {
            Debug.Log("OnTriggerEnter2D GoodArea : Good");
            currentJudgement = "Good";
        }
        else if (other.CompareTag("BadArea"))
        {
            Debug.Log("OnTriggerEnter2D BadArea : Bad");
            currentJudgement = "Bad";
        }
    }
    // 외부에서 판정 결과를 가져올 수 있는 메서드
    public string GetJudgement()
    {
        return currentJudgement;
    }

    // 판정 후 노트 처리를 위한 메서드
    public void JudgeAndDestroyNote()
    {
        if (!string.IsNullOrEmpty(currentJudgement))
        {
            Debug.Log(currentJudgement);
            // 여기에 점수 처리나 시각적/음향적 피드백 로직 추가 가능
        }
        Destroy(gameObject); // 판정 후 노트 파괴
    }
}
