using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Naninovel;
using Naninovel.Commands;

public class MinigameGachaManager : MonoBehaviour
{
    public Animator CrainAnim;
    public int numberOfDisks = 4; // 원반의 수
    public Text ClearCountText;
    public Text CountText;
    public Text StageText;
    private int ClearCount;
    private int Count;
    public GameObject[] Block; // 4, 3, 2, 1
    public GameObject[] SelectedLight; // 4, 3, 2, 1
    public GameObject[] Scaffolding; // 2개 -1, -2
    public GameObject[] Capsule;
    public GameObject Arrow;
    public Text DialogText;
    private Dictionary<int, (string, int, int)> line;
    public Image charactorFace; // Result창 캐릭터 얼굴
    public Image charactorBody; // Result창 캐릭터 몸
    public Sprite[] FaceList; // Result창 캐릭터 얼굴 리스트
    public Sprite[] BodyList; // Result창 캐릭터 몸 리스트
    private Stack<int> PegsA;
    private Stack<int> PegsB;
    private Stack<int> PegsC;
    private int Selected_block = -1;
    private int Selected_Pegs = -1;
    public int N_Round = 0;
    public Text RoundText;
    public GameObject BlockImage;
    private ICustomVariableManager variableManager;
    public bool Reposition = false;
    public Text ResultMoney;
    // 20회 도달시 뽑기 버튼 강제 클릭이 필요함 
    public void Start()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
        line = new Dictionary<int, (string, int, int)>();

        line.Add(1, ("어떡하지..? 너무 귀여워!", 3, 2));
        line.Add(2, ("그거 그렇게 하는 거 아닌데...", 1, 6));
        line.Add(3, ("고양이가 세상을 구한다!", 2, 3));
        line.Add(4, ("인간은 한 명만 남겨서 캔따개로... 이거 아니야?", 2, 4));
        line.Add(5, ("너무 급하게 하지 않아도 돼. 실패만 하지마...", 3, 0));
        line.Add(6, ("저 아이가 구해달라고 하고 있어!", 3, 1));
        line.Add(7, ("그냥 부숴버리고 꺼내면... 안 되겠지?", 2, 3));
        line.Add(8, ("하나 사면 안 되냐고? 이 아이는 버리자는 거야?", 2, 3));
        line.Add(9, ("치... 침은 안 흘렸거든..! 진짜야!", 2, 2));
        line.Add(10, ("고양이 이름은 슈뢰딩거로 할 거야! 좀 아닌 것 같아?", 3, 1));
        line.Add(11, ("뽀...뽑히나?", 3, 1));
        line.Add(12, ("나 기대해도 되는 거야?", 1, 0));
        line.Add(13, ("중간에 떨어지진 않겠지?", 3, 6));
    }
    private void GetLine(int key)
    {
        if(line.ContainsKey(key)) // 해당 키가 myTable 딕셔너리에 있는지 확인
        {
            var tupleValue = line[key];
            DialogText.text = tupleValue.Item1;
            charactorBody.sprite = BodyList[tupleValue.Item2];
            charactorFace.sprite = FaceList[tupleValue.Item3];
        }
    }
    public void SetRoundText()
    {
        RoundText.text = N_Round.ToString();
    }
    public void StartGame(int Round)
    {
        N_Round = Round;
        StageText.text = Round.ToString();
        
        int randomValue = Random.Range(1, 11);
        if (!Reposition)
            GetLine(randomValue);

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
            Capsule[0].SetActive(true);
            Capsule[1].SetActive(false);
            Capsule[2].SetActive(false);
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
            Capsule[0].SetActive(false);
            Capsule[1].SetActive(true);
            Capsule[2].SetActive(false);
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
            Capsule[0].SetActive(false);
            Capsule[1].SetActive(false);
            Capsule[2].SetActive(true);
        }
        ClearCountText.text = ClearCount.ToString();
        for (int i = numberOfDisks; i >= 1; i--)
        {
            PegsA.Push(i);
        }

        // UpdatePegs 메서드 호출하여 위치 업데이트
        UpdatePegs();
        if (!Reposition)
            InvokeRepeating("CallGetLine", 0, 10);
        else
            Reposition = false;
    }
    // 10초마다 호출될 함수
    private void CallGetLine()
    {
        int randomValue = Random.Range(1, 11);
        GetLine(randomValue);
    }
    public void UpdatePegs()
    {
        CountText.text = Count.ToString();
        UpdatePegsOnPeg(PegsA, 1);
        UpdatePegsOnPeg(PegsB, 2);
        UpdatePegsOnPeg(PegsC, 3);
        if (Count >= ClearCount)
        {
            Catch();
        }
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
    public void UIReset()
    {
        SelectedLight[0].SetActive(false);
        SelectedLight[1].SetActive(false);
        SelectedLight[2].SetActive(false);
        SelectedLight[3].SetActive(false);
        Arrow.SetActive(false);
    }
    public void ResetGame()
    {
        UIReset();
        CancelInvoke("CallGetLine");
        // 옮긴 횟수 조절
        StartGame(N_Round);
    }
    public void RePositionGame()
    {
        
        UIReset();
        Reposition = true;
        StartGame(N_Round);
    }
    public void Catch()
    {
        CancelInvoke("CallGetLine");
        // 랜덤 11~13 사이 값이 나와야함 그걸로 GetLine(int) 호출
        int randomValue = Random.Range(11, 14);
        BlockImageOn();
        GetLine(randomValue);
        if (N_Round == 1)
        {
            // PegsC에 원반이 1, 2, -1, -2 순서로 있을 때의 동작
            if (PegsC.Count == 4 && PegsC.Pop() == 1 && PegsC.Pop() == 2 && PegsC.Pop() == -1 && PegsC.Pop() == -2 && Count <= ClearCount)
            {
                N_Round = 2;
                SetRoundText();
                PlaySuccessAnim();
            }
            else
            {
                PlayFailAnim();
            }
        }
        else if (N_Round == 2)
        {
            // PegsC에 원반이 1, 2, 3, -1 순서로 있을 때의 동작
            if (PegsC.Count == 4 && PegsC.Pop() == 1 && PegsC.Pop() == 2 && PegsC.Pop() == 3 && PegsC.Pop() == -1 && Count <= ClearCount)
            {
                N_Round = 3;
                SetRoundText();
                PlaySuccessAnim();
            }
            else
            {
                PlayFailAnim();
            }
        }
        else if (N_Round == 3)
        {
            // PegsC에 원반이 1, 2, 3, 4 순서로 있을 때의 동작
            if (PegsC.Count == 4 && PegsC.Pop() == 1 && PegsC.Pop() == 2 && PegsC.Pop() == 3 && PegsC.Pop() == 4 && Count <= ClearCount)
            {
                N_Round = 4;
                ResultMoney.text = "3000개";
                PlaySuccessAnim();
                int money = int.Parse(variableManager?.GetVariableValue("money"));
                money += 3000;
                variableManager?.SetVariableValue("money", money.ToString());
            }
            else
            {
                PlayFailAnim();
            }
        }
    }
    public void SkipGame()
    {
        N_Round = 4;
        ResultMoney.text = "1500개";
        int money = int.Parse(variableManager?.GetVariableValue("money"));
        money += 1500;
        variableManager?.SetVariableValue("money", money.ToString());
    }
    public void PlaySuccessAnim()
    {
        CrainAnim.SetTrigger("success");
    }
    public void PlayFailAnim()
    {
        int height = PegsC.Count;
        CrainAnim.SetTrigger($"fail0{height + 1}");
    }
    public void PlayIdleAnim()
    {
        CrainAnim.SetTrigger("next");
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
    public void BlockImageOn()
    {
        BlockImage.SetActive(true);
    }
    public void BlockImageOff()
    {
        BlockImage.SetActive(false);
    }
}
