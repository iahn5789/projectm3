using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.UI.ProceduralImage;
using Naninovel;
using Naninovel.Commands;
using EasyTransition;

public class ExamUIManager : MonoBehaviour
{
    // 시험
    private int round = 0;
    private int CorrectAnswers = 0;
    private int score = 100;
    private List<int> numbers = new List<int>();
    private Dictionary<string, string> KQuestionTitleList;
    private Dictionary<string, string> JQuestionTitleList;
    private Dictionary<string, string> SQuestionTitleList;
    private Dictionary<string, string> KQuestionList;
    private Dictionary<string, string> JQuestionList;
    private Dictionary<string, string> SQuestionList;
    private Dictionary<string, string> KAnswerList;
    private Dictionary<string, string> JAnswerList;
    private Dictionary<string, string> SAnswerList;
    private Dictionary<string, string> KCorrectAnswerList;
    private Dictionary<string, string> JCorrectAnswerList;
    private Dictionary<string, string> SCorrectAnswerList;
    private Dictionary<string, bool> SecretMessageLightList;
    public GameObject[] AnswerGameObjectList;
    public GameObject[] AnswerAnimationList;
    public GameObject[] SecretMessageLight;
    public Text QuestionTitle;
    public Text Question;
    public Text[] Answer;
    public Text[] AnswerNumber;
    public string selectAnswer;
    // 타이머
    private float timer = 0f;
    private float targetTime = 30f; // 30초 타이머 설정
    private bool test_start = false;
    public Text timeText;
    public GameObject gauge;
    public GameObject SuccessResult;
    public GameObject FailResult;
    public GameObject TimeOutResult;
    // UI
    public Text RoundUI;
    public Text ScoreUI;
    public Text CorrectNumberUI;
    public GameObject TestResultUI;
    public GameObject QuestionUI;
    public TestResultUIManager testResultUIManager;
    public DemoLoadScene demoLoadScene;
    private ICustomVariableManager variableManager;
    public Animator Answeranimator; // answer 애니메이터 컴포넌트
    public AudioSource audioSource;

    void Start()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
        // 1부터 5까지의 숫자를 리스트에 추가
        for (int i = 0; i < 5; i++)
        {
            numbers.Add(i);
        }
        // 문제 비밀쪽지 연결 (캐릭터이름 앞글자 ,주차 - 1 , 연결되는 문제 ,비밀쪽지 번호)
        SecretMessageLightList = new Dictionary<string, bool>();
        // 강여진
        SecretMessageLightList.Add("K011", true);
        SecretMessageLightList.Add("K032", true);
        SecretMessageLightList.Add("K053", true);
        SecretMessageLightList.Add("K111", true);
        SecretMessageLightList.Add("K122", true);
        SecretMessageLightList.Add("K133", true);
        SecretMessageLightList.Add("K201", true);
        SecretMessageLightList.Add("K202", true);
        SecretMessageLightList.Add("K203", true);
        SecretMessageLightList.Add("K301", true);
        SecretMessageLightList.Add("K302", true);
        SecretMessageLightList.Add("K303", true);
        SecretMessageLightList.Add("K401", true);
        SecretMessageLightList.Add("K402", true);
        SecretMessageLightList.Add("K403", true);
        SecretMessageLightList.Add("K501", true);
        SecretMessageLightList.Add("K502", true);
        SecretMessageLightList.Add("K503", true);
        SecretMessageLightList.Add("K601", true);
        SecretMessageLightList.Add("K602", true);
        SecretMessageLightList.Add("K603", true);
        SecretMessageLightList.Add("K701", true);
        SecretMessageLightList.Add("K702", true);
        SecretMessageLightList.Add("K703", true);
        SecretMessageLightList.Add("K801", true);
        SecretMessageLightList.Add("K802", true);
        SecretMessageLightList.Add("K803", true);
        // 진다영
        SecretMessageLightList.Add("J011", true);
        SecretMessageLightList.Add("J032", true);
        SecretMessageLightList.Add("J053", true);
        SecretMessageLightList.Add("J111", true);
        SecretMessageLightList.Add("J122", true);
        SecretMessageLightList.Add("J133", true);
        SecretMessageLightList.Add("J201", true);
        SecretMessageLightList.Add("J202", true);
        SecretMessageLightList.Add("J203", true);
        SecretMessageLightList.Add("J301", true);
        SecretMessageLightList.Add("J302", true);
        SecretMessageLightList.Add("J303", true);
        SecretMessageLightList.Add("J401", true);
        SecretMessageLightList.Add("J402", true);
        SecretMessageLightList.Add("J403", true);
        SecretMessageLightList.Add("J501", true);
        SecretMessageLightList.Add("J502", true);
        SecretMessageLightList.Add("J503", true);
        SecretMessageLightList.Add("J601", true);
        SecretMessageLightList.Add("J602", true);
        SecretMessageLightList.Add("J603", true);
        SecretMessageLightList.Add("J701", true);
        SecretMessageLightList.Add("J702", true);
        SecretMessageLightList.Add("J703", true);
        SecretMessageLightList.Add("J801", true);
        SecretMessageLightList.Add("J802", true);
        SecretMessageLightList.Add("J803", true);
        // 설나희
        SecretMessageLightList.Add("S011", true);
        SecretMessageLightList.Add("S032", true);
        SecretMessageLightList.Add("S053", true);
        SecretMessageLightList.Add("S111", true);
        SecretMessageLightList.Add("S122", true);
        SecretMessageLightList.Add("S133", true);
        SecretMessageLightList.Add("S201", true);
        SecretMessageLightList.Add("S202", true);
        SecretMessageLightList.Add("S203", true);
        SecretMessageLightList.Add("S301", true);
        SecretMessageLightList.Add("S302", true);
        SecretMessageLightList.Add("S303", true);
        SecretMessageLightList.Add("S401", true);
        SecretMessageLightList.Add("S402", true);
        SecretMessageLightList.Add("S403", true);
        SecretMessageLightList.Add("S501", true);
        SecretMessageLightList.Add("S502", true);
        SecretMessageLightList.Add("S503", true);
        SecretMessageLightList.Add("S601", true);
        SecretMessageLightList.Add("S602", true);
        SecretMessageLightList.Add("S603", true);
        SecretMessageLightList.Add("S701", true);
        SecretMessageLightList.Add("S702", true);
        SecretMessageLightList.Add("S703", true);
        SecretMessageLightList.Add("S801", true);
        SecretMessageLightList.Add("S802", true);
        SecretMessageLightList.Add("S803", true);

        // 문제 타이틀 숫자는 : (주차-1, 라운드 - 1)
        // Kang(50개)
        KQuestionTitleList = new Dictionary<string, string>();
        KQuestionTitleList.Add("00", "다음 보기에 공통점이 있는 인물을 고르시오.");
        KQuestionTitleList.Add("01", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        KQuestionTitleList.Add("02", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        KQuestionTitleList.Add("03", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");
        KQuestionTitleList.Add("04", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");
        KQuestionTitleList.Add("10", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");
        KQuestionTitleList.Add("11", "다음 보기 중 강여진의 입장으로 가장 적절한 것은?");
        KQuestionTitleList.Add("12", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");
        KQuestionTitleList.Add("13", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        KQuestionTitleList.Add("14", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");

        // Jin(50개)
        JQuestionTitleList = new Dictionary<string, string>();
        JQuestionTitleList.Add("00", "다음 보기에 공통점이 있는 인물을 고르시오.");
        JQuestionTitleList.Add("01", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        JQuestionTitleList.Add("02", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        JQuestionTitleList.Add("03", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");
        JQuestionTitleList.Add("04", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");
        JQuestionTitleList.Add("10", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");
        JQuestionTitleList.Add("11", "다음 보기 중 강여진의 입장으로 가장 적절한 것은?");
        JQuestionTitleList.Add("12", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");
        JQuestionTitleList.Add("13", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        JQuestionTitleList.Add("14", "다음 보기에 공통점이 있는 물건을 고르시오.");

        // Sul(50개)
        SQuestionTitleList = new Dictionary<string, string>();
        SQuestionTitleList.Add("00", "다음 보기에 공통점이 있는 인물을 고르시오.");
        SQuestionTitleList.Add("01", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        SQuestionTitleList.Add("02", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        SQuestionTitleList.Add("03", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");
        SQuestionTitleList.Add("04", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");
        SQuestionTitleList.Add("10", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");
        SQuestionTitleList.Add("11", "다음 보기 중 강여진의 입장으로 가장 적절한 것은?");
        SQuestionTitleList.Add("12", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");
        SQuestionTitleList.Add("13", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        SQuestionTitleList.Add("14", "다음 지문을 잘 읽고 올바른 답을 고르시오.");

        SQuestionTitleList.Add("20", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");
        SQuestionTitleList.Add("21", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        SQuestionTitleList.Add("22", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        SQuestionTitleList.Add("23", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        SQuestionTitleList.Add("24", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");
        SQuestionTitleList.Add("30", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        SQuestionTitleList.Add("31", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");
        SQuestionTitleList.Add("32", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        SQuestionTitleList.Add("33", "다음 보기 중 설나희와의 대화에서 가장 적절한 것은?");
        SQuestionTitleList.Add("34", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");
        SQuestionTitleList.Add("40", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        SQuestionTitleList.Add("41", "다음 지문을 잘 읽고 대답한 내용이 아닌 것을 고르시오.");
        SQuestionTitleList.Add("42", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        SQuestionTitleList.Add("43", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        SQuestionTitleList.Add("44", "다음 보기 중 설나희와의 대화에서 가장 적절한 것은?");
        SQuestionTitleList.Add("50", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        SQuestionTitleList.Add("51", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        SQuestionTitleList.Add("52", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");
        SQuestionTitleList.Add("53", "다음 지문을 잘 읽고 설나희의 대화로 올바른 답을 고르시오.");
        SQuestionTitleList.Add("54", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");

        SQuestionTitleList.Add("60", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        SQuestionTitleList.Add("61", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        SQuestionTitleList.Add("62", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");
        SQuestionTitleList.Add("63", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        SQuestionTitleList.Add("64", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        SQuestionTitleList.Add("70", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        SQuestionTitleList.Add("71", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        SQuestionTitleList.Add("72", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");
        SQuestionTitleList.Add("73", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        SQuestionTitleList.Add("74", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");
        SQuestionTitleList.Add("80", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");
        SQuestionTitleList.Add("81", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        SQuestionTitleList.Add("82", "다음 지문을 잘 읽고 올바른 답을 고르시오.");
        SQuestionTitleList.Add("83", "다음 지문을 잘 읽고 빈칸에 들어갈 올바른 답을 고르시오.");
        SQuestionTitleList.Add("84", "다음 지문을 잘 읽고 올바른 답을 고르시오.");

        // 문제 숫자는 : (주차-1, 라운드 - 1)
        // Kang(50개)
        KQuestionList = new Dictionary<string, string>();
        KQuestionList.Add("00", "분홍색\n단발머리\n베이스기타");
        KQuestionList.Add("01", "친구 전대용의 동아리 이름은?");
        KQuestionList.Add("02", "동아리에 내 이름을 등록했다.\n분명 여진이가 동아리실 위치를 알려줬었는데.. \n음.. 어디...였더라...?");
        KQuestionList.Add("03", "OO을 맡길 생각이야!\n아마 맡겨놓으면 제대로 할 수 있을거야!");
        KQuestionList.Add("04", "이렇게 예쁜 여자애가 내손을 잡았어…\n따뜻하고…OOO?");
        KQuestionList.Add("10", "차라리 얘한테 (   ) 가르치는 게 더 빠르겠어.");
        KQuestionList.Add("11", "대충 멜로디만 연주해? 그게 베이스가 할 소리야?\n그러는 베이스야말로 혼자서는 아무것도 못 하잖아!\n기타처럼 단독공연도 못 하면서 (   ) 주제에!");
        KQuestionList.Add("12", "나는 보컬 마음에 들어...\n(   ) 있잖아...");
        KQuestionList.Add("13", "동아리 연습이 끝난 후 강여진과 함께 한 행동은?");
        KQuestionList.Add("14", "내 정신 좀 봐.\n창고에 (   )을/를 두고 온 것 같아...");

        // Jin(50개)
        JQuestionList = new Dictionary<string, string>();
        JQuestionList.Add("00", "분홍색\n단발머리\n베이스기타");
        JQuestionList.Add("01", "친구 전대용의 동아리 이름은?");
        JQuestionList.Add("02", "동아리에 내 이름을 등록했다.\n분명 여진이가 동아리실 위치를 알려줬었는데.. \n음.. 어디...였더라...?");
        JQuestionList.Add("03", "OO을 맡길 생각이야!\n아마 맡겨놓으면 제대로 할 수 있을거야!");
        JQuestionList.Add("04", "이렇게 예쁜 여자애가 내손을 잡았어…\n따뜻하고…OOO?");
        JQuestionList.Add("10", "차라리 얘한테 (   ) 가르치는 게 더 빠르겠어.");
        JQuestionList.Add("11", "대충 멜로디만 연주해? 그게 베이스가 할 소리야?\n그러는 베이스야말로 혼자서는 아무것도 못 하잖아!\n기타처럼 단독공연도 못 하면서 (   ) 주제에!");
        JQuestionList.Add("12", "나는 보컬 마음에 들어...\n(   ) 있잖아...");
        JQuestionList.Add("13", "동아리 연습이 끝난 후 진다영과 함께 한 행동은?");
        JQuestionList.Add("14", "선생님의 책상 위\n책\n오래된");

        // Sul(50개)
        SQuestionList = new Dictionary<string, string>();
        SQuestionList.Add("00", "분홍색\n단발머리\n베이스기타");
        SQuestionList.Add("01", "친구 전대용의 동아리 이름은?");
        SQuestionList.Add("02", "동아리에 내 이름을 등록했다.\n분명 여진이가 동아리실 위치를 알려줬었는데.. \n음.. 어디...였더라...?");
        SQuestionList.Add("03", "OO을 맡길 생각이야!\n아마 맡겨놓으면 제대로 할 수 있을거야!");
        SQuestionList.Add("04", "이렇게 예쁜 여자애가 내손을 잡았어…\n따뜻하고…OOO?");
        SQuestionList.Add("10", "차라리 얘한테 (   ) 가르치는 게 더 빠르겠어.");
        SQuestionList.Add("11", "대충 멜로디만 연주해? 그게 베이스가 할 소리야?\n그러는 베이스야말로 혼자서는 아무것도 못 하잖아!\n기타처럼 단독공연도 못 하면서 (   ) 주제에!");
        SQuestionList.Add("12", "나는 보컬 마음에 들어...\n(   ) 있잖아...");
        SQuestionList.Add("13", "동아리 연습이 끝난 후 설나희와 함께 한 행동은?");
        SQuestionList.Add("14", "여러 음향 신호를 섞는데 사용하는 장비로 동아리실에서 찾아볼 수 있다.\n채널마다 페이더를 움직여서 소리의 크기를 조절하거나\n특정 주파수 대역을 조절할 수 있는 이것은?");
        SQuestionList.Add("20", "나희 누나는 내 말을 들었는지 못 들었는지 대답을 하지 않은 채 나갔다.\n늘 그랬듯, 내 손에 남은 건 (   ) 밖에 없었다.");
        SQuestionList.Add("21", "콘서트 도착 전 전대용이 먹은 음식은?");
        SQuestionList.Add("22", "헬멧을 착용하고 모든 악기를 혼자서\n연주하는 아티스트의 이름은?");
        SQuestionList.Add("23", "친구 전대용의 선물 때문에 무대 뒤로 입장했지만 보안요원에게 걸리고 말았다.\n이 때 보안요원의 수는?");
        SQuestionList.Add("24", "등 뒤로 보이는 우리 학교의 넥타이. 그럴 일이 없다고 생각하지만\n눈에 보이는 모든 게 나희 누나를 가리키고 있었다.\n그리고 보이는 공연 때 봤던 (   )까지.");
        SQuestionList.Add("30", "수업이 끝나고 전대용이 향한 곳은?");
        SQuestionList.Add("31", "나희 누나의 손이 내 (   )을/를 가볍게 누르고 있었다.");
        SQuestionList.Add("32", "설나희가 노래를 부르지 않는 이유는?");
        SQuestionList.Add("33", "혹시 다영이 때문에 그러시는 거에요?\n제가 맨날 욕먹으니까?\n도대체 어딜 봐서 (   )이/가 있다는건데요!");
        SQuestionList.Add("34", "그 공연을 보는 순간만큼은 뭐랄까...\n(   ) 느낌이었어요.");
        SQuestionList.Add("40", "설나희와 동아리실 뒷정리 후 같이 간 곳은?");
        SQuestionList.Add("41", "나희 누나가 음악 취향을 물어보았다.\n하지만 이상형을 물어본 것으로 착각한 나는 엉뚱한 대답을 하게 된다.");
        SQuestionList.Add("42", "설나희가 가장 좋아하는 동물은?");
        SQuestionList.Add("43", "나희 누나와 함께 공연에서 입을 코스튬을 결정했다.\n커플 같아보여 싫어했지만 결국 복장을 통일한 코스튬은?");
        SQuestionList.Add("44", "사이즈 말해주면 내가 준비할게.\n너도 아까 나한테 (   ) 선물로 줬잖아?");
        SQuestionList.Add("50", "공연 대기실에서 라은을 마주쳤다.\n라은이 이 곳에 온 목적은?");
        SQuestionList.Add("51", "라은을 따돌린 후 축제 인파 속에서 본 시계의 시간은?");
        SQuestionList.Add("52", "설나희의 부모님은 딸이 검사가 되길 원했지만\n정작 그녀는 (   )이/가 되길 원했다.");
        SQuestionList.Add("53", "프리덤은... 그냥 일종의 (   )이야...");
        SQuestionList.Add("54", "발을 떼려고 하는 그 순간. 나희 누나가 손을 내밀었다.\n마치... 악수를 하자는 것 처럼.\n부드럽고 (   )했다.");
        SQuestionList.Add("60", "아니... 선생님 저 (   ) 전에 도착했...");
        SQuestionList.Add("61", "설나희가 동아리실 문을 막고 있었던 이유는?");
        SQuestionList.Add("62", "맛있으세요?\n응... 한 (   )만에 먹으니까 더 맛있는 것 같아...");
        SQuestionList.Add("63", "설나희가 지난 주말 동안 한 일은?");
        SQuestionList.Add("64", "축제 거리에서 설나희가 먹지 않은 음식은?");
        SQuestionList.Add("70", "대용이가 반에 찾아와 대뜸 나에게 화를 냈다.\n그 이유는 바로 이것 때문이었는데...");
        SQuestionList.Add("71", "몇 주 동안 여진이와 다영이를 보지도 못했다.\n가장 최근에 동아리 활동을 한 기간을 고르시오.");
        SQuestionList.Add("72", "말씀드릴까요?\n제가 왜 만난 지도 얼마 안 된 사람이랑 몰래 밴드 생활을 했는지?\n제가... 제가... (   ).");
        SQuestionList.Add("73", "설나희가 교무실에서 나간 후 향한 곳은?");
        SQuestionList.Add("74", "마지막 공연 시작할 때... (   )차림으로 나가는 거야!");
        SQuestionList.Add("80", "나희 누나와 함께 무대에 올랐다.\n거의 (   )만에 오른 무대.");
        SQuestionList.Add("81", "설나희의 아버지가 집에서 함께 기다리고 있겠다고 말한 인물은?");
        SQuestionList.Add("82", "설나희가 아버지에게 용돈을 받지 않은 이유는?");
        SQuestionList.Add("83", "이제 (   ) 먹으러 갈까?\n밥 먹었으면 (   ) 먹으러 가야지!");
        SQuestionList.Add("84", "설나희가 식사 후 한 번도 가본 적이 없다고 말하며\n가보고 싶다고 말한 곳은?");

        // 정답 항목 숫자는 : (주차-1, 라운드 - 1, 답 번호 -1)
        // Kang(250개)
        KAnswerList = new Dictionary<string, string>();
        KAnswerList.Add("000", "강여진");
        KAnswerList.Add("001", "진다영");
        KAnswerList.Add("002", "설나희");
        KAnswerList.Add("003", "전대용");
        KAnswerList.Add("004", "한갑수");
        KAnswerList.Add("010", "도서부");
        KAnswerList.Add("011", "프라모델부");
        KAnswerList.Add("012", "서예부");
        KAnswerList.Add("013", "신문부");
        KAnswerList.Add("014", "테니스부");
        KAnswerList.Add("020", "3층 과학실 옆");
        KAnswerList.Add("021", "4층 과학실 옆");
        KAnswerList.Add("022", "4층 음악실 옆");
        KAnswerList.Add("023", "2층 강당 옆");
        KAnswerList.Add("024", "3층 교무실 옆");
        KAnswerList.Add("030", "플룻");
        KAnswerList.Add("031", "호른");
        KAnswerList.Add("032", "심벌");
        KAnswerList.Add("033", "보컬");
        KAnswerList.Add("034", "드럼");
        KAnswerList.Add("040", "말랑해");
        KAnswerList.Add("041", "건조해");
        KAnswerList.Add("042", "촉촉해");
        KAnswerList.Add("043", "끈적해");
        KAnswerList.Add("044", "거칠어");
        KAnswerList.Add("100", "기타");
        KAnswerList.Add("101", "베이스");
        KAnswerList.Add("102", "드럼");
        KAnswerList.Add("103", "키보드");
        KAnswerList.Add("104", "응원단장");
        KAnswerList.Add("110", "숟가락만 올리는");
        KAnswerList.Add("111", "버스만 타는");
        KAnswerList.Add("112", "베짱이 같은");
        KAnswerList.Add("113", "무임승차만 하는");
        KAnswerList.Add("114", "젓가락만 올리는");
        KAnswerList.Add("120", "매력");
        KAnswerList.Add("121", "느낌");
        KAnswerList.Add("122", "여유");
        KAnswerList.Add("123", "깊이");
        KAnswerList.Add("124", "여운");
        KAnswerList.Add("130", "악기 정리");
        KAnswerList.Add("131", "기타 선 정리");
        KAnswerList.Add("132", "창고 청소");
        KAnswerList.Add("133", "기타 강습");
        KAnswerList.Add("134", "악보 정리");
        KAnswerList.Add("140", "목걸이");
        KAnswerList.Add("141", "학생증");
        KAnswerList.Add("142", "가방");
        KAnswerList.Add("143", "지갑");
        KAnswerList.Add("144", "핸드폰");

        // Jin(250개)
        JAnswerList = new Dictionary<string, string>();
        JAnswerList.Add("000", "강여진");
        JAnswerList.Add("001", "진다영");
        JAnswerList.Add("002", "설나희");
        JAnswerList.Add("003", "전대용");
        JAnswerList.Add("004", "한갑수");
        JAnswerList.Add("010", "도서부");
        JAnswerList.Add("011", "프라모델부");
        JAnswerList.Add("012", "서예부");
        JAnswerList.Add("013", "신문부");
        JAnswerList.Add("014", "테니스부");
        JAnswerList.Add("020", "3층 과학실 옆");
        JAnswerList.Add("021", "4층 과학실 옆");
        JAnswerList.Add("022", "4층 음악실 옆");
        JAnswerList.Add("023", "2층 강당 옆");
        JAnswerList.Add("024", "3층 교무실 옆");
        JAnswerList.Add("030", "플룻");
        JAnswerList.Add("031", "호른");
        JAnswerList.Add("032", "심벌");
        JAnswerList.Add("033", "보컬");
        JAnswerList.Add("034", "드럼");
        JAnswerList.Add("040", "말랑해");
        JAnswerList.Add("041", "건조해");
        JAnswerList.Add("042", "촉촉해");
        JAnswerList.Add("043", "끈적해");
        JAnswerList.Add("044", "거칠어");
        JAnswerList.Add("100", "기타");
        JAnswerList.Add("101", "베이스");
        JAnswerList.Add("102", "드럼");
        JAnswerList.Add("103", "키보드");
        JAnswerList.Add("104", "응원단장");
        JAnswerList.Add("110", "숟가락만 올리는");
        JAnswerList.Add("111", "버스만 타는");
        JAnswerList.Add("112", "베짱이 같은");
        JAnswerList.Add("113", "무임승차만 하는");
        JAnswerList.Add("114", "젓가락만 올리는");
        JAnswerList.Add("120", "매력");
        JAnswerList.Add("121", "느낌");
        JAnswerList.Add("122", "여유");
        JAnswerList.Add("123", "깊이");
        JAnswerList.Add("124", "여운");
        JAnswerList.Add("130", "활동지 작성");
        JAnswerList.Add("131", "동아리실 정리");
        JAnswerList.Add("132", "교무실 청소");
        JAnswerList.Add("133", "베이스 강습");
        JAnswerList.Add("134", "악보 정리");
        JAnswerList.Add("140", "졸업앨범");
        JAnswerList.Add("141", "교과서");
        JAnswerList.Add("142", "활동지");
        JAnswerList.Add("143", "생활기록부");
        JAnswerList.Add("144", "출석부");

        // Sul(250개)
        SAnswerList = new Dictionary<string, string>();
        SAnswerList.Add("000", "강여진");
        SAnswerList.Add("001", "진다영");
        SAnswerList.Add("002", "설나희");
        SAnswerList.Add("003", "전대용");
        SAnswerList.Add("004", "한갑수");
        SAnswerList.Add("010", "도서부");
        SAnswerList.Add("011", "프라모델부");
        SAnswerList.Add("012", "서예부");
        SAnswerList.Add("013", "신문부");
        SAnswerList.Add("014", "테니스부");
        SAnswerList.Add("020", "3층 과학실 옆");
        SAnswerList.Add("021", "4층 과학실 옆");
        SAnswerList.Add("022", "4층 음악실 옆");
        SAnswerList.Add("023", "2층 강당 옆");
        SAnswerList.Add("024", "3층 교무실 옆");
        SAnswerList.Add("030", "플룻");
        SAnswerList.Add("031", "호른");
        SAnswerList.Add("032", "심벌");
        SAnswerList.Add("033", "보컬");
        SAnswerList.Add("034", "드럼");
        SAnswerList.Add("040", "말랑해");
        SAnswerList.Add("041", "건조해");
        SAnswerList.Add("042", "촉촉해");
        SAnswerList.Add("043", "끈적해");
        SAnswerList.Add("044", "거칠어");
        SAnswerList.Add("100", "기타");
        SAnswerList.Add("101", "베이스");
        SAnswerList.Add("102", "드럼");
        SAnswerList.Add("103", "키보드");
        SAnswerList.Add("104", "응원단장");
        SAnswerList.Add("110", "숟가락만 올리는");
        SAnswerList.Add("111", "버스만 타는");
        SAnswerList.Add("112", "베짱이 같은");
        SAnswerList.Add("113", "무임승차만 하는");
        SAnswerList.Add("114", "젓가락만 올리는");
        SAnswerList.Add("120", "매력");
        SAnswerList.Add("121", "느낌");
        SAnswerList.Add("122", "여유");
        SAnswerList.Add("123", "깊이");
        SAnswerList.Add("124", "여운");
        SAnswerList.Add("130", "기타 선 정리");
        SAnswerList.Add("131", "악기 정리");
        SAnswerList.Add("132", "전원 끄기");
        SAnswerList.Add("133", "드럼 강습");
        SAnswerList.Add("134", "악보 정리");
        SAnswerList.Add("140", "믹서");
        SAnswerList.Add("141", "이펙터");
        SAnswerList.Add("142", "이퀄라이저");
        SAnswerList.Add("143", "블루투스 스피커");
        SAnswerList.Add("144", "풀레인지 스피커");

        SAnswerList.Add("200", "빗자루");
        SAnswerList.Add("201", "대걸레");
        SAnswerList.Add("202", "쓰레기통");
        SAnswerList.Add("203", "기타선");
        SAnswerList.Add("204", "칠판 지우개");
        SAnswerList.Add("210", "햄버거");
        SAnswerList.Add("211", "피자");
        SAnswerList.Add("212", "치킨");
        SAnswerList.Add("213", "김밥");
        SAnswerList.Add("214", "라면");
        SAnswerList.Add("220", "프리덤");
        SAnswerList.Add("221", "리버티");
        SAnswerList.Add("222", "플라이");
        SAnswerList.Add("223", "스카이");
        SAnswerList.Add("224", "페러것");
        SAnswerList.Add("230", "2명");
        SAnswerList.Add("231", "1명");
        SAnswerList.Add("232", "3명");
        SAnswerList.Add("233", "4명");
        SAnswerList.Add("234", "5명");
        SAnswerList.Add("240", "헬멧");
        SAnswerList.Add("241", "마이크");
        SAnswerList.Add("242", "넥타이");
        SAnswerList.Add("243", "포스터");
        SAnswerList.Add("244", "드럼");

        SAnswerList.Add("300", "신문부 회의");
        SAnswerList.Add("301", "남자 화장실");
        SAnswerList.Add("302", "분식집");
        SAnswerList.Add("303", "PC방");
        SAnswerList.Add("304", "학교 매점");
        SAnswerList.Add("310", "복부");
        SAnswerList.Add("311", "머리");
        SAnswerList.Add("312", "등");
        SAnswerList.Add("313", "팔");
        SAnswerList.Add("314", "목");
        SAnswerList.Add("320", "실력 부족");
        SAnswerList.Add("321", "트라우마");
        SAnswerList.Add("322", "성대결절");
        SAnswerList.Add("323", "부끄러움");
        SAnswerList.Add("324", "이유 없음");
        SAnswerList.Add("330", "재능");
        SAnswerList.Add("331", "매력");
        SAnswerList.Add("332", "힘");
        SAnswerList.Add("333", "멋");
        SAnswerList.Add("334", "실력");
        SAnswerList.Add("340", "자유로운");
        SAnswerList.Add("341", "하나가 되는");
        SAnswerList.Add("342", "압도당하는");
        SAnswerList.Add("343", "시간이 멈춘 듯한");
        SAnswerList.Add("344", "처음 경험한");

        SAnswerList.Add("400", "다있어");
        SAnswerList.Add("401", "백화점");
        SAnswerList.Add("402", "노래방");
        SAnswerList.Add("403", "볼링장");
        SAnswerList.Add("404", "악기샵");
        SAnswerList.Add("410", "맑은 눈");
        SAnswerList.Add("411", "연상");
        SAnswerList.Add("412", "웨이브 머리");
        SAnswerList.Add("413", "카리스마");
        SAnswerList.Add("414", "큰 키");
        SAnswerList.Add("420", "고양이");
        SAnswerList.Add("421", "강아지");
        SAnswerList.Add("422", "햄스터");
        SAnswerList.Add("423", "토끼");
        SAnswerList.Add("424", "다람쥐");
        SAnswerList.Add("430", "트레이닝복");
        SAnswerList.Add("431", "해골옷");
        SAnswerList.Add("432", "메이드복");
        SAnswerList.Add("433", "죄수복");
        SAnswerList.Add("434", "가죽벨트");
        SAnswerList.Add("440", "고양이 키링");
        SAnswerList.Add("441", "막대사탕");
        SAnswerList.Add("442", "고양이 인형");
        SAnswerList.Add("443", "고양이 양말");
        SAnswerList.Add("444", "오토바이");

        SAnswerList.Add("500", "신문부 활동");
        SAnswerList.Add("501", "포토타임");
        SAnswerList.Add("502", "아르바이트");
        SAnswerList.Add("503", "콘서트 관람");
        SAnswerList.Add("504", "화장실 이용");
        SAnswerList.Add("510", "오후 8시 30분");
        SAnswerList.Add("511", "오후 8시 00분");
        SAnswerList.Add("512", "오후 9시 00분");
        SAnswerList.Add("513", "오후 9시 30분");
        SAnswerList.Add("514", "오후 10시 30분");
        SAnswerList.Add("520", "수의사");
        SAnswerList.Add("521", "가수");
        SAnswerList.Add("522", "간호사");
        SAnswerList.Add("523", "드러머");
        SAnswerList.Add("524", "회사원");
        SAnswerList.Add("530", "반항");
        SAnswerList.Add("531", "저항");
        SAnswerList.Add("532", "반격");
        SAnswerList.Add("533", "반대");
        SAnswerList.Add("534", "반란");
        SAnswerList.Add("540", "따뜻했다");
        SAnswerList.Add("541", "포근했다");
        SAnswerList.Add("542", "다정했다");
        SAnswerList.Add("543", "편안했다");
        SAnswerList.Add("544", "따스했다");

        SAnswerList.Add("600", "2분");
        SAnswerList.Add("601", "1분");
        SAnswerList.Add("602", "3분");
        SAnswerList.Add("603", "4분");
        SAnswerList.Add("604", "5분");
        SAnswerList.Add("610", "부끄러워서");
        SAnswerList.Add("611", "무서워서");
        SAnswerList.Add("612", "혼자 있고 싶어서");
        SAnswerList.Add("613", "심심해서");
        SAnswerList.Add("614", "짜증 나서");
        SAnswerList.Add("620", "10년");
        SAnswerList.Add("621", "8년");
        SAnswerList.Add("622", "6년");
        SAnswerList.Add("623", "4년");
        SAnswerList.Add("624", "2년");
        SAnswerList.Add("630", "집에 누워있기");
        SAnswerList.Add("631", "오토바이 타기");
        SAnswerList.Add("632", "공연 준비");
        SAnswerList.Add("633", "쇼핑하기");
        SAnswerList.Add("634", "고양이 돌보기");
        SAnswerList.Add("640", "튀김");
        SAnswerList.Add("641", "어묵");
        SAnswerList.Add("642", "커피");
        SAnswerList.Add("643", "떡볶이");
        SAnswerList.Add("644", "순대");

        SAnswerList.Add("700", "동영상 때문에");
        SAnswerList.Add("701", "혼자 과자 먹어서");
        SAnswerList.Add("702", "배고파서");
        SAnswerList.Add("703", "연락을 안 받아서");
        SAnswerList.Add("704", "이유 없이 그냥");
        SAnswerList.Add("710", "약 2~3주 전");
        SAnswerList.Add("711", "약 1~2주 전");
        SAnswerList.Add("712", "약 3~4주 전");
        SAnswerList.Add("713", "약 4~5주 전");
        SAnswerList.Add("714", "약 5~6주 전");
        SAnswerList.Add("720", "좋아하니까요");
        SAnswerList.Add("721", "답답하니까요");
        SAnswerList.Add("722", "방황하니까요");
        SAnswerList.Add("723", "사랑하니까요");
        SAnswerList.Add("724", "행복하니까요");
        SAnswerList.Add("730", "옥상");
        SAnswerList.Add("731", "동아리실");
        SAnswerList.Add("732", "교실");
        SAnswerList.Add("733", "집");
        SAnswerList.Add("734", "축제 거리");
        SAnswerList.Add("740", "교복");
        SAnswerList.Add("741", "트레이닝복");
        SAnswerList.Add("742", "잠옷");
        SAnswerList.Add("743", "속옷");
        SAnswerList.Add("744", "사복");

        SAnswerList.Add("800", "3주");
        SAnswerList.Add("801", "2주");
        SAnswerList.Add("802", "1주");
        SAnswerList.Add("803", "4주");
        SAnswerList.Add("804", "5주");
        SAnswerList.Add("810", "엄마");
        SAnswerList.Add("811", "고양이");
        SAnswerList.Add("812", "오빠");
        SAnswerList.Add("813", "동생");
        SAnswerList.Add("814", "언니");
        SAnswerList.Add("820", "대금이 들어와서");
        SAnswerList.Add("821", "받고 싶지 않아서");
        SAnswerList.Add("822", "쓸 일이 없어서");
        SAnswerList.Add("823", "아직 많이 남아서");
        SAnswerList.Add("824", "가세가 기울어서");
        SAnswerList.Add("830", "디저트");
        SAnswerList.Add("831", "야식");
        SAnswerList.Add("832", "커피");
        SAnswerList.Add("833", "간식");
        SAnswerList.Add("834", "다른 음식");
        SAnswerList.Add("840", "노래방");
        SAnswerList.Add("841", "당구장");
        SAnswerList.Add("842", "영화관");
        SAnswerList.Add("843", "카페");
        SAnswerList.Add("844", "PC방");

        // 정답 숫자는 : (주차-1, 라운드 - 1)
        // Kang(50개)
        KCorrectAnswerList = new Dictionary<string, string>();
        KCorrectAnswerList.Add("00", "진다영");
        KCorrectAnswerList.Add("01", "신문부");
        KCorrectAnswerList.Add("02", "4층 과학실 옆");
        KCorrectAnswerList.Add("03", "보컬");
        KCorrectAnswerList.Add("04", "거칠어");
        KCorrectAnswerList.Add("10", "기타");
        KCorrectAnswerList.Add("11", "숟가락만 올리는");
        KCorrectAnswerList.Add("12", "매력");
        KCorrectAnswerList.Add("13", "악기 정리");
        KCorrectAnswerList.Add("14", "목걸이");

        // Jin(50개)
        JCorrectAnswerList = new Dictionary<string, string>();
        JCorrectAnswerList.Add("00", "진다영");
        JCorrectAnswerList.Add("01", "신문부");
        JCorrectAnswerList.Add("02", "4층 과학실 옆");
        JCorrectAnswerList.Add("03", "보컬");
        JCorrectAnswerList.Add("04", "거칠어");
        JCorrectAnswerList.Add("10", "기타");
        JCorrectAnswerList.Add("11", "숟가락만 올리는");
        JCorrectAnswerList.Add("12", "매력");
        JCorrectAnswerList.Add("13", "활동지 작성");
        JCorrectAnswerList.Add("14", "졸업앨범");

        // Sul(50개)
        SCorrectAnswerList = new Dictionary<string, string>();
        SCorrectAnswerList.Add("00", "진다영");
        SCorrectAnswerList.Add("01", "신문부");
        SCorrectAnswerList.Add("02", "4층 과학실 옆");
        SCorrectAnswerList.Add("03", "보컬");
        SCorrectAnswerList.Add("04", "거칠어");
        SCorrectAnswerList.Add("10", "기타");
        SCorrectAnswerList.Add("11", "숟가락만 올리는");
        SCorrectAnswerList.Add("12", "매력");
        SCorrectAnswerList.Add("13", "기타 선 정리");
        SCorrectAnswerList.Add("14", "믹서");
        SCorrectAnswerList.Add("20", "빗자루");
        SCorrectAnswerList.Add("21", "햄버거");
        SCorrectAnswerList.Add("22", "프리덤");
        SCorrectAnswerList.Add("23", "2명");
        SCorrectAnswerList.Add("24", "헬멧");
        SCorrectAnswerList.Add("30", "신문부 회의");
        SCorrectAnswerList.Add("31", "복부");
        SCorrectAnswerList.Add("32", "실력 부족");
        SCorrectAnswerList.Add("33", "재능");
        SCorrectAnswerList.Add("34", "자유로운");
        SCorrectAnswerList.Add("40", "다있어");
        SCorrectAnswerList.Add("41", "맑은 눈");
        SCorrectAnswerList.Add("42", "고양이");
        SCorrectAnswerList.Add("43", "트레이닝복");
        SCorrectAnswerList.Add("44", "고양이 키링");
        SCorrectAnswerList.Add("50", "신문부 활동");
        SCorrectAnswerList.Add("51", "오후 8시 30분");
        SCorrectAnswerList.Add("52", "수의사");
        SCorrectAnswerList.Add("53", "반항");
        SCorrectAnswerList.Add("54", "따뜻했다");
        SCorrectAnswerList.Add("60", "2분");
        SCorrectAnswerList.Add("61", "부끄러워서");
        SCorrectAnswerList.Add("62", "10년");
        SCorrectAnswerList.Add("63", "집에 누워있기");
        SCorrectAnswerList.Add("64", "튀김");
        SCorrectAnswerList.Add("70", "동영상 때문에");
        SCorrectAnswerList.Add("71", "약 2~3주 전");
        SCorrectAnswerList.Add("72", "좋아하니까요");
        SCorrectAnswerList.Add("73", "옥상");
        SCorrectAnswerList.Add("74", "교복");
        SCorrectAnswerList.Add("80", "3주");
        SCorrectAnswerList.Add("81", "엄마");
        SCorrectAnswerList.Add("82", "대금이 들어와서");
        SCorrectAnswerList.Add("83", "디저트");
        SCorrectAnswerList.Add("84", "노래방");
    }
    void Update()
    {
        if (test_start)
        {
            // 경과 시간을 업데이트
            timer += Time.deltaTime;
            RectTransform rectTran = gauge.GetComponent<RectTransform>();
            rectTran.SetSizeWithCurrentAnchors(RectTransform.Axis.Horizontal, (targetTime - timer) * 60);
            timeText.text = (Mathf.CeilToInt(targetTime - timer)).ToString();
            // 30초 경과
            if (timer >= targetTime)
            {
                ResultSetActive("timeout");
            }
        }
    }
    public void newTest()
    {
        round = 0;
        CorrectAnswers = 0;
        score = 100;
        variableManager?.SetVariableValue("TestCorrectResult", "0");
        nextExam();
    }

    public void ResultSetActive(string type)
    {
        test_start = false;
        SuccessResult.SetActive(false);
        FailResult.SetActive(false);
        TimeOutResult.SetActive(false);
        if (type == "timeout")
        {
            TimeOutResult.SetActive(true);
            score -= 20;
            StartCoroutine(DeactivateAfterDelay(2f,TimeOutResult));
        }
        else if (type == "success")
        {
            SuccessResult.SetActive(true);
            CorrectAnswers += 1;
            StartCoroutine(DeactivateAfterDelay(2f, SuccessResult));
        }
        else if (type == "fail")
        {
            FailResult.SetActive(true);
            score -= 20;
            StartCoroutine(DeactivateAfterDelay(2f,FailResult));
        }
    }
    IEnumerator DeactivateAfterDelay(float delay, GameObject target)
    {
        yield return new WaitForSeconds(delay);
        target.SetActive(false);
        nextExam();
    }
    public void updateExamUI()
    {
        if (round !=5)
        {
            RoundUI.text = (round+1).ToString();
        }
        else
        {
            RoundUI.text = "5";
        }
        ScoreUI.text = score.ToString();
        CorrectNumberUI.text = CorrectAnswers.ToString();

    }
    public void SetVariableUI()
    {
        if (round !=5)
        {
            Answeranimator.SetTrigger("QuestionIn");
        }
        variableManager?.SetVariableValue("TestScore", ScoreUI.text);
        variableManager?.SetVariableValue("TestCorrect", CorrectNumberUI.text);
    }
    public void nextExam()
    {
        string name = variableManager?.GetVariableValue("Selected");
        int Week = Int32.Parse(variableManager?.GetVariableValue($"{name}Week"));
        updateExamUI();
        SetVariableUI();
        if (round < 5)
        {
            // 시험 업데이트
            timer = 0f;
            for (int j = 0; j< 5;j++)
            {
                ProceduralImage answergameobject = AnswerGameObjectList[j].GetComponent<ProceduralImage>();
                answergameobject.color = Color.white;
                AnswerAnimationList[j].SetActive(false);
                Answer[j].color = new Color(0.2666667f, 0.2666667f, 0.2666667f);
                AnswerNumber[j].color = new Color(0.2666667f, 0.2666667f, 0.2666667f);
            }
            // 시험 문제 출제
            QuestionTitle.text = SetQuestionTilte(name, Week);
            Question.text = SetQuestion(name, Week);
            RandomAnswer(name,Week);
            // 단계 점수 정답 수

            test_start = true;
            selectAnswer = "";
            round = 1 + round;
            SetSecretMessageCheck(name,Week);
        }
        else
        {
            SetResult();
        }
    }
    public void SetResult()
    {
        testResultUIManager.SetUI();
        StartCoroutine(WaitAndActivateUI());
    }
    private string SetQuestionTilte(string name, int Week)
    {
        string key = (Week - 1).ToString() + round.ToString();
        string questionTitle;
        if (name == "Kang")
        {
            if (KQuestionTitleList.TryGetValue(key, out questionTitle))
            {
                return questionTitle.Replace("\\n", "\n");
            }
        }
        if (name == "Jin")
        {
            if (JQuestionTitleList.TryGetValue(key, out questionTitle))
            {
                return questionTitle.Replace("\\n", "\n");
            }
        }
        if (name == "Sul")
        {
            if (SQuestionTitleList.TryGetValue(key, out questionTitle))
            {
                return questionTitle.Replace("\\n", "\n");
            }
        }
        return "Error";
    }
    private string SetQuestion(string name, int Week)
    {
        string key = (Week - 1).ToString() + round.ToString();
        string question;
        string player_name = variableManager?.GetVariableValue("Player_name");
        if (name == "Kang")
        {
            if (KQuestionList.TryGetValue(key, out question))
            {
                return question.Replace("\\n", "\n").Replace("#PlayerName$", player_name);
            }
        }
        if (name == "Jin")
        {
            if (JQuestionList.TryGetValue(key, out question))
            {
                return question.Replace("\\n", "\n").Replace("#PlayerName$", player_name);
            }
        }
        if (name == "Sul")
        {
            if (SQuestionList.TryGetValue(key, out question))
            {
                return question.Replace("\\n", "\n").Replace("#PlayerName$", player_name);
            }
        }
        return "Error";
    }
    public void RandomAnswer(string name, int Week)
    {
        string key = (Week - 1).ToString() + round.ToString();
        string _Answer;
        // Fisher-Yates 셔플 알고리즘을 사용하여 리스트를 섞음
        for (int i = numbers.Count - 1; i > 0; i--)
        {
            int j = UnityEngine.Random.Range(0, i + 1); // UnityEngine.Random 명시
            int temp = numbers[i];
            numbers[i] = numbers[j];
            numbers[j] = temp;
        }
        if (name == "Kang")
        {
            for (int i = 0; i < 5; i++)
            {
                if (KAnswerList.TryGetValue(key + numbers[i].ToString(), out _Answer))
                {
                    Answer[i].text = _Answer;
                }
            }
        }
        else if (name == "Jin")
        {
            for (int i = 0; i < 5; i++)
            {
                if (JAnswerList.TryGetValue(key + numbers[i].ToString(), out _Answer))
                {
                    Answer[i].text = _Answer;
                }
            }
        }
        else if (name == "Sul")
        {
            for (int i = 0; i < 5; i++)
            {
                if (SAnswerList.TryGetValue(key + numbers[i].ToString(), out _Answer))
                {
                    Answer[i].text = _Answer;
                }
            }
        }
        // 리스트에서 처음 5개의 숫자를 가져와 사용
    }
    private IEnumerator WaitAndActivateUI()
    {
        demoLoadScene.LoadScene("projectm3");
    
        // 0.3초 기다림
        yield return new WaitForSeconds(2f);
    
        TestResultUI.SetActive(true);
        QuestionUI.SetActive(false);
    }
    public void CheckSecretMessage(int i)
    {
        string buyCheck = variableManager?.GetVariableValue($"SecretMessage{i}");
        if (buyCheck == "true")
        {
            // 샀을때 animation이 on 되거나 setactive가 on
        }
    }
    public void SelectedAnswerText(Text selectText)
    {
        selectAnswer = selectText.text;
    }
    // 정답 선택시 애니메이션 및 색 변경?
    public void OnSelectedAnswer(int i)
    {
        for (int j = 0; j< 5;j++)
        {
            if (j == i)
            {
                ProceduralImage answergameobject = AnswerGameObjectList[j].GetComponent<ProceduralImage>();
                answergameobject.color = new Color(0.3137f, 0.5176f, 0.9804f);
                AnswerAnimationList[j].SetActive(true);
                Answer[j].color = Color.white;
                AnswerNumber[j].color = Color.white;
            }
            else
            {
                ProceduralImage answergameobject = AnswerGameObjectList[j].GetComponent<ProceduralImage>();
                answergameobject.color = Color.white;
                AnswerAnimationList[j].SetActive(false);
                Answer[j].color = new Color(0.2666667f, 0.2666667f, 0.2666667f);
                AnswerNumber[j].color = new Color(0.2666667f, 0.2666667f, 0.2666667f);
            }
        }
    }
    public void CheckCollectExam()
    {
        string name = variableManager?.GetVariableValue("Selected");
        int Week = Int32.Parse(variableManager?.GetVariableValue($"{name}Week"));
        string key = (Week - 1).ToString() + (round - 1).ToString();
        string CorrectAnswer;
        if (selectAnswer == "")
        {
            // 아무것도 선택 안했을때 여기 들어옴
            return;
        }

        if (name == "Kang")
        {
            if (KCorrectAnswerList.TryGetValue(key, out CorrectAnswer))
            {
                if (selectAnswer == CorrectAnswer)
                {
                    AppendTestCorrectResult((int)Math.Pow(2, round - 1));
                    ResultSetActive("success");
                }
                else
                {
                    ResultSetActive("fail");
                }
            }
        }
        else if(name == "Jin")
        {
            if (JCorrectAnswerList.TryGetValue(key, out CorrectAnswer))
            {
                if (selectAnswer == CorrectAnswer)
                {
                    AppendTestCorrectResult((int)Math.Pow(2, round - 1));
                    ResultSetActive("success");
                }
                else
                {
                    ResultSetActive("fail");
                }
            }
        }
        else if(name == "Sul")
        {
            if (SCorrectAnswerList.TryGetValue(key, out CorrectAnswer))
            {
                if (selectAnswer == CorrectAnswer)
                {
                    AppendTestCorrectResult((int)Math.Pow(2, round - 1));
                    ResultSetActive("success");
                }
                else
                {
                    ResultSetActive("fail");
                }
            }
        }
    }
    public void AppendTestCorrectResult(int Add)
    {
        int TestCorrectResult = Int32.Parse(variableManager?.GetVariableValue("TestCorrectResult"));
        variableManager?.SetVariableValue("TestCorrectResult", (Add+TestCorrectResult).ToString());

    }
    public void SetSecretMessageCheck(string name, int week)
    {
        string key = name.Substring(0,1)+(week - 1).ToString() + round.ToString();
        bool CorrectAnswer;
        for(int i =0;i<3;i++)
        {
            SecretMessageLight[i].SetActive(false);
            string KSecretMessageBuy = variableManager?.GetVariableValue("KangSecret_" + (i+1).ToString() + "_Buy");
            string SSecretMessageBuy = variableManager?.GetVariableValue("SulSecret_" + (i+1).ToString() + "_Buy");
            string JSecretMessageBuy = variableManager?.GetVariableValue("JinSecret_" + (i+1).ToString() + "_Buy");
            if (KSecretMessageBuy == "true")
            {
                if (SecretMessageLightList.TryGetValue(key + (i+1).ToString(), out CorrectAnswer))
                {
                    SecretMessageLight[i].SetActive(CorrectAnswer);
                }
            }
            else if (SSecretMessageBuy == "true")
            {
                if (SecretMessageLightList.TryGetValue(key + (i+1).ToString(), out CorrectAnswer))
                {
                    SecretMessageLight[i].SetActive(CorrectAnswer);
                }
            }
            else if (JSecretMessageBuy == "true")
            {
                if (SecretMessageLightList.TryGetValue(key + (i+1).ToString(), out CorrectAnswer))
                {
                    SecretMessageLight[i].SetActive(CorrectAnswer);
                }
            }
        }
    }
    public void FadeInAudio()
    {
        if (audioSource != null)
        {
            StartCoroutine(FadeAudioSource.StartFadeIn(audioSource,2f,1f));
        }
    }
    public void FadeOutAudio()
    {
        if (audioSource != null)
        {
            StartCoroutine(FadeAudioSource.StartFadeOut(audioSource,0.5f,0f));
        }
    }
    public void StartButtonClick()
    {
        SetVariable();
    }
    private void SetVariable()
    {
        // 선택한 대자보의 다음 주차를 보여줌
        string name = variableManager?.GetVariableValue("Selected");
        int week = Int32.Parse(variableManager?.GetVariableValue($"{name}Week"));
        week += 1;
        variableManager?.SetVariableValue($"{name}Week",week.ToString());
    }
}
