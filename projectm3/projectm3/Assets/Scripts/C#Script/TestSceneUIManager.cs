using System.Collections;
using System.Collections.Generic;
using System;
using System.Globalization;

using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.UI;
using Naninovel;
using Naninovel.UI;
using Naninovel.Commands;

public class TestSceneUIManager : MonoBehaviour
{
    // 주차 관련 UI
    public TestStartPopupManager TSPM;
    public Text WeekUI;
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
    public AudioSource audioSource;
    // Audio 및 튜토리얼
    public GameObject TutorialObject;
    public GameObject WeekTutorial;
    public GameObject TutorialNoneObject;
    public AudioSource TutorialAudioSource;
    public Animator StoryboardUIAnim;
    public GameObject TestStartPopupUI_Enough;
    public GameObject StoryboardUI;
    public GameObject PartTimeJobUI;
    public GameObject SecretMessageUI;
    public GameObject KangRootDisable;
    public GameObject JinRootDisable;
    public GameObject SulRootDisable;
    // Start is called before the first frame update
    void Start()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
        DictWeekText = new Dictionary<string, (string, string, string, string)>();
        // 제목, 타이틀, Subject n주차 제목,n주차 타이틀,n주차 Subject(주인공 시점), n주차 Subject(강여진시점)
        // 강여진 1주차~9주차?
        DictWeekText.Add("Kang1", ("1주차 제목","드디어 시작된 동아리 생활!","밴드 동아리에 가입해 버렸다. 다룰 수 있는 악기도 없고 노래도 못 부르는데 심지어 내가 없으면 동아리가 해체된다고...?", "더미데이터k"));
        DictWeekText.Add("Kang2", ("2주차 제목","좌충우돌 첫 연습","연습이 끝나고 악기 정리를 하기 위해 여진이와 함께 창고로 갔다. 뒤숭숭한 마음이었지만 여진이의 말을 듣고 기분이 한결 나아졌다.", "드디어 부원들과 함께하는 첫 연습 시간. 압도적으로 처참한 내 노래 실력에도 불구하고 여진이는 괜찮다고 한다."));
        DictWeekText.Add("Kang3", ("3주차 제목","3주차 타이틀","3주차 Subject(주인공 시점)", "3주차 Subject(강여진시점)"));
        DictWeekText.Add("Kang4", ("4주차 제목","4주차 타이틀","4주차 Subject(주인공 시점)", "4주차 Subject(강여진시점)"));
        DictWeekText.Add("Kang5", ("5주차 제목","5주차 타이틀","5주차 Subject(주인공 시점)", "5주차 Subject(강여진시점)"));
        DictWeekText.Add("Kang6", ("6주차 제목","6주차 타이틀","6주차 Subject(주인공 시점)", "6주차 Subject(강여진시점)"));
        DictWeekText.Add("Kang7", ("7주차 제목","7주차 타이틀","7주차 Subject(주인공 시점)", "7주차 Subject(강여진시점)"));
        DictWeekText.Add("Kang8", ("8주차 제목","8주차 타이틀","8주차 Subject(주인공 시점)", "8주차 Subject(강여진시점)"));
        DictWeekText.Add("Kang9", ("9주차 제목","9주차 타이틀","9주차 Subject(주인공 시점)", "9주차 Subject(강여진시점)"));
        DictWeekText.Add("Kang10", ("10주차 제목","10주차 타이틀","10주차 Subject(주인공 시점)", "10주차 Subject(강여진시점)"));
        // 진다영 1주차~9주차?
        DictWeekText.Add("Jin1", ("1주차 제목","드디어 시작된 동아리 생활!","밴드 동아리에 가입해 버렸다. 다룰 수 있는 악기도 없고 노래도 못 부르는데 심지어 내가 없으면 동아리가 해체된다고...?", "더미데이터j"));
        DictWeekText.Add("Jin2", ("2주차 제목","좌충우돌 첫 연습","연습이 끝나고 활동지 정리를 하기 위해 다영이와 함께  교무실로 갔다. 늘 화만 내는 줄 알았던 다영이의 속마음도 들을 수 있었다.", "드디어 부원들과 함께하는 첫 연습 시간. 압도적으로 처참한 내 노래 실력에 다영이는 보컬 교체 제안을 하는데..."));
        DictWeekText.Add("Jin3", ("3주차 제목","3주차 타이틀","3주차 Subject(주인공 시점)", "3주차 Subject(진다영시점)"));
        DictWeekText.Add("Jin4", ("4주차 제목","4주차 타이틀","4주차 Subject(주인공 시점)", "4주차 Subject(진다영시점)"));
        DictWeekText.Add("Jin5", ("5주차 제목","5주차 타이틀","5주차 Subject(주인공 시점)", "5주차 Subject(진다영시점)"));
        DictWeekText.Add("Jin6", ("6주차 제목","6주차 타이틀","6주차 Subject(주인공 시점)", "6주차 Subject(진다영시점)"));
        DictWeekText.Add("Jin7", ("7주차 제목","7주차 타이틀","7주차 Subject(주인공 시점)", "7주차 Subject(진다영시점)"));
        DictWeekText.Add("Jin8", ("8주차 제목","8주차 타이틀","8주차 Subject(주인공 시점)", "8주차 Subject(진다영시점)"));
        DictWeekText.Add("Jin9", ("9주차 제목","9주차 타이틀","9주차 Subject(주인공 시점)", "9주차 Subject(진다영시점)"));
        DictWeekText.Add("Jin10", ("10주차 제목","10주차 타이틀","10주차 Subject(주인공 시점)", "10주차 Subject(진다영시점)"));
        // 설나희 1주차~9주차?
        DictWeekText.Add("Sul1", ("1주차 제목","드디어 시작된 동아리 생활!","밴드 동아리에 가입해 버렸다. 다룰 수 있는 악기도 없고 노래도 못 부르는데 심지어 내가 없으면 동아리가 해체된다고...?", "더미데이터s"));
        DictWeekText.Add("Sul2", ("2주차 제목","좌충우돌 첫 연습","연습이 끝나고 나희 누나와 함께 남아 시작한 동아리방 정리. 무뚝뚝한 줄만 알았던 나희 누나의 색다른 모습도 볼 수 있었다.", "드디어 부원들과 함께하는 첫 연습 시간. 압도적으로 처참한 내 노래 실력을 나희 누나는 오히려 매력 있다고 말한다."));
        DictWeekText.Add("Sul3", ("3주차 제목","어색한 만남","막무가내 대용이를 따라 들어간 백스테이지에서 우연히 나희 누나의 비밀을 알아버렸다. 나... 이제 어떡하면 좋지?", "동아리 연습이 끝난 후, 대용이와 함께 간 콘서트장. 그곳에서 생각지도 못한 의외의 인물을 만나게 된다."));
        DictWeekText.Add("Sul4", ("4주차 제목","시작된 비밀과외","나희 누나와 프리덤을 함께 하기로 한 나는 부원들 몰래 나희 누나에게 비밀과외를 받고 있다. 그런데... 이거 너무 힘든 거 아니야?", "공공연장에서 뜻밖의 만남이 있고 얼마 뒤. 나희 누나와의 어색한 재회에서 나는 생각지도 제안을 듣게 된다."));
        DictWeekText.Add("Sul5", ("5주차 제목","필요한 게 있어","결국 필요한 걸 사지는 못했지만, 나희 누나의 또 다른 모습을 볼 수 있었다. 그런데... 필기구 사러 백화점 가는 건 좀 심하지 않나..?", "오늘도 나희 누나와 함께 연습하던 나는 연습이 끝난 후 갈 곳이 있다는 나희 누나를 따라 어딘가로 향하게 된다."));
        DictWeekText.Add("Sul6", ("6주차 제목","조각난 꿈","나와 함께한 첫 공연에서의 처참한 반응에 상처받은 나희 누나. 그렇지만 우리는 다시 한번 일어서서 함께 걸어가기로 했다.", "나희 누나와 함께하는 프리덤의 첫 공연. 하지만 공연은 생각한 대로 흘러가지 않게 되고 결국 막다른 길에 놓이게 되는데..."));
        DictWeekText.Add("Sul7", ("7주차 제목","일탈과 자유 사이","카페인에 취한 나희 누나와 함께 일탈과 자유 그 사이를 아슬아슬하게 줄타기했다. 이렇게 정체를 공개해도 괜찮은 걸까..?", "자유를 노래하기 위해 자유를 느껴보겠다는 나희 누나. 처음 느껴보는 자유라 그런지 어딘가 불안불안하고 어색해 보인다."));
        DictWeekText.Add("Sul8", ("8주차 제목","푸른 하늘 아래의 고독","역시 삶은 생각한 대로 흘러가지 않는 모양이다. 그렇지만 나희 누나와 나는 도망치지 않기 위해 모두를 놀라게 할 마지막 선택을 준비했다.", "프리덤의 정체가 공개된 후. 결국 우려했던 일들이 벌어지고 만다. 그 속에서 나희 누나는 또 다른 선택을 하게 되는데..."));
        DictWeekText.Add("Sul9", ("9주차 제목","무대는 끝나야 밝아진다","이때까지 걸어온 길은 헛되지 않았다. 나희 누나는 진정한 자유를 찾았고, 나는 나희 누나와 함께하기로 약속했다. 언제까지나...", "눈앞으로 다가온 프리덤 마지막 공연. 한 치 앞도 모르는 상황에서 나희 누나와 나는 다시 한번 진정한 자유를 찾게 된다."));
        DictWeekText.Add("Sul10", ("10주차 제목","에필로그","10주차 Subject(주인공 시점)", "몇 달 후..."));

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
        SecretMessageLine.Add("21Kang", ("나만큼 기타 치려면 못해도 5년은 연습해야 하지 않을까?", 1,1));
        SecretMessageLine.Add("22Kang", ("너도 우리 밴드부의 당당한 일원이야! 숟가락만 올리는 사람이 아니라구!", 2,2));
        SecretMessageLine.Add("23Kang", ("매력..? 하하하... 처음 들어보는\n창법이긴 했어!", 3,2));
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
        SecretMessageLine.Add("21Jin", ("기타가 뭐가 어려워? 베이스에\n비하면 아무것도 아니야!", 1,1));
        SecretMessageLine.Add("22Jin", ("어디 가서 숟가락 올린다는 소리 듣기 싫으면 빨리 연습해!", 2,2));
        SecretMessageLine.Add("23Jin", ("귀 찢어지는 소리가 매력이냐!", 3,2));
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
        SecretMessageLine.Add("21Sul", ("기타는... 배우기 어려워...", 5,0));
        SecretMessageLine.Add("22Sul", ("베이스가 숟가락이면... 그래서...?", 0,1));
        SecretMessageLine.Add("23Sul", ("나는... 목소리 매력 있던데...", 1,2));

        SecretMessageLine.Add("31Sul", ("햄버거..? 별로 안 좋아해...", 0,0));
        SecretMessageLine.Add("32Sul", ("2인 1조가... 효율적이지...", 5,2));
        SecretMessageLine.Add("33Sul", ("헬멧이... 생각보다는 편해...", 2,1));
        SecretMessageLine.Add("41Sul", ("복부에 힘 꽉 줘..!", 3,3));
        SecretMessageLine.Add("42Sul", ("노래 못 부른다고 놀리면... 알지?", 4,1));
        SecretMessageLine.Add("43Sul", ("너무 긴장하지 말고... 자유롭게 해...", 1,3));
        SecretMessageLine.Add("51Sul", ("나 정도면 눈이 맑은 편 아닌가? 아니라고..?", 3,0));
        SecretMessageLine.Add("52Sul", ("고양이... 귀여워...", 2,0));
        SecretMessageLine.Add("53Sul", ("트레이닝복..? 그냥 편해서 입은 건데...", 0,3));
        SecretMessageLine.Add("61Sul", ("내 첫 공연 시간이 8시 30분이었어...", 0,1));
        SecretMessageLine.Add("62Sul", ("...반항하는 거야?", 4,1));
        SecretMessageLine.Add("63Sul", ("고양이 발바닥... 따뜻해...", 2,0));
        SecretMessageLine.Add("71Sul", ("2분이면... 고양이를 쓰다듬을 수 있다고..!", 3,0));
        SecretMessageLine.Add("72Sul", ("그게 벌써 10년이나 지났구나...", 0,2));
        SecretMessageLine.Add("73Sul", ("튀김은... 먹어본 적이 있었나..?", 5,0));
        SecretMessageLine.Add("81Sul", ("2~3주 정도 길게 여행 가고 싶다...", 0,2));
        SecretMessageLine.Add("82Sul", ("고양이를 왜 좋아하냐고..? 좋아하니까!", 1,3));
        SecretMessageLine.Add("83Sul", ("교복이... 작아...", 2,0));
        SecretMessageLine.Add("91Sul", ("시험공부를 3주 전부터 한다고? 공부는 평소에 하는 거 아니었어..?", 6,1));
        SecretMessageLine.Add("92Sul", ("케이크가 디저트라고? 거...거짓말!", 6,2));
        SecretMessageLine.Add("93Sul", ("노래방..? 나 감당할 수 있겠어?", 3,1));
    }

    // Update is called once per frame
    void Update()
    {
        if (variableManager == null)
            variableManager = Engine.GetService<ICustomVariableManager>();
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
        if (variableManager == null)
            variableManager = Engine.GetService<ICustomVariableManager>();
        string name = variableManager?.GetVariableValue("Selected");
        int week = 1;
        if (name != "" && name != null && name != "null")
        {
            week = Int32.Parse(variableManager?.GetVariableValue($"{name}Week"));
        }
        else
        {
            name = variableManager?.GetVariableValue("Selecteded");
            week = Int32.Parse(variableManager?.GetVariableValue($"{name}Week"));
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
        if (variableManager == null)
            variableManager = Engine.GetService<ICustomVariableManager>();
        string moneyText = variableManager.GetVariableValue("money");
        MoneyUI.text = moneyText;

        string countText = variableManager.GetVariableValue("PartTimeJob_Count");
        CountUI.text = countText;
        if (countText == "0")
        {
            Image_End_PartTimeJob.SetActive(true);
        }
        else
        {
            Image_End_PartTimeJob.SetActive(false);
        }
        string badgeText = variableManager.GetVariableValue("Badge");
        BadgeUI.text = badgeText;

        CehckedLikeAbility("Kang",0);
        CehckedLikeAbility("Jin",1);
        CehckedLikeAbility("Sul",2);
        SetActiveTSPM();
    }
    public void SetSelectedValue()
    {
        if (variableManager == null)
            variableManager = Engine.GetService<ICustomVariableManager>();
        string selected = variableManager.GetVariableValue("Selected");
        string selecteded = variableManager.GetVariableValue("Selecteded");
        if (selected != "" && selecteded == "")
        {
            variableManager.SetVariableValue("Selected", "");
            Debug.Log("Selected Null input in SetSelectedValue");
            variableManager.SetVariableValue("Selecteded", selected);
        }
    }
    IEnumerator ResetUIAfterDelay(float delay)
    {
        yield return new WaitForSeconds(delay);
        ResetUI();
    }
    public void ResetUI()
    {
        TestStartPopupUI_Enough.SetActive(false);
        StoryboardUI.SetActive(false);
        PartTimeJobUI.SetActive(false);
        SecretMessageUI.SetActive(false);
    }
    // 이 메서드를 호출하여 코루틴을 시작합니다.
    public void StartResetUIAfterDelay()
    {
        StartCoroutine(ResetUIAfterDelay(3.0f));
    }
    public void SetActiveTSPM()
    {
        string Selected_TSPM = variableManager?.GetVariableValue("Selected");
        TSPM.CheckLikeAbility(Selected_TSPM);
    }
    public void CehckedLikeAbility(string name, int number)
    {
        if (variableManager == null)
            variableManager = Engine.GetService<ICustomVariableManager>();
        if (!Int32.TryParse(variableManager?.GetVariableValue($"{name}Week"), out int week))
            week = 0; // 기본값 설정

        if (!Int32.TryParse(variableManager?.GetVariableValue($"{name}LikeAbility"), out int likeAbility))
            likeAbility = 0; // 기본값 설정

        if (likeAbility >= (week * 10) + 5)
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
    public void SetBlockUI()
    {
        if (variableManager == null)
            variableManager = Engine.GetService<ICustomVariableManager>();
        int week = Int32.Parse(variableManager?.GetVariableValue("KangWeek"));
        string Selected = variableManager?.GetVariableValue("Selected");
        string Selecteded = variableManager?.GetVariableValue("Selecteded");
        if (week >= 3)
        {
            if (Selecteded == "Kang")
            {
                Debug.Log("SetBlockUI Selected == Kang");
                KangRootDisable.SetActive(false);
                JinRootDisable.SetActive(true);
                SulRootDisable.SetActive(true);
            }
            else if (Selecteded == "Jin")
            {
                Debug.Log("SetBlockUI Selected == Jin");
                KangRootDisable.SetActive(true);
                JinRootDisable.SetActive(false);
                SulRootDisable.SetActive(true);
            }
            else if (Selecteded == "Sul")
            {
                Debug.Log("SetBlockUI Selected == Sul");
                KangRootDisable.SetActive(true);
                JinRootDisable.SetActive(true);
                SulRootDisable.SetActive(false);
            }
        }
        else
        {
            KangRootDisable.SetActive(false);
            JinRootDisable.SetActive(false);
            SulRootDisable.SetActive(false);
        }
    }
    public void SetLikeAbilityAmount()
    {
        if (variableManager == null)
            variableManager = Engine.GetService<ICustomVariableManager>();
        int kweek = Int32.Parse(variableManager?.GetVariableValue("KangWeek"));
        int jweek = Int32.Parse(variableManager?.GetVariableValue("JinWeek"));
        int sweek = Int32.Parse(variableManager?.GetVariableValue("SulWeek"));

        LikeAbilityAmount[0].text = ((kweek * 10) + 5).ToString();
        LikeAbilityAmount[1].text = ((jweek * 10) + 5).ToString();
        LikeAbilityAmount[2].text = ((sweek * 10) + 5).ToString();
    }
    public void SetLikeAbilityToText()
    {
        if (variableManager == null)
            variableManager = Engine.GetService<ICustomVariableManager>();
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
        if (variableManager == null)
            variableManager = Engine.GetService<ICustomVariableManager>();
        string Selected = variableManager?.GetVariableValue("Selected");
        bool StoryBoard_Boolen = bool.Parse(variableManager?.GetVariableValue("StoryBoard_In_Boolen"));
        Debug.Log("StoryBoardSelectedCheck : "+StoryBoard_Boolen);
        //StoryBoard_In_Boolen
        if (!SecretMessage.GetCurrentAnimatorStateInfo(0).IsName("SecretMessage_In"))
        {
            if (StoryBoard_Boolen)
            {
                if (Selected == "Kang")
                {
                    //강여진 보드 눌려있는 상태 유지
                    SecretMessage.Play("SecretMessageCheckIn");
                    SetActiveTSPM();
                }
                else if (Selected == "Jin")
                {
                    //진다영 보드 눌려있는 상태 유지
                    SecretMessage.Play("SecretMessageCheckIn");
                    SetActiveTSPM();
                }
                else if (Selected == "Sul")
                {
                    //설나희 보드 눌려있는 상태 유지
                    Debug.Log("Sulllllllllllllllllll");
                    SecretMessage.Play("SecretMessageCheckIn");
                    SetActiveTSPM();
                }
                else if (Selected == "Common")
                {
                    // 전대용 보드 눌려있는 상태 유지
                    SecretMessage.Play("SecretMessageCheckIn");
                    SetActiveTSPM();
                }
                else
                {
                    //안눌려있음
                    Debug.Log("안눌");
                    SecretMessage.Play("SecretMessage_Out");
                }
            }
        }
        else
        {
            Debug.Log("실행중이라고!");
        }
    }
    public void BuySecretMessageExist(string SecretMessageName)
    {
        // 구매 여부 확인 (다른 캐릭터 On인지 확인해야함)
        ///////
        if (variableManager == null)
            variableManager = Engine.GetService<ICustomVariableManager>();
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
        if (variableManager == null)
            variableManager = Engine.GetService<ICustomVariableManager>();
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
        if (variableManager == null)
            variableManager = Engine.GetService<ICustomVariableManager>();
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
        if (variableManager == null)
            variableManager = Engine.GetService<ICustomVariableManager>();
        string week = variableManager?.GetVariableValue($"{name}Week");
        string key = week+number+name;
        if(SecretMessageLine.ContainsKey(key)) // 해당 키가 myTable 딕셔너리에 있는지 확인
        {
            var tupleValue = SecretMessageLine[key];
            SecretMessgeText.GetComponent<TypingEffect>().fullText = tupleValue.Item1;
            variableManager?.SetVariableValue($"SecretMessage_{number}_Buy", tupleValue.Item1);
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
        if (variableManager == null)
            variableManager = Engine.GetService<ICustomVariableManager>();
        string week = variableManager?.GetVariableValue($"{name}Week");
        string key = week+number+name;
        if(SecretMessageLine.ContainsKey(key)) // 해당 키가 myTable 딕셔너리에 있는지 확인
        {
            var tupleValue = SecretMessageLine[key];
            SecretMessgeText2.GetComponent<TypingEffect>().fullText = tupleValue.Item1;
        }
    }
    public void FadeOutAudio_0_5()
    {
        if (audioSource != null)
        {
            StartCoroutine(FadeAudioSource.StartFadeOut(audioSource,0.5f,0f));
        }
    }
    public void FadeOutAudio_1()
    {
        if (audioSource != null)
        {
            StartCoroutine(FadeAudioSource.StartFadeOut(audioSource,1.0f,0f));
        }
    }
    public void FadeOutAudio_2()
    {
        if (audioSource != null)
        {
            StartCoroutine(FadeAudioSource.StartFadeOut(audioSource,2.0f,0f));
        }
    }
    public void FadeInAudio_2()
    {
        if (audioSource != null)
        {
            StartCoroutine(FadeAudioSource.StartFadeIn(audioSource,2.0f,1.0f));
        }
    }
    public void FadeInAudio_1()
    {
        if (audioSource != null)
        {
            StartCoroutine(FadeAudioSource.StartFadeIn(audioSource,1.0f,1.0f));
        }
    }
    public void FadeInAudio_0_5()
    {
        if (audioSource != null)
        {
            StartCoroutine(FadeAudioSource.StartFadeIn(audioSource,0.5f,1.0f));
        }
    }
    public void FadeInAudio_tuto_2()
    {
        if (audioSource != null)
        {
            StartCoroutine(FadeAudioSource.StartFadeIn(TutorialAudioSource,2.0f,1.0f));
        }
    }
    public void FadeOutAudio_tuto_2()
    {
        if (audioSource != null)
        {
            StartCoroutine(FadeAudioSource.StartFadeOut(TutorialAudioSource,2.0f,0f));
        }
    }
    public void TutorialObjectOn()
    {
        if (variableManager == null)
            variableManager = Engine.GetService<ICustomVariableManager>();
        string tutorialvarialble = variableManager?.GetVariableValue($"Tutorial");
        string kweek = variableManager?.GetVariableValue($"KangWeek");
        string jweek = variableManager?.GetVariableValue($"JinWeek");
        string sweek = variableManager?.GetVariableValue($"SulWeek");

        if (kweek == "1" && jweek == "1" && sweek == "1")
        {
            if (tutorialvarialble == "First")
            {
                FadeInAudio_tuto_2();
                TutorialAudioSource.Play();
                TutorialObject.SetActive(true);
                WeekTutorial.SetActive(true);
                TutorialNoneObject.SetActive(false);
            }
            else if(tutorialvarialble == "Last")
            {
                FadeInAudio_tuto_2();
                TutorialAudioSource.Play();
                TutorialObject.SetActive(true);
                WeekTutorial.SetActive(false);
                TutorialNoneObject.SetActive(true);
            }
            else
            {
                TutorialObject.SetActive(false);
                FadeInAudio_1();
                audioSource.Play();
            }
        }
        else
        {
            TutorialObject.SetActive(false);
            FadeInAudio_1();
            audioSource.Play();
            string selected = variableManager.GetVariableValue("Selected");
            string selecteded = variableManager.GetVariableValue("Selecteded");
            if (selected != "" && selecteded == "")
            {
                variableManager.SetVariableValue("Selected", "");
                Debug.Log("Selected Null input in TutorialObjectOn");
                variableManager.SetVariableValue("Selecteded", selected);
            }
        }
    }
    public void TutorialFinish()
    {
        if (variableManager == null)
            variableManager = Engine.GetService<ICustomVariableManager>();
        variableManager?.SetVariableValue($"Tutorial","false");
        StartCoroutine(DeactivateAfterDelay(2f));
    }
    IEnumerator DeactivateAfterDelay(float delay)
    {
        yield return new WaitForSeconds(delay);
        FadeInAudio_2();
        audioSource.Play();
    }
    public void StartButtonClick() // 시험 시작 버튼 클릭시
    {
        SetVariable();
    }
    private void SetVariable()
    {
        if (variableManager == null)
            variableManager = Engine.GetService<ICustomVariableManager>();
        // 선택한 대자보의 다음 주차를 가져옴
        string name = variableManager?.GetVariableValue("Selected");
        int week = Int32.Parse(variableManager?.GetVariableValue($"{name}Week"));
        week += 1;
        string key = $"{name}{week}";
        if (DictWeekText.TryGetValue(key, out var weekInfo))
        {
            variableManager?.SetVariableValue("WeekTitleStart",weekInfo.Item2);
        }
    }
}
