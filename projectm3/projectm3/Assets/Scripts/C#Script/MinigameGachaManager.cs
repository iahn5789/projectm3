using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MinigameGachaManager : MonoBehaviour
{
    public int numberOfDisks = 4; // 원반의 수
    public Text ClearCountText;
    public Text CountText;
    public Text StageText;
    private int ClearCount;
    private int Count;
    public GameObject[] Block; // 4, 3, 2, 1
    public GameObject[] SelectedLight; // 4, 3, 2, 1
    public GameObject[] Scaffolding; // 2개 -1, -2
    public GameObject Arrow;
    private Stack<int> PegsA;
    private Stack<int> PegsB;
    private Stack<int> PegsC;
    private int Selected_block = -1;
    private int Selected_Pegs = -1;
    private int N_Round = 0;

    public void StartGame(int Round)
    {
        N_Round = Round;
        StageText.text = Round.ToString();
        
        // 초기화 및 시작 위치 설정
        PegsA = new Stack<int>();
        PegsB = new Stack<int>();
        PegsC = new Stack<int>();
        Arrow.SetActive(false);
        Count = 0;
        if (Round == 1)
        {
            ClearCount = 5;
            numberOfDisks = 2;
            Block[0].SetActive(true);
            Block[1].SetActive(true);
            Block[2].SetActive(false);
            Block[3].SetActive(false);
            Scaffolding[0].SetActive(true);
            Scaffolding[1].SetActive(true);
            PegsC.Push(-2);
            PegsC.Push(-1);
        }
        else if (Round == 2)
        {
            ClearCount = 10;
            numberOfDisks = 3;
            Block[0].SetActive(true);
            Block[1].SetActive(true);
            Block[2].SetActive(true);
            Block[3].SetActive(false);
            Scaffolding[0].SetActive(false);
            Scaffolding[1].SetActive(true);
            PegsC.Push(-1);
        }
        else if (Round == 3)
        {
            ClearCount = 20;
            numberOfDisks = 4;
            Block[0].SetActive(true);
            Block[1].SetActive(true);
            Block[2].SetActive(true);
            Block[3].SetActive(true);
            Scaffolding[0].SetActive(false);
            Scaffolding[1].SetActive(false);
        }
        ClearCountText.text = ClearCount.ToString();
        for (int i = numberOfDisks; i >= 1; i--)
        {
            PegsA.Push(i);
        }

        // UpdatePegs 메서드 호출하여 위치 업데이트
        UpdatePegs();
    }

    public void UpdatePegs()
    {
        CountText.text = Count.ToString();
        UpdatePegsOnPeg(PegsA, 1);
        UpdatePegsOnPeg(PegsB, 2);
        UpdatePegsOnPeg(PegsC, 3);
    }
    private void UpdatePegsOnPeg(Stack<int> peg, int pegNumber)
    {
        int[] pegsArray = peg.ToArray();
        for (int i = pegsArray.Length - 1; i >= 0; i--)
        {
            int diskNumber = pegsArray[i] - 1;
            RectTransform rectTransform;
            if (diskNumber > -1)
                rectTransform = Block[diskNumber].GetComponent<RectTransform>();
            else
                rectTransform = Scaffolding[diskNumber+3].GetComponent<RectTransform>();
            float xPos = 0f;
            if (pegNumber == 1) xPos = -187f;
            else if (pegNumber == 2) xPos = 113f;
            else if (pegNumber == 3) xPos = 413f;
    
            rectTransform.anchoredPosition = new Vector2(xPos, -102f + (pegsArray.Length - 1 - i) * 100f);
        }
    }
    public void ResetGame()
    {
        // 옮긴 횟수 조절
        StartGame(N_Round);
    }
    public void Catch()
    {
        // 옮긴 횟수 조절
        if (N_Round == 1)
        {
            // PegsC에 원반이 1, 2, -1, -2 순서로 있을 때의 동작
            if (PegsC.Count == 4 && PegsC.Pop() == 1 && PegsC.Pop() == 2 && PegsC.Pop() == -1 && PegsC.Pop() == -2 && Count <= ClearCount)
            {
                // 순서가 맞을 때 동작
                // 원하는 동작 코드를 여기에 추가
                N_Round = 2;
                Debug.Log("Next Game");
                ResetGame();
            }
            else
            {
                Debug.Log("Fail");
                ResetGame();
            }
        }
        else if (N_Round == 2)
        {
            // PegsC에 원반이 1, 2, 3, -1 순서로 있을 때의 동작
            if (PegsC.Count == 4 && PegsC.Pop() == 1 && PegsC.Pop() == 2 && PegsC.Pop() == 3 && PegsC.Pop() == -1 && Count <= ClearCount)
            {
                // 순서가 맞을 때 동작
                // 원하는 동작 코드를 여기에 추가
                N_Round = 3;
                Debug.Log("Next Game");
                ResetGame();
            }
            else
            {
                Debug.Log("Fail");
                ResetGame();
            }
        }
        else if (N_Round == 3)
        {
            // PegsC에 원반이 1, 2, 3, 4 순서로 있을 때의 동작
            if (PegsC.Count == 4 && PegsC.Pop() == 1 && PegsC.Pop() == 2 && PegsC.Pop() == 3 && PegsC.Pop() == 4 && Count <= ClearCount)
            {
                // 순서가 맞을 때 동작
                // 원하는 동작 코드를 여기에 추가
                Debug.Log("Clear");
                ResetGame();
            }
            else
            {
                Debug.Log("Fail");
                ResetGame();
            }
        }
    }
    public void Selected(int Pegs)
    {
        if (Selected_block == -1)
        {
            if (Pegs == 1)
            {
                if (PegsA.Count > 0)
                {
                    Selected_block = PegsA.Peek();
                    if (Selected_block > -1)
                    {
                        SelectedLight[Selected_block - 1].SetActive(true);
                        Arrow.SetActive(true);
                    }
                }
            }
            else if (Pegs == 2)
            {
                if (PegsB.Count > 0)
                {
                    Selected_block = PegsB.Peek();
                    if (Selected_block > -1)
                    {
                        SelectedLight[Selected_block - 1].SetActive(true);
                        Arrow.SetActive(true);
                    }
                }
            }
            else if (Pegs == 3)
            {
                if (PegsC.Count > 0)
                {
                    Selected_block = PegsC.Peek();
                    if (Selected_block > -1)
                    {
                        SelectedLight[Selected_block - 1].SetActive(true);
                        Arrow.SetActive(true);
                    }
                }
            }
            Selected_Pegs = Pegs;
        }
        else
        {
            if (Pegs == 1)
            {
                if (Selected_Pegs != 1 && (PegsA.Count == 0 || Selected_block < PegsA.Peek() || PegsA.Peek() <= -1 ))
                {
                    PegsA.Push(Selected_block);
                    if (Selected_Pegs == 2) PegsB.Pop();
                    if (Selected_Pegs == 3) PegsC.Pop();
                    Count += 1;
                }
            }
            else if (Pegs == 2)
            {
                if (Selected_Pegs != 2 && (PegsB.Count == 0 || Selected_block < PegsB.Peek() || PegsB.Peek() <= -1 ))
                {
                    PegsB.Push(Selected_block);
                    if (Selected_Pegs == 1) PegsA.Pop();
                    if (Selected_Pegs == 3) PegsC.Pop();
                    Count += 1;
                }
            }
            else if (Pegs == 3)
            {
                if (Selected_Pegs != 3 && (PegsC.Count == 0 || Selected_block < PegsC.Peek() || PegsC.Peek() <= -1 ))
                {
                    PegsC.Push(Selected_block);
                    if (Selected_Pegs == 1) PegsA.Pop();
                    if (Selected_Pegs == 2) PegsB.Pop();
                    Count += 1;
                }
            }
            Selected_block = -1;
            Selected_Pegs = -1;
            SelectedLight[0].SetActive(false);
            SelectedLight[1].SetActive(false);
            SelectedLight[2].SetActive(false);
            SelectedLight[3].SetActive(false);
            Arrow.SetActive(false);
            UpdatePegs();
        }
    }
}
