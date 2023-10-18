using System.Collections;
using System.Collections.Generic;
using System;
using System.Globalization;
using UnityEngine;
using UnityEngine.UI;
using Naninovel;
using Naninovel.Commands;

public class TestSceneUIManager : MonoBehaviour
{
    public Text MoneyUI;    // 현재 돈
    public Text BadgeUI;    // 현재 뱃지
    public Text CountUI;    // 남은 횟수
    public GameObject Image_End_PartTimeJob;    // 아르바이트 종료
    private ICustomVariableManager variableManager;
    private Dictionary<string, string> line;
    public Text KangLine;
    public Text JinLine;
    public Text SulLine;
    // Start is called before the first frame update
    void Start()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
        line = new Dictionary<string, string>();
        // 강여진 대사
        line.Add("Kang1", "안녕! 우리 동아리에 들어온 걸 환영해!");
        line.Add("Kang2", "우리 앞으로 꾸준히 연습하자!");
        line.Add("Kang3", "오늘 점심 되게 맛있지 않았어?");
        line.Add("Kang4", "날씨 되게 좋다! 놀러 가기 딱 좋은 날인데?");
        line.Add("Kang5", "동아리 연습 끝나면 같이 떡볶이 먹으러 가자!");
        line.Add("Kang6", "학교 끝나고 뭐해? 아니 뭐 그냥...");
        line.Add("Kang7", "오늘... 연습 끝나면 둘이 놀러 갈까?");
        line.Add("Kang8", "우리 처음으로 손잡았던 날 생각나네.");
        line.Add("Kang9", "동아리 끝나면 둘이 데이트하러 가자!");
        line.Add("Kang10", "오늘 우리 집에 올래...? 동생들 수학여행 갔는데...");
        // 진다영 대사
        line.Add("Jin1", "뭘 봐! 이 변태야!");
        line.Add("Jin2", "흥! 잘하나 못하나 지켜볼 거야!");
        line.Add("Jin3", "키가 조금 컸나..? 너... 너 들으라고 한 소리 아니야!");
        line.Add("Jin4", "밖에 하늘 예쁘다... 뭐야! 언제부터 듣고 있었어!");
        line.Add("Jin5", "매점 갈건데... 그냥 그렇다고!");
        line.Add("Jin6", "하...학교 끝나고 같이 놀든지 말든지!");
        line.Add("Jin7", "연습할 때 말해! 다른 사람은 부르지 말고...");
        line.Add("Jin8", "뭐야... 그렇게 계속 다보면 부끄럽다고...");
        line.Add("Jin9", "고마웠어. 정말로. 그리고... 사...사...사랑하지 않지 않아!");
        line.Add("Jin10", "오늘따라 글이 잘 안 써지네. 혹시 도와줄 수 있어...?");
        // 설나희 대사
        line.Add("Sul1", "...안녕?");
        line.Add("Sul2", "...동아리...할만 해...?");
        line.Add("Sul3", "나는 네 보컬 마음에 들어... 되게 독창적이라...");
        line.Add("Sul4", "무슨 그림 그리고 있냐고...? ...비밀이야...");
        line.Add("Sul5", "...오토바이 타고 왔는데... 갈 때 태워줄까...?");
        line.Add("Sul6", "집 근처에서 콘서트 있던데... 보고 싶으면 말하고...");
        line.Add("Sul7", "...오늘 연습 끝나면... 같이 놀러 갈래...?");
        line.Add("Sul8", "교복이 조금 작나... 네가 보기엔 어때?");
        line.Add("Sul9", "학교 끝나고 우리 집 고양이 보러 갈래...?");
        line.Add("Sul10","오늘은... 그때처럼 문 벌컥 열어도 돼...");
    }

    // Update is called once per frame
    void Update()
    {
        string update_TestSceneUI_variable = variableManager?.GetVariableValue("update_TestSceneUI_variable");
        if (update_TestSceneUI_variable == "true")
        {
            setUI();
            
            variableManager?.SetVariableValue("update_TestSceneUI_variable", "false");
        }
    }
    public void setUI()
    {
        string moneyText = variableManager.GetVariableValue("money");
        MoneyUI.text = moneyText;

        string countText = variableManager.GetVariableValue("PartTimeJob_Count");
        CountUI.text = countText;
        if (countText == "0")
        {
            Image_End_PartTimeJob.SetActive(true);
        }

        string badgeText = variableManager.GetVariableValue("Badge");
        BadgeUI.text = badgeText;
    }
    public void SetLikeAbilityToText()
    {
        int KangLikeAbility =  Int32.Parse(variableManager?.GetVariableValue($"KangLikeAbility"));
        int JinLikeAbility =  Int32.Parse(variableManager?.GetVariableValue($"JinLikeAbility"));
        int SulLikeAbility =  Int32.Parse(variableManager?.GetVariableValue($"SulLikeAbility"));
        setCharacterText($"Kang{(int)KangLikeAbility/10}", "Kang");
        setCharacterText($"Jin{(int)JinLikeAbility/10}", "Jin");
        setCharacterText($"Sul{(int)SulLikeAbility/10}", "Sul");
    }
    public void setCharacterText(string key, string name)
    {
        if(line.ContainsKey(key)) // 해당 키가 line 딕셔너리에 있는지 확인
        {
            if (name == "Kang")
            {
                KangLine.text = line[key];
            }
            else if (name == "Jin")
            {
                JinLine.text = line[key];
            }
            else if (name == "Sul")
            {
                SulLine.text = line[key];
            }
        }
    }
}
