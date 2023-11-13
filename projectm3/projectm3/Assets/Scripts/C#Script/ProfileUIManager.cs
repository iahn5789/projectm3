using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Naninovel;
using Naninovel.Commands;
using System.IO; 

public class ProfileUIManager : MonoBehaviour
{
    public string characterName;
    private Dictionary<string, (string, int, int)> line;
    public ICustomVariableManager variableManager;
    public Text lineText;
    public int firstLimit; // 첫번째 호감도 최대값(미만)
    public int secondLimit; // 두번째 호감도 최대값(미만)
    public int thirdLimit; // 세번째 호감도 최대값(미만)
    public Image charactorFace; // Result창 캐릭터 얼굴
    public Image charactorBody; // Result창 캐릭터 몸
    public Sprite[] charactorFaceList; // Result창 캐릭터 얼굴 리스트
    public Sprite[] charactorBodyList; // Result창 캐릭터 몸 리스트
    // 주차
    public Text WeekText;
    // 뱃지
    public Text badgeText;
    public GameObject LackUI;
    public GameObject LackPrefab;
    // 스토리
    public Text TitleStoryPopup;
    public Text NumberStoryPopup;
    public RectTransform ScrollContent; // 스토리 창 위치 초기화 용으로
    public TextAsset[] StoryTextString;
    public Text StoryText;
    public GameObject[] Story;
    public GameObject StoryBuyPopUp;
    public GameObject StoryPopUp;
    public Text BuyLikeAbilityText;
    public Text BuyWeekText;
    public Text BuyBadgeText;
    private int NowStory;
    // 정보창
    public GameObject Name;
    public GameObject SecretName;
    public GameObject Grade;
    public GameObject SecretGrade;
    public GameObject Age;
    public GameObject SecretAge;
    public GameObject Birthday;
    public GameObject SecretBirthday;
    public GameObject Height;
    public GameObject SecretHeight;
    public GameObject Kg;
    public GameObject SecretKg;
    public GameObject Constellation;
    public GameObject SecretConstellation;
    public GameObject Flower;
    public GameObject SecretFlower;
    public GameObject FavoriteThing;
    public GameObject SecretFavoriteThing;
    public GameObject HateThing;
    public GameObject SecretHateThing;
    public GameObject FavoriteFood;
    public GameObject SecretFavoriteFood;
    public GameObject HateFood;
    public GameObject SecretHateFood;
    public GameObject Styling;
    public GameObject SecretStyling;
    public GameObject Type;
    public GameObject SecretType;
    public GameObject MBTI;
    public GameObject SecretMBTI;
    public GameObject BloodType;
    public GameObject SecretBloodType;
    public GameObject BandPosition;
    public GameObject SecretBandPosition;
    public GameObject FirstName;
    public GameObject SecretFirstName;
    public GameObject Family;
    public GameObject SecretFamily;
    public GameObject Interest;
    public GameObject SecretInterest;
    public GameObject Food;
    public GameObject SecretFood;
    public GameObject Habit;
    public GameObject SecretHabit;
    public GameObject Money;
    public GameObject SecretMoney;
    public GameObject Hobby;
    public GameObject SecretHobby;
    public GameObject Specialty;
    public GameObject SecretSpecialty;
    public GameObject Dream;
    public GameObject SecretDream;
    public void Start()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
        line = new Dictionary<string, (string, int, int)>();
        // 강여진 대사 몸 얼굴
        line.Add("Kang1", ("밝고 명량한 소녀", 0, 0));
        line.Add("Kang2", ("위험한 가시를 숨긴 소녀", 1, 3));
        line.Add("Kang3", ("슬픈(위태로운) 가시를 숨긴 소녀", 1, 4));
        line.Add("Kang4", ("아름다운 가시를 숨긴 소녀", 2, 2));
        // 설나희 대사
        line.Add("Jin1", ("겉은 차갑지만, 속은 따뜻(?)한 소녀", 0, 0));
        line.Add("Jin2", ("사랑할 줄 모르는 소녀", 2, 0));
        line.Add("Jin3", ("사랑받고 싶은 소녀", 2, 1));
        line.Add("Jin4", ("사랑을 알게 된 소녀", 1, 2));
        // 진다영 대사
        line.Add("Sul1", ("조용하지만 카리스마 있는 소녀", 0, 0));
        line.Add("Sul2", ("꿈을 꾸고 싶은 소녀", 0, 3));
        line.Add("Sul3", ("꿈을 꾸고 있는 소녀", 2, 1));
        line.Add("Sul4", ("꿈을 이루게 된 소녀", 1, 2));
    }
    public void LikeAbilityToLine()
    {
        int LikeAbility = Int32.Parse(variableManager?.GetVariableValue($"{characterName}LikeAbility"));
        if (LikeAbility < firstLimit)
        {
            GetLine($"{characterName}1");
        }
        else if (LikeAbility < secondLimit)
        {
            GetLine($"{characterName}2");
        }
        else if (LikeAbility < thirdLimit)
        {
            GetLine($"{characterName}3");
        }
        else
        {
            GetLine($"{characterName}4");
        }
    }
    public void GetLine(string key)
    {
        if(line.ContainsKey(key)) // 해당 키가 myTable 딕셔너리에 있는지 확인
        {
            var tupleValue = line[key];
            lineText.text = tupleValue.Item1;
            charactorBody.sprite = charactorBodyList[tupleValue.Item2];
            charactorFace.sprite = charactorFaceList[tupleValue.Item3];
        }
    }
    public void UpdateWeek()
    {
        WeekText.text = variableManager?.GetVariableValue($"{characterName}Week");
    }
    public void UpdateBadge()
    {
        badgeText.text = variableManager?.GetVariableValue($"Badge");
    }
    public void UpdateStory()
    {
        for (int i = 1 ; i<10;i++)
        {
            if (CheckBuyStory(i))
            {
                Story[i-1].SetActive(true);
            }
            else
            {
                Story[i-1].SetActive(false);
            }
        }
    }
    public void SetStoryText(int i)
    {
        StoryText.text = StoryTextString[i-1].text;
    }
    public void ClickStory(int i)
    {
        if (CheckBuyStory(i))
        {
            // 구매 팝업 X
            SetRectPosition();
            SetStoryText(i);
            StoryPopUp.SetActive(true);
        }
        else
        {
            // 구매 팝업 O
            string name = "캐릭터 이름";
            StoryBuyPopUp.SetActive(true);
            NowStory = i;
            if (characterName =="Kang")
            {
                name = "강여진";
            }
            else if (characterName =="Jin")
            {
                name = "진다영";
            }
            else if (characterName =="Sul")
            {
                name = "설나희";
            }
            BuyLikeAbilityText.text = $"{name} {i}주차 스토리 완료";
            BuyWeekText.text = $"{name} 호감도 {i*10} 이상";
            if (i == 1)
            {
                BuyBadgeText.text = "필요 뱃지 0개";
            }
            else
            {
                BuyBadgeText.text = "필요 뱃지 3개";
            }
        }
    }
    public void SetRectPosition()
    {
        float x = ScrollContent.anchoredPosition.x;
        ScrollContent.anchoredPosition = new Vector3(x, 0, 0);
    }
    public void SetTitleStoryPopup(Text Title)
    {
        TitleStoryPopup.text = Title.text;
    }
    public void SetNumberStoryPopup(Text Number)
    {
        NumberStoryPopup.text = Number.text;
    }
    public void ClickBuyButton()
    {
        int badge = Int32.Parse(variableManager?.GetVariableValue($"Badge"));
        int LikeAbility = Int32.Parse(variableManager?.GetVariableValue($"{characterName}LikeAbility"));
        int Week = Int32.Parse(variableManager?.GetVariableValue($"{characterName}Week"));
        if ((badge >= 3 && LikeAbility >= 10 * NowStory && Week >= NowStory) && NowStory != 1)
        {
            SetRectPosition();
            variableManager?.SetVariableValue($"Badge",(badge - 3).ToString());
            variableManager?.SetVariableValue($"{characterName}Story_{NowStory}_Buy", "true");
            StoryBuyPopUp.SetActive(false);
            StoryPopUp.SetActive(true);
            SetStoryText(NowStory);
            UpdateBadge();
            UpdateStory();
        }
        else if(NowStory == 1)
        {
            SetRectPosition();
            variableManager?.SetVariableValue($"{characterName}Story_{NowStory}_Buy", "true");
            StoryBuyPopUp.SetActive(false);
            StoryPopUp.SetActive(true);
            SetStoryText(NowStory);
            UpdateBadge();
            UpdateStory();
        }
        else
        {
            GameObject createdLack = Instantiate(LackPrefab, LackUI.transform);
            Destroy(createdLack, 1f);
        }
    }
    public bool CheckBuyStory(int i)
    {
        string status = variableManager?.GetVariableValue($"{characterName}Story_{i}_Buy");
        if (status == "true")
        {
            return true;
        }
        return false;
    }
    public void UpdateSecretProfile()
    {
        int Week = Int32.Parse(variableManager?.GetVariableValue($"{characterName}Week"));
        if (Week>=1)
        {
            OnText(Name, SecretName);
            OnText(Grade, SecretGrade);
            OnText(Age, SecretAge);
            OnText(Birthday, SecretBirthday);
            OnText(Height, SecretHeight);
            OnText(Kg, SecretKg);
            OnText(Constellation, SecretConstellation);
            OnText(Flower, SecretFlower);
        }
        else
        {
            OffText(Name, SecretName);
            OffText(Grade, SecretGrade);
            OffText(Age, SecretAge);
            OffText(Birthday, SecretBirthday);
            OffText(Height, SecretHeight);
            OffText(Kg, SecretKg);
            OffText(Constellation, SecretConstellation);
            OffText(Flower, SecretFlower);
        }
        if (Week>=2)
        {
            Debug.Log("favoriteThing");
            OnText(FavoriteThing, SecretFavoriteThing);
            OnText(HateThing, SecretHateThing);
            OnText(FavoriteFood, SecretFavoriteFood);
            OnText(HateFood, SecretHateFood);
        }
        else
        {
            OffText(FavoriteThing, SecretFavoriteThing);
            OffText(HateThing, SecretHateThing);
            OffText(FavoriteFood, SecretFavoriteFood);
            OffText(HateFood, SecretHateFood);
        }
        if (Week>=3)
        {
            OnText(MBTI, SecretMBTI);
            OnText(BloodType, SecretBloodType);
            OnText(BandPosition, SecretBandPosition);
        }
        else
        {
            OffText(MBTI, SecretMBTI);
            OffText(BloodType, SecretBloodType);
            OffText(BandPosition, SecretBandPosition);
        }
        if (Week>=4)
        {
            OnText(Family, SecretFamily);
            OnText(FirstName, SecretFirstName);
        }
        else
        {
            OffText(Family, SecretFamily);
            OffText(FirstName, SecretFirstName);
        }
        if (Week>=5)
        {
            OnText(Food, SecretFood);
            OnText(Habit, SecretHabit);
            OnText(Interest, SecretInterest);
        }
        else
        {
            OffText(Food, SecretFood);
            OffText(Habit, SecretHabit);
            OffText(Interest, SecretInterest);
        }
        if (Week>=6)
        {
            OnText(Money, SecretMoney);
        }
        else
        {
            OffText(Money, SecretMoney);
        }
        if (Week>=7)
        {
            OnText(Styling, SecretStyling);
        }
        else
        {
            OffText(Styling, SecretStyling);
        }
        if (Week>=8)
        {
            OnText(Specialty, SecretSpecialty);
            OnText(Hobby, SecretHobby);
        }
        else
        {
            OffText(Specialty, SecretSpecialty);
            OffText(Hobby, SecretHobby);
        }
        if (Week>=9)
        {
            OnText(Dream, SecretDream);
            OnText(Type, SecretType);
        }
        else
        {
            OffText(Dream, SecretDream);
            OffText(Type, SecretType);
        }
    }
    public void OnText(GameObject text, GameObject secret)
    {
        text.SetActive(true);
        secret.SetActive(false);
    }
    public void OffText(GameObject text, GameObject secret)
    {
        text.SetActive(false);
        secret.SetActive(true);
    }
}
