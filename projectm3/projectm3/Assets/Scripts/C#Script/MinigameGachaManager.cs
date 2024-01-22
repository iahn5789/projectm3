using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MinigameGachaManager : MonoBehaviour
{
    public int numberOfDisks = 4; // 원반의 수
    private Stack<int> PegsA;
    private Stack<int> PegsB;
    private Stack<int> PegsC;
    public GameObject[] Block; // 4, 3, 2, 1
    private int Selected_block = -1;
    private int Selected_Pegs = -1;

    public void Start()
    {
        // 초기화 및 시작 위치 설정
        PegsA = new Stack<int>();
        PegsB = new Stack<int>();
        PegsC = new Stack<int>();

        for (int i = numberOfDisks; i >= 1; i--)
        {
            PegsA.Push(i); // PegsA에 초기 숫자 할당 (4, 3, 2, 1 순서)
            // 초기 위치 설정
            RectTransform rectTransform = Block[i - 1].GetComponent<RectTransform>();
            rectTransform.anchoredPosition = new Vector2(-187f, -102f + (numberOfDisks - i) * 100f);
        }

        // UpdatePegs 메서드 호출하여 위치 업데이트
        UpdatePegs();
    }

    public void UpdatePegs()
    {
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
            RectTransform rectTransform = Block[diskNumber].GetComponent<RectTransform>();
    
            float xPos = 0f;
            if (pegNumber == 1) xPos = -187f;
            else if (pegNumber == 2) xPos = 113f;
            else if (pegNumber == 3) xPos = 413f;
    
            rectTransform.anchoredPosition = new Vector2(xPos, -102f + (pegsArray.Length - 1 - i) * 100f);
        }
    }

    public void Selected(int Pegs)
    {
        Debug.Log("Selected");
        if (Selected_block == -1)
        {
            if (Pegs == 1)
            {
                if (PegsA.Count > 0)
                    Selected_block = PegsA.Peek();
            }
            else if (Pegs == 2)
            {
                if (PegsB.Count > 0)
                    Selected_block = PegsB.Peek();
            }
            else if (Pegs == 3)
            {
                if (PegsC.Count > 0)
                    Selected_block = PegsC.Peek();
            }
            Selected_Pegs = Pegs;
        }
        else
        {
            if (Pegs == 1)
            {
                if (Selected_Pegs != 1 && (PegsA.Count == 0 || Selected_block < PegsA.Peek()))
                {
                    PegsA.Push(Selected_block);
                    if (Selected_Pegs == 2) PegsB.Pop();
                    if (Selected_Pegs == 3) PegsC.Pop();
                }
            }
            else if (Pegs == 2)
            {
                if (Selected_Pegs != 2 && (PegsB.Count == 0 || Selected_block < PegsB.Peek()))
                {
                    PegsB.Push(Selected_block);
                    if (Selected_Pegs == 1) PegsA.Pop();
                    if (Selected_Pegs == 3) PegsC.Pop();
                }
            }
            else if (Pegs == 3)
            {
                if (Selected_Pegs != 3 && (PegsC.Count == 0 || Selected_block < PegsC.Peek()))
                {
                    PegsC.Push(Selected_block);
                    if (Selected_Pegs == 1) PegsA.Pop();
                    if (Selected_Pegs == 2) PegsB.Pop();
                }
            }
            Selected_block = -1;
            Selected_Pegs = -1;
            UpdatePegs();
        }
    }
}
