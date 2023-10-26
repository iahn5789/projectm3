﻿using System.Collections;
using System.Collections.Generic;
using System;
using System.Globalization;
using UnityEngine;
using UnityEngine.UI;
using Naninovel;
using Naninovel.UI;
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
    public GameObject BuySecretMessageUI;
    public GameObject SecretMessageInUI;
    public GameObject LackUI;
    public GameObject LackPrefab;
    // 대자보 관련
    public Animator SecretMessage;
    // 비밀쪽지 이미지
    public GameObject[] SecretMessageImage;
    public Text buyTextTitle;
    private string nowSecretMessage;
    private Dictionary<string, (string, int, int)> SecretMessageLine;
    public GameObject SecretMessgeText;   // 비밀쪽지 텍스트
    public Image charactorFace; // 비밀쪽지 캐릭터 얼굴
    public Image charactorBody; // 비밀쪽지 캐릭터 몸
    public Sprite[] KangFaceList; // 비밀쪽지 캐릭터 얼굴 리스트
    public Sprite[] JinFaceList; // 비밀쪽지 캐릭터 얼굴 리스트
    public Sprite[] SulFaceList; // 비밀쪽지 캐릭터 얼굴 리스트
    public Sprite[] KangBodyList; // 비밀쪽지 캐릭터 몸 리스트
    public Sprite[] JinBodyList; // 비밀쪽지 캐릭터 몸 리스트
    public Sprite[] SulBodyList; // 비밀쪽지 캐릭터 몸 리스트
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

        SecretMessageLine = new Dictionary<string, (string, int, int)>();
        // 강여진 비밀쪽지 (순서 : 대사, 얼굴, 몸)
        SecretMessageLine.Add("11Kang", ("1_1_Kang대사", 0,0));
        SecretMessageLine.Add("12Kang", ("1_2_Kang대사", 1,1));
        SecretMessageLine.Add("13Kang", ("1_3_Kang대사", 2,2));
        SecretMessageLine.Add("21Kang", ("2_1_Kang대사", 1,1));
        SecretMessageLine.Add("22Kang", ("2_2_Kang대사", 2,2));
        SecretMessageLine.Add("23Kang", ("2_3_Kang대사", 3,3));
        SecretMessageLine.Add("31Kang", ("3_1_Kang대사", 1,1));
        SecretMessageLine.Add("32Kang", ("3_2_Kang대사", 2,2));
        SecretMessageLine.Add("33Kang", ("3_3_Kang대사", 3,3));
        SecretMessageLine.Add("41Kang", ("4_1_Kang대사", 1,1));
        SecretMessageLine.Add("42Kang", ("4_2_Kang대사", 2,2));
        SecretMessageLine.Add("43Kang", ("4_3_Kang대사", 3,3));
        SecretMessageLine.Add("51Kang", ("5_1_Kang대사", 1,1));
        SecretMessageLine.Add("52Kang", ("5_2_Kang대사", 2,2));
        SecretMessageLine.Add("53Kang", ("5_3_Kang대사", 3,3));
        SecretMessageLine.Add("61Kang", ("6_1_Kang대사", 1,1));
        SecretMessageLine.Add("62Kang", ("6_2_Kang대사", 2,2));
        SecretMessageLine.Add("63Kang", ("6_3_Kang대사", 3,3));
        SecretMessageLine.Add("71Kang", ("7_1_Kang대사", 1,1));
        SecretMessageLine.Add("72Kang", ("7_2_Kang대사", 2,2));
        SecretMessageLine.Add("73Kang", ("7_3_Kang대사", 3,3));
        SecretMessageLine.Add("81Kang", ("8_1_Kang대사", 1,1));
        SecretMessageLine.Add("82Kang", ("8_2_Kang대사", 2,2));
        SecretMessageLine.Add("83Kang", ("8_3_Kang대사", 3,3));
        SecretMessageLine.Add("91Kang", ("9_1_Kang대사", 1,1));
        SecretMessageLine.Add("92Kang", ("9_2_Kang대사", 2,2));
        SecretMessageLine.Add("93Kang", ("9_3_Kang대사", 3,3));
        // 진다영 비밀쪽지
        SecretMessageLine.Add("11Jin", ("1_1_Jin대사", 1,1));
        SecretMessageLine.Add("12Jin", ("1_2_Jin대사", 2,2));
        SecretMessageLine.Add("13Jin", ("1_3_Jin대사", 3,3));
        SecretMessageLine.Add("21Jin", ("2_1_Jin대사", 1,1));
        SecretMessageLine.Add("22Jin", ("2_2_Jin대사", 2,2));
        SecretMessageLine.Add("23Jin", ("2_3_Jin대사", 3,3));
        SecretMessageLine.Add("31Jin", ("3_1_Jin대사", 1,1));
        SecretMessageLine.Add("32Jin", ("3_2_Jin대사", 2,2));
        SecretMessageLine.Add("33Jin", ("3_3_Jin대사", 3,3));
        SecretMessageLine.Add("41Jin", ("4_1_Jin대사", 1,1));
        SecretMessageLine.Add("42Jin", ("4_2_Jin대사", 2,2));
        SecretMessageLine.Add("43Jin", ("4_3_Jin대사", 3,3));
        SecretMessageLine.Add("51Jin", ("5_1_Jin대사", 1,1));
        SecretMessageLine.Add("52Jin", ("5_2_Jin대사", 2,2));
        SecretMessageLine.Add("53Jin", ("5_3_Jin대사", 3,3));
        SecretMessageLine.Add("61Jin", ("6_1_Jin대사", 1,1));
        SecretMessageLine.Add("62Jin", ("6_2_Jin대사", 2,2));
        SecretMessageLine.Add("63Jin", ("6_3_Jin대사", 3,3));
        SecretMessageLine.Add("71Jin", ("7_1_Jin대사", 1,1));
        SecretMessageLine.Add("72Jin", ("7_2_Jin대사", 2,2));
        SecretMessageLine.Add("73Jin", ("7_3_Jin대사", 3,3));
        SecretMessageLine.Add("81Jin", ("8_1_Jin대사", 1,1));
        SecretMessageLine.Add("82Jin", ("8_2_Jin대사", 2,2));
        SecretMessageLine.Add("83Jin", ("8_3_Jin대사", 3,3));
        SecretMessageLine.Add("91Jin", ("9_1_Jin대사", 1,1));
        SecretMessageLine.Add("92Jin", ("9_2_Jin대사", 2,2));
        SecretMessageLine.Add("93Jin", ("9_3_Jin대사", 3,3));
        // 설나희 비밀쪽지
        SecretMessageLine.Add("11Sul", ("1_1_Sul대사", 1,1));
        SecretMessageLine.Add("12Sul", ("1_2_Sul대사", 2,2));
        SecretMessageLine.Add("13Sul", ("1_3_Sul대사", 3,3));
        SecretMessageLine.Add("21Sul", ("2_1_Sul대사", 1,1));
        SecretMessageLine.Add("22Sul", ("2_2_Sul대사", 2,2));
        SecretMessageLine.Add("23Sul", ("2_3_Sul대사", 3,3));
        SecretMessageLine.Add("31Sul", ("3_1_Sul대사", 1,1));
        SecretMessageLine.Add("32Sul", ("3_2_Sul대사", 2,2));
        SecretMessageLine.Add("33Sul", ("3_3_Sul대사", 3,3));
        SecretMessageLine.Add("41Sul", ("4_1_Sul대사", 1,1));
        SecretMessageLine.Add("42Sul", ("4_2_Sul대사", 2,2));
        SecretMessageLine.Add("43Sul", ("4_3_Sul대사", 3,3));
        SecretMessageLine.Add("51Sul", ("5_1_Sul대사", 1,1));
        SecretMessageLine.Add("52Sul", ("5_2_Sul대사", 2,2));
        SecretMessageLine.Add("53Sul", ("5_3_Sul대사", 3,3));
        SecretMessageLine.Add("61Sul", ("6_1_Sul대사", 1,1));
        SecretMessageLine.Add("62Sul", ("6_2_Sul대사", 2,2));
        SecretMessageLine.Add("63Sul", ("6_3_Sul대사", 3,3));
        SecretMessageLine.Add("71Sul", ("7_1_Sul대사", 1,1));
        SecretMessageLine.Add("72Sul", ("7_2_Sul대사", 2,2));
        SecretMessageLine.Add("73Sul", ("7_3_Sul대사", 3,3));
        SecretMessageLine.Add("81Sul", ("8_1_Sul대사", 1,1));
        SecretMessageLine.Add("82Sul", ("8_2_Sul대사", 2,2));
        SecretMessageLine.Add("83Sul", ("8_3_Sul대사", 3,3));
        SecretMessageLine.Add("91Sul", ("9_1_Sul대사", 1,1));
        SecretMessageLine.Add("92Sul", ("9_2_Sul대사", 2,2));
        SecretMessageLine.Add("93Sul", ("9_3_Sul대사", 3,3));
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
        int KangLikeAbility = Int32.Parse(variableManager?.GetVariableValue("KangLikeAbility"));
        int JinLikeAbility = Int32.Parse(variableManager?.GetVariableValue("JinLikeAbility"));
        int SulLikeAbility = Int32.Parse(variableManager?.GetVariableValue("SulLikeAbility"));
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
    public void StoryBoardSelectedCheck()
    {
        string Selected = variableManager?.GetVariableValue("Selected");
        Debug.Log(Selected);
        if (Selected == "Kang")
        {
            //강여진 보드 눌려있는 상태 유지
            SecretMessage.Play("SecretMessageCheckIn");
        }
        else if (Selected == "Jin")
        {
            //진다영 보드 눌려있는 상태 유지
            SecretMessage.Play("SecretMessageCheckIn");
        }
        else if (Selected == "Sul")
        {
            //설나희 보드 눌려있는 상태 유지
            SecretMessage.Play("SecretMessageCheckIn");
        }
        else if (Selected == "Common")
        {
            // 전대용 보드 눌려있는 상태 유지
            SecretMessage.Play("SecretMessageCheckIn");
        }
        else
        {
            //안눌려있음
            SecretMessage.Play("SecretMessage_Out");
        }
    }
    public void BuySecretMessageExist(string SecretMessageName)
    {
        string Selected = variableManager?.GetVariableValue("Selected");
        nowSecretMessage = Selected + "Secret_" + SecretMessageName + "_Buy";
        string buybool = variableManager?.GetVariableValue(nowSecretMessage);
        if (buybool == "False")
        {
            UpdateBuySecretMessageUI(SecretMessageName);
            BuySecretMessageUI.SetActive(true);
        }
        else
        {
            SecretMessageInUI.SetActive(true);
        }
    }
    public void BuySecretMessageWithMoneyExist()
    {
        string Selected = variableManager?.GetVariableValue("Selected");
        string buybool = variableManager?.GetVariableValue(nowSecretMessage);
        int money = int.Parse(variableManager?.GetVariableValue("money"));
        if (money > 499)
        {
            BuySecretMessageUI.SetActive(false);
            UpdateBuySecretMessageWithMoneyUI(Selected,nowSecretMessage.Split('_')[1]);
            SecretMessageInUI.SetActive(true);
            variableManager?.SetVariableValue("money", (money-500).ToString());
            variableManager?.SetVariableValue($"{Selected}LikeAbility", (int.Parse(variableManager?.GetVariableValue($"{Selected}LikeAbility"))+1).ToString());
            variableManager?.SetVariableValue("update_TestSceneUI_variable","true");
            variableManager?.SetVariableValue(nowSecretMessage, "true");
            UpdateSecretMessageUI(Selected);
        }
        else
        {
            GameObject createdLack = Instantiate(LackPrefab, LackUI.transform);
            Destroy(createdLack, 1f);
        }
    }
    public void UpdateSecretMessageUI(string OnName)
    {
        string buy1 = variableManager?.GetVariableValue($"{OnName}Secret_1_Buy");
        string buy2 = variableManager?.GetVariableValue($"{OnName}Secret_2_Buy");
        string buy3 = variableManager?.GetVariableValue($"{OnName}Secret_3_Buy");
        SetActiveBasedOnPurchase(buy1, 0, 1);
        SetActiveBasedOnPurchase(buy2, 2, 3);
        SetActiveBasedOnPurchase(buy3, 4, 5);
    }
    private void SetActiveBasedOnPurchase(string buyStatus, int trueIndex, int falseIndex)
    {
        bool isPurchased = buyStatus == "true";
        SecretMessageImage[trueIndex].SetActive(!isPurchased);
        SecretMessageImage[falseIndex].SetActive(isPurchased);
    }
    public void UpdateBuySecretMessageUI(string number)
    {
        string text;
        if (number == "1")
        {
            text = "첫 번째 ";
        }
        else if (number == "2")
        {
            text = "두 번째 ";
        }
        else if (number == "3")
        {
            text = "세 번째 ";
        }
        else
        {
            text = "";
        }
        buyTextTitle.text = text + "비밀쪽지";
    }
    public void UpdateBuySecretMessageWithMoneyUI(string name ,string number)
    {
        string week = variableManager?.GetVariableValue($"{name}Week");
        string key = week+number+name;
        if(SecretMessageLine.ContainsKey(key)) // 해당 키가 myTable 딕셔너리에 있는지 확인
        {
            var tupleValue = SecretMessageLine[key];
            SecretMessgeText.GetComponent<TypingEffect>().fullText = tupleValue.Item1;
            if (name == "Kang")
            {
                charactorFace.sprite = KangFaceList[tupleValue.Item2];
                charactorBody.sprite = KangBodyList[tupleValue.Item3];
            }
            else if (name == "Jin")
            {
                charactorFace.sprite = JinFaceList[tupleValue.Item2];
                charactorBody.sprite = JinBodyList[tupleValue.Item3];
            }
            else if (name == "Sul")
            {
                charactorFace.sprite = SulFaceList[tupleValue.Item2];
                charactorBody.sprite = SulBodyList[tupleValue.Item3];
            }
        }
    }
}
