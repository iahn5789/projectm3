using System.Collections;
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
    // 주차 관련 UI
    public Text WeekUI;
    public Text WeekTextUI;
    public Text WeekTitleUI;
    public Text WeekSubjectUI;
    private Dictionary<string, (string, string, string, string)> DictWeekText;
    // 재화 UI
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
    public GameObject SecretMessageResultUI;
    public GameObject LackUI;
    public GameObject LackPrefab;
    public GameObject BuyLackPrefab;
    // 대자보 관련
    public Animator SecretMessage;
    public Text[] LikeAbilityAmount;
    public GameObject[] StoryBoardPossible;
    public GameObject[] StoryBoardImPossible;
    public Text[] StoryBoardWeekText;
    // 비밀쪽지 이미지
    public GameObject[] SecretMessageImage;
    public Text buyTextTitle;
    private string nowSecretMessage;
    private Dictionary<string, (string, int, int)> SecretMessageLine;
    public GameObject SecretMessgeText;   // 비밀쪽지 텍스트
    public GameObject SecretMessgeText2;   // 비밀쪽지(2번째) 텍스트
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
        DictWeekText = new Dictionary<string, (string, string, string, string)>();
        // 제목, 타이틀, Subject
        // 강여진 1주차~9주차?
        DictWeekText.Add("Kang1", ("1주차 제목","1주차 타이틀","1주차 Subject(주인공 시점)", "1주차 Subject(강여진시점)"));
        DictWeekText.Add("Kang2", ("2주차 제목","2주차 타이틀","2주차 Subject(주인공 시점)", "2주차 Subject(강여진시점)"));
        DictWeekText.Add("Kang3", ("3주차 제목","3주차 타이틀","3주차 Subject(주인공 시점)", "3주차 Subject(강여진시점)"));
        DictWeekText.Add("Kang4", ("4주차 제목","4주차 타이틀","4주차 Subject(주인공 시점)", "4주차 Subject(강여진시점)"));
        DictWeekText.Add("Kang5", ("5주차 제목","5주차 타이틀","5주차 Subject(주인공 시점)", "5주차 Subject(강여진시점)"));
        DictWeekText.Add("Kang6", ("6주차 제목","6주차 타이틀","6주차 Subject(주인공 시점)", "6주차 Subject(강여진시점)"));
        DictWeekText.Add("Kang7", ("7주차 제목","7주차 타이틀","7주차 Subject(주인공 시점)", "7주차 Subject(강여진시점)"));
        DictWeekText.Add("Kang8", ("8주차 제목","8주차 타이틀","8주차 Subject(주인공 시점)", "8주차 Subject(강여진시점)"));
        DictWeekText.Add("Kang9", ("9주차 제목","9주차 타이틀","9주차 Subject(주인공 시점)", "9주차 Subject(강여진시점)"));
        DictWeekText.Add("Kang10", ("10주차 제목","10주차 타이틀","10주차 Subject(주인공 시점)", "10주차 Subject(강여진시점)"));
        // 진다영 1주차~9주차?
        DictWeekText.Add("Jin1", ("1주차 제목","1주차 타이틀","1주차 Subject(주인공 시점)", "1주차 Subject(진다영시점)"));
        DictWeekText.Add("Jin2", ("2주차 제목","2주차 타이틀","2주차 Subject(주인공 시점)", "2주차 Subject(진다영시점)"));
        DictWeekText.Add("Jin3", ("3주차 제목","3주차 타이틀","3주차 Subject(주인공 시점)", "3주차 Subject(진다영시점)"));
        DictWeekText.Add("Jin4", ("4주차 제목","4주차 타이틀","4주차 Subject(주인공 시점)", "4주차 Subject(진다영시점)"));
        DictWeekText.Add("Jin5", ("5주차 제목","5주차 타이틀","5주차 Subject(주인공 시점)", "5주차 Subject(진다영시점)"));
        DictWeekText.Add("Jin6", ("6주차 제목","6주차 타이틀","6주차 Subject(주인공 시점)", "6주차 Subject(진다영시점)"));
        DictWeekText.Add("Jin7", ("7주차 제목","7주차 타이틀","7주차 Subject(주인공 시점)", "7주차 Subject(진다영시점)"));
        DictWeekText.Add("Jin8", ("8주차 제목","8주차 타이틀","8주차 Subject(주인공 시점)", "8주차 Subject(진다영시점)"));
        DictWeekText.Add("Jin9", ("9주차 제목","9주차 타이틀","9주차 Subject(주인공 시점)", "9주차 Subject(진다영시점)"));
        DictWeekText.Add("Jin10", ("10주차 제목","10주차 타이틀","10주차 Subject(주인공 시점)", "10주차 Subject(진다영시점)"));
        // 설나희 1주차~9주차?
        DictWeekText.Add("Sul1", ("1주차 제목","1주차 타이틀","1주차 Subject(주인공 시점)", "1주차 Subject(설나희시점)"));
        DictWeekText.Add("Sul2", ("2주차 제목","2주차 타이틀","2주차 Subject(주인공 시점)", "2주차 Subject(설나희시점)"));
        DictWeekText.Add("Sul3", ("3주차 제목","3주차 타이틀","3주차 Subject(주인공 시점)", "3주차 Subject(설나희시점)"));
        DictWeekText.Add("Sul4", ("4주차 제목","4주차 타이틀","4주차 Subject(주인공 시점)", "4주차 Subject(설나희시점)"));
        DictWeekText.Add("Sul5", ("5주차 제목","5주차 타이틀","5주차 Subject(주인공 시점)", "5주차 Subject(설나희시점)"));
        DictWeekText.Add("Sul6", ("6주차 제목","6주차 타이틀","6주차 Subject(주인공 시점)", "6주차 Subject(설나희시점)"));
        DictWeekText.Add("Sul7", ("7주차 제목","7주차 타이틀","7주차 Subject(주인공 시점)", "7주차 Subject(설나희시점)"));
        DictWeekText.Add("Sul8", ("8주차 제목","8주차 타이틀","8주차 Subject(주인공 시점)", "8주차 Subject(설나희시점)"));
        DictWeekText.Add("Sul9", ("9주차 제목","9주차 타이틀","9주차 Subject(주인공 시점)", "9주차 Subject(설나희시점)"));
        DictWeekText.Add("Sul10", ("10주차 제목","10주차 타이틀","10주차 Subject(주인공 시점)", "10주차 Subject(설나희시점)"));

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
        // 강여진 비밀쪽지 (순서 : 대사, 얼굴, 몸. 스프레드시트 번호 -1)
        SecretMessageLine.Add("11Kang", ("분홍 머리 여자애 이름?\n다영이잖아! 설마 무서워서 이때까지 못물어본거야..?", 5,2));
        SecretMessageLine.Add("12Kang", ("우리 동아리방은 4층 과학실 옆에\n있어. 좀 멀긴 해도 조용해서 좋더라!", 6,1));
        SecretMessageLine.Add("13Kang", ("내 손? 아하하... 조금 거칠지? 연습을 많이 해서 그래!", 7,0));
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
        // 진다영 비밀쪽지 스프레드시트 번호 -1
        SecretMessageLine.Add("11Jin", ("내 이름을 아직도 모른다고...?\n진다영이잖아!", 3,1));
        SecretMessageLine.Add("12Jin", ("동아리방 위치를 아직도 모른다고...? 4층 과학실 옆이잖아!", 1,0));
        SecretMessageLine.Add("13Jin", ("너도 여진이 손처럼 거칠어질 때까지 연습해! 알았어?", 2,2));
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
        // 설나희 비밀쪽지 스프레드시트 번호 -1
        SecretMessageLine.Add("11Sul", ("다영이 너무 무서워하지 마...", 0,1));
        SecretMessageLine.Add("12Sul", ("동아리방은 4층 과학실 옆에 있어. 혹시 헷갈릴까봐...", 0,0));
        SecretMessageLine.Add("13Sul", ("여진이 손이 좀 거칠어. 연습을 많이 해서 그런 건가..?", 0,2));
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
    public void setUPWeekUI()
    {
        // 이전 차수에 마지막에 선택한 대자보를 바탕으로 주차 UI setup
        string name = variableManager?.GetVariableValue("Selected");
        int week = 1;
        if (name != "")
        {
            week = Int32.Parse(variableManager?.GetVariableValue($"{name}Week"));
        }
        else
        {
            name = "Kang";
        }
        setUPWeekUIText(name, week);
    }
    public void setUPWeekUIText(string name, int week)
    {
        UpdateMainWeekUI(name, week);
        UpdateStoryBoardWeekUI(week);
    }
    private void UpdateMainWeekUI(string name, int week)
    {
        string key = $"{name}{week}";
        if (DictWeekText.TryGetValue(key, out var weekInfo))
        {
            WeekUI.text = week.ToString();
            WeekTextUI.text = weekInfo.Item1;
            WeekTitleUI.text = weekInfo.Item2;
            WeekSubjectUI.text = weekInfo.Item3;
        }
    }

    private void UpdateStoryBoardWeekUI(int week)
    {
        var names = new[] { "Kang", "Jin", "Sul" };
        for (int i = 0, j = 0; i < names.Length; i++)
        {
            var tuple = GetStoryBoardWeekTextToDict(names[i], week + 1);
            if (tuple.HasValue)
            {
                StoryBoardWeekText[j++].text = tuple.Value.Item2;
                StoryBoardWeekText[j++].text = tuple.Value.Item4;
            }
        }
    }

    private (string, string, string, string)? GetStoryBoardWeekTextToDict(string name, int week)
    {
        string key = $"{name}{week}";
        if (DictWeekText.TryGetValue(key, out var value))
        {
            return value;
        }
        return null;
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

        CehckedLikeAbility("Kang",0);
        CehckedLikeAbility("Jin",1);
        CehckedLikeAbility("Sul",2);
    }
    public void CehckedLikeAbility(string name, int number)
    {
        int week = Int32.Parse(variableManager?.GetVariableValue($"{name}Week"));
        int LikeAbility = Int32.Parse(variableManager?.GetVariableValue($"{name}LikeAbility"));

        if (LikeAbility >= (week * 10) + 5)
        {
            StoryBoardPossible[number].SetActive(true);
            StoryBoardImPossible[number].SetActive(false);
        }
        else
        {
            StoryBoardPossible[number].SetActive(false);
            StoryBoardImPossible[number].SetActive(true);
        }
    }
    public void SetLikeAbilityAmount()
    {
        int kweek = Int32.Parse(variableManager?.GetVariableValue("KangWeek"));
        int jweek = Int32.Parse(variableManager?.GetVariableValue("JinWeek"));
        int sweek = Int32.Parse(variableManager?.GetVariableValue("SulWeek"));

        LikeAbilityAmount[0].text = ((kweek * 10) + 5).ToString();
        LikeAbilityAmount[1].text = ((jweek * 10) + 5).ToString();
        LikeAbilityAmount[2].text = ((sweek * 10) + 5).ToString();
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
        // 구매 여부 확인 (다른 캐릭터 On인지 확인해야함)
        ///////
        string Selected = variableManager?.GetVariableValue("Selected");
        nowSecretMessage = Selected + "Secret_" + SecretMessageName + "_Buy";
        string buybool = variableManager?.GetVariableValue(nowSecretMessage);
        if (buybool == "False")
        {
            if(CheckBuyByAnotherCharacter(Selected, SecretMessageName))
            {
                UpdateBuySecretMessageUI(SecretMessageName);
                BuySecretMessageUI.SetActive(true);
            }
            else
            { 
                GameObject buyLack = Instantiate(BuyLackPrefab, LackUI.transform);
                Destroy(buyLack, 1f);
            }
        }
        else
        {
            UpdateBuySecretMessageResultUI(Selected, nowSecretMessage.Split('_')[1]);
            SecretMessageResultUI.SetActive(true);
        }
    }
    public bool CheckBuyByAnotherCharacter(string name, string number)
    {
        // name으로 들어온 문자열에 따라 다른 두 문자열을 결정합니다.
        string[] characters = { "Kang", "Jin", "Sul" };
        string firstOther = "", secondOther = "";

        foreach (string character in characters)
        {
            if (character != name)
            {
                if (string.IsNullOrEmpty(firstOther))
                {
                    firstOther = character;
                }
                else
                {
                    secondOther = character;
                    break;
                }
            }
        }

        // 다른 두 캐릭터의 구매 여부를 확인합니다.
        string firstBuy = variableManager?.GetVariableValue(firstOther + "Secret_" + number + "_Buy");
        string secondBuy = variableManager?.GetVariableValue(secondOther + "Secret_" + number + "_Buy");

        // 두 값 모두 false일 때만 true를 반환합니다.
        return firstBuy == "False" && secondBuy == "False";
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
    public void UpdateBuySecretMessageResultUI(string name ,string number)
    {
        string week = variableManager?.GetVariableValue($"{name}Week");
        string key = week+number+name;
        if(SecretMessageLine.ContainsKey(key)) // 해당 키가 myTable 딕셔너리에 있는지 확인
        {
            var tupleValue = SecretMessageLine[key];
            SecretMessgeText2.GetComponent<TypingEffect>().fullText = tupleValue.Item1;
        }
    }
}
