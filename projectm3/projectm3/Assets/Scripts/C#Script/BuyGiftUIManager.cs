using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Naninovel;
using Naninovel.UI;
using Naninovel.Commands;

public class BuyGiftUIManager : MonoBehaviour
{
    public Text MoneyTextUI;
    public Text KangLikeAbilityText;
    public Text JinLikeAbilityText;
    public Text SulLikeAbilityText;
    public GameObject[] Panel; // Result창 캐릭터 이름 설정하기 위해 active 중인 panel 로 판단하는 부분
    public Image giftImage; // 구매창 아이템 이미지
    public Text priceText; // 구매창 가격
    public Text likeAbilityText; // 구매창 호감도
    public Text nameText; // 구매창 아이템 이름
    public Text giftInfoText; // 구매창 설명
    public Text resultPriceText; // Result창 가격
    public Text resultLikeAbilityText; // Result창 호감도
    public Text resultCharactorName; // Result창 캐릭터 이름
    public GameObject resultCharactorDialog; // Result창 캐릭터 대사
    public Text NowResultPriceText; // Result창 구매 후 금액
    public Text NowResultLikeAbilityText; // Result창 구매 후 호감도
    public Image charactorFace; // Result창 캐릭터 얼굴
    public Image charactorBody; // Result창 캐릭터 몸
    public Sprite[] charactorFaceList; // Result창 캐릭터 얼굴 리스트
    public Sprite[] charactorBodyList; // Result창 캐릭터 몸 리스트
    private Dictionary<string, (string, int, int)> myTable;
    public ICustomVariableManager variableManager;
    private string CharName = "GiftShopUI Object에 캐릭터 판넬을 연결하세요.";
    public void Onshow()
    {
        SetMoneyUI();
        SetLikeAbilityUI();
    }
    public void OnHide()
    {
        
    }
    public void Start()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
        SetCharName();
        // 대사, 몸, 얼굴 0부터 시작
        myTable = new Dictionary<string, (string, int, int)>();
        // 강여진 대사
        myTable.Add("초콜릿1", ("입에 단게 머리에 좋대!", 1, 1));
        myTable.Add("초콜릿2", ("초코렛...오오...", 2, 2));
        myTable.Add("초콜릿3", ("초!코!조!아!", 0, 0));
        myTable.Add("장미 꽃다발1", ("장미의 꽃말은 낭만적인 사랑이래!", 1, 1));
        myTable.Add("장미 꽃다발2", ("장미? 갑자기? 나한테? 고마워!", 2, 2));
        myTable.Add("장미 꽃다발3", ("뭐야 뭐야! 나를 닮은 꽃인거야??", 0, 0));
        myTable.Add("나비 머리핀1", ("와아 마치 살아있는 것 같아!", 1, 1));
        myTable.Add("나비 머리핀2", ("나비야? 나비야~ 나비야~ \n이리 날아 오너라~", 2, 2));
        myTable.Add("나비 머리핀3", ("이건 무슨 나비야?", 0, 0));
        myTable.Add("로맨스 소설1", ("이 이야기의 결말은 어떻게 되는걸까...", 1, 1));
        myTable.Add("로맨스 소설2", ("잠깐! 스포하면 안돼!", 2, 2));
        myTable.Add("로맨스 소설3", ("나도 가끔은 이런 소설의 주인공처럼 사는 상상을해!", 0, 0));
        myTable.Add("헤드폰1", ("헤드셋은 목에거는게 정석이지!", 1, 1));
        myTable.Add("헤드폰2", ("오래쓰면 머리가 눌려서 아파...", 2, 2));
        myTable.Add("헤드폰3", ("확실히 선이 있는게 소리는 조금 더 좋은 것 같아!", 0, 0));
        myTable.Add("레스토랑 상품권1", ("오늘은 네가 쏘는거야?!", 1, 1));
        myTable.Add("레스토랑 상품권2", ("가끔은 이런것도 좋지!", 2, 2));
        myTable.Add("레스토랑 상품권3", ("마침 배고팠는데 잘됐다! 같이가자!", 0, 0));
        myTable.Add("LP 레코드1", ("LP 레코드1", 1, 1));
        myTable.Add("LP 레코드2", ("LP 레코드2", 2, 2));
        myTable.Add("LP 레코드3", ("LP 레코드3", 0, 0));
        myTable.Add("향수1", ("향수1", 1, 1));
        myTable.Add("향수2", ("향수2", 2, 2));
        myTable.Add("향수3", ("향수3", 0, 0));
        // 진다영 대사
        myTable.Add("콜라1", ("콜라1", 1, 1));
        myTable.Add("콜라2", ("콜라2", 2, 2));
        myTable.Add("콜라3", ("콜라3", 0, 0));
        myTable.Add("비둘기 인형1", ("비둘기 인형1", 1, 1));
        myTable.Add("비둘기 인형2", ("비둘기 인형2", 2, 2));
        myTable.Add("비둘기 인형3", ("비둘기 인형3", 0, 0));
        myTable.Add("드라마 이용권1", ("드라마 이용권1", 1, 1));
        myTable.Add("드라마 이용권2", ("드라마 이용권2", 2, 2));
        myTable.Add("드라마 이용권3", ("드라마 이용권3", 0, 0));
        myTable.Add("컬처상품권1", ("컬처상품권1", 1, 1));
        myTable.Add("컬처상품권2", ("컬처상품권2", 2, 2));
        myTable.Add("컬처상품권3", ("컬처상품권3", 0, 0));
        myTable.Add("게임 CD1", ("게임 CD1", 1, 1));
        myTable.Add("게임 CD2", ("게임 CD2", 2, 2));
        myTable.Add("게임 CD3", ("게임 CD3", 0, 0));
        myTable.Add("기계식 키보드1", ("기계식 키보드1", 1, 1));
        myTable.Add("기계식 키보드2", ("기계식 키보드2", 2, 2));
        myTable.Add("기계식 키보드3", ("기계식 키보드3", 0, 0));
        myTable.Add("키 크는 영양제1", ("키 크는 영양제1", 1, 1));
        myTable.Add("키 크는 영양제2", ("키 크는 영양제2", 2, 2));
        myTable.Add("키 크는 영양제3", ("키 크는 영양제3", 0, 0));
        myTable.Add("디지털 카메라1", ("디지털 카메라1", 1, 1));
        myTable.Add("디지털 카메라2", ("디지털 카메라2", 2, 2));
        myTable.Add("디지털 카메라3", ("디지털 카메라3", 0, 0));
        // 설나희 대사
        myTable.Add("불량식품1", ("불량식품1", 1, 1));
        myTable.Add("불량식품2", ("불량식품2", 2, 2));
        myTable.Add("불량식품3", ("불량식품3", 0, 0));
        myTable.Add("츄르1", ("츄르1", 1, 1));
        myTable.Add("츄르2", ("츄르2", 2, 2));
        myTable.Add("츄르3", ("츄르3", 0, 0));
        myTable.Add("고양이 키링1", ("고양이 키링1", 1, 1));
        myTable.Add("고양이 키링2", ("고양이 키링2", 2, 2));
        myTable.Add("고양이 키링3", ("고양이 키링3", 0, 0));
        myTable.Add("도시괴담 백선1", ("도시괴담 백선1", 1, 1));
        myTable.Add("도시괴담 백선2", ("도시괴담 백선2", 2, 2));
        myTable.Add("도시괴담 백선3", ("도시괴담 백선3", 0, 0));
        myTable.Add("캔버스1", ("캔버스1", 1, 1));
        myTable.Add("캔버스2", ("캔버스2", 2, 2));
        myTable.Add("캔버스3", ("캔버스3", 0, 0));
        myTable.Add("죽도1", ("죽도1", 1, 1));
        myTable.Add("죽도2", ("죽도2", 2, 2));
        myTable.Add("죽도3", ("죽도3", 0, 0));
        myTable.Add("비키니1", ("비키니1", 1, 1));
        myTable.Add("비키니2", ("비키니2", 2, 2));
        myTable.Add("비키니3", ("비키니3", 0, 0));
        myTable.Add("오토바이 헬멧1", ("오토바이 헬멧1", 1, 1));
        myTable.Add("오토바이 헬멧2", ("오토바이 헬멧2", 2, 2));
        myTable.Add("오토바이 헬멧3", ("오토바이 헬멧3", 0, 0));
    }
    public void SetMoneyUI()
    {
        MoneyTextUI.text = variableManager?.GetVariableValue("money");
    }
    public void SetLikeAbilityUI()
    {
        KangLikeAbilityText.text = variableManager?.GetVariableValue("KangLikeAbility");
        JinLikeAbilityText.text = variableManager?.GetVariableValue("JinLikeAbility");
        SulLikeAbilityText.text = variableManager?.GetVariableValue("SulLikeAbility");
    }
    public void SetGiftUI(Sprite image)
    {
        giftImage.sprite = image; // 이미지 설정
    }
    public void SetGiftPrice(string price)
    {
        priceText.text = price;
    }
    public void SetLikeAbility(string likeAbility)
    {
        likeAbilityText.text = likeAbility;
    }
    public void SetNameText(string name)
    {
        SetCharName();
        int randomResult = Random.Range(1, 4);
        nameText.text = name;
        Randomdialogue(randomResult);
    }
    public void SetGiftInfo(string giftInfo)
    {
        giftInfoText.text = giftInfo.Replace("\\n", "\n");
    }
    public void SetCharName()
    {
        if (Panel[0].gameObject.activeSelf)
        {
            CharName = "강여진";
        }
        else if (Panel[1].gameObject.activeSelf)
        {
            CharName = "진다영";
        }
        else if (Panel[2].gameObject.activeSelf)
        {
            CharName = "설나희";
        }
    }
    public void SetBuyResultInfo()
    {

        string NowLikeAbility = GetLikeAbilityResult();
        string Nowmoney = GetMoneyResult();
        // 호감도
        resultLikeAbilityText.text = likeAbilityText.text;
        NowResultLikeAbilityText.text = (int.Parse(likeAbilityText.text) + int.Parse(NowLikeAbility)).ToString();
        // 코인
        resultPriceText.text = priceText.text;
        if (priceText.text.Length > 1){
            NowResultPriceText.text = (int.Parse(Nowmoney) - int.Parse(priceText.text.Substring(0, priceText.text.Length - 1).Replace(" ", ""))).ToString() + " C";
        }
        else
        {
            NowResultPriceText.text = "1000";
        }
        // 캐릭터 이름
        resultCharactorName.text = CharName;
        SetMoneyResult(NowResultPriceText.text.Substring(0, NowResultPriceText.text.Length - 1));
        SetLikeAbilityResult(NowResultLikeAbilityText.text);

        SetLikeAbilityUI();
        SetMoneyUI();
    }
    public string GetMoneyResult()
    {
        return variableManager?.GetVariableValue("money");
    }
    public void SetMoneyResult(string money)
    {
        variableManager?.SetVariableValue("money", money);
    }
    public string GetLikeAbilityResult()
    {
        string likeAbility = "10000000";
        if (CharName == "강여진")
        {
            return variableManager?.GetVariableValue("KangLikeAbility");
        }
        else if (CharName == "진다영")
        {
            return variableManager?.GetVariableValue("JinLikeAbility");
        }
        else if (CharName == "설나희")
        {
            return variableManager?.GetVariableValue("SulLikeAbility");
        } 
        return likeAbility;
    }
    public void SetLikeAbilityResult(string likeAbility)
    {
        if (CharName == "강여진")
        {
            variableManager?.SetVariableValue("KangLikeAbility", likeAbility);
        }
        else if (CharName == "진다영")
        {
            variableManager?.SetVariableValue("JinLikeAbility", likeAbility);
        }
        else if (CharName == "설나희")
        {
            variableManager?.SetVariableValue("SulLikeAbility", likeAbility);
        } 
    }
    public void Randomdialogue(int randomResult)
    {
        string key = nameText.text + randomResult;
        if(myTable.ContainsKey(key)) // 해당 키가 myTable 딕셔너리에 있는지 확인
        {
            var tupleValue = myTable[key];
            resultCharactorDialog.GetComponent<TypingEffect>().fullText = tupleValue.Item1;
            charactorBody.sprite = charactorBodyList[tupleValue.Item2];
            charactorFace.sprite = charactorFaceList[tupleValue.Item3];
        }
    }
}
