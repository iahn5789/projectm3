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
        // 강여진 대사 -1, -1
        myTable.Add("초콜릿1", ("입에 단게 머리에 좋대!", 2, 6));
        myTable.Add("초콜릿2", ("초코렛...오오...", 0, 0));
        myTable.Add("초콜릿3", ("초!코!조!아!", 1, 1));
        myTable.Add("장미 꽃다발1", ("장미의 꽃말은 낭만적인 사랑이래!", 0, 0));
        myTable.Add("장미 꽃다발2", ("장미? 갑자기? 나한테? 고마워!", 2, 5));
        myTable.Add("장미 꽃다발3", ("뭐야 뭐야! 나를 닮은 꽃인거야??", 1, 1));
        myTable.Add("나비 머리핀1", ("와아 마치 살아있는 것 같아!", 0, 1));
        myTable.Add("나비 머리핀2", ("나비야? 나비야~ 나비야~ 이리 날아 오너라~", 1, 0));
        myTable.Add("나비 머리핀3", ("이건 무슨 나비야?", 2, 6));
        myTable.Add("로맨스 소설1", ("이 이야기의 결말은 어떻게 되는걸까...", 2, 6));
        myTable.Add("로맨스 소설2", ("잠깐! 스포하면 안돼!", 0, 3));
        myTable.Add("로맨스 소설3", ("나도 가끔은 이런 소설의 주인공처럼 사는 상상을해!", 1, 2));
        myTable.Add("헤드폰1", ("헤드셋은 목에거는게 정석이지!", 1, 1));
        myTable.Add("헤드폰2", ("오래쓰면 머리가 눌려서 아파...", 2, 2));
        myTable.Add("헤드폰3", ("확실히 선이 있는게 소리는 조금 더 좋은 것 같아!", 0, 0));
        myTable.Add("레스토랑 상품권1", ("오늘은 네가 쏘는거야?!", 2, 5));
        myTable.Add("레스토랑 상품권2", ("가끔은 이런것도 좋지!", 0, 0));
        myTable.Add("레스토랑 상품권3", ("마침 배고팠는데 잘됐다! 같이가자!", 1, 1));
        myTable.Add("LP 레코드1", ("뭐야? 레코드? 이거 들으려면 턴테이블이 있어야하지 않아?", 1, 6));
        myTable.Add("LP 레코드2", ("뭔가 굉장히 고급스러워 보이는데... 생각보다 엄청 커!", 0, 1));
        myTable.Add("LP 레코드3", ("이게 뭐야? LP? 이걸로 디제잉을 한다고? 슝슝?", 2, 5));
        myTable.Add("향수1", ("향수는 조금 낮설어!", 0, 6));
        myTable.Add("향수2", ("와! 이거 향 엄청좋다!", 1, 5));
        myTable.Add("향수3", ("은은하게 퍼지는게 나랑 잘 어울리는거 같아!", 2, 1));
        // 진다영 대사 +2, +7
        myTable.Add("콜라1", ("콜라는 X카보다는 X시지.", 3, 8));
        myTable.Add("콜라2", ("뭐야? 난 제로 말고 그냥 콜라가 더 좋아!", 4, 9));
        myTable.Add("콜라3", ("이 썩는다고? 죽을래?", 5, 11));
        myTable.Add("비둘기 인형1", ("너 내가 비둘기 싫어하는건 알아...? 아무튼 고마워.", 4, 10));
        myTable.Add("비둘기 인형2", ("이거 움직이는건 아니지?", 3, 13));
        myTable.Add("비둘기 인형3", ("비둘기!! 죽어! 죽어!", 5, 12));
        myTable.Add("드라마 이용권1", ("너도 아침의 유혹 봤어...?", 4, 10));
        myTable.Add("드라마 이용권2", ("미드..영드보다는 역시 한드...", 3, 8));
        myTable.Add("드라마 이용권3", ("그 둘이 헤어졌어! 이런 결말을 원했던 게 아닌데!!!", 5, 12));
        myTable.Add("컬처상품권1", ("이거로 책사는사람은 잘 못본거같아...", 4, 13));
        myTable.Add("컬처상품권2", ("오 머리좀 썼네? 여기저기 다 쓸 수 있는거잖아?", 3, 9));
        myTable.Add("컬처상품권3", ("이거 꼭 필요한때는 없다니까...", 3, 11));
        myTable.Add("게임 CD1", ("CD? 오랜만에 보는데?", 3, 8));
        myTable.Add("게임 CD2", ("아직도 이런걸 파는곳이 있어?", 3, 13));
        myTable.Add("게임 CD3", ("이거... 그렇고 그런 게임 아니야?", 4, 10));
        myTable.Add("기계식 키보드1", ("이거 내가 누르기엔 조금 무겁던데...그래도 고마워!", 4, 10));
        myTable.Add("기계식 키보드2", ("소리가 생각보다 큰데?", 3, 13));
        myTable.Add("기계식 키보드3", ("요즘은 불빛도 들어와? 밤에 쓰기엔 좋겠네!", 3, 8));
        myTable.Add("키 크는 영양제1", ("너 나 놀리는거지?", 4, 10));
        myTable.Add("키 크는 영양제2", ("못큰게 아니고 안큰거야!", 5, 11));
        myTable.Add("키 크는 영양제3", ("죽는다 진짜...?", 5, 10));
        myTable.Add("디지털 카메라1", ("카메라? 진짜로? 나 주는거야?", 4, 8));
        myTable.Add("디지털 카메라2", ("핸드폰 말고 이런 카메라로 찍는게 더 잘나온다니까?", 5, 9));
        myTable.Add("디지털 카메라3", ("너도...찍어줄까??", 4, 10));
        // 설나희 대사 +5, +13
        myTable.Add("불량식품1", ("이거 어릴때 엄마가 못먹게했는데...", 8, 19));
        myTable.Add("불량식품2", ("가끔은 이런것도 좋지...", 7, 15));
        myTable.Add("불량식품3", ("불량식품...", 6, 14));
        myTable.Add("츄르1", ("고양이는 츄르를 좋아해...", 9, 15));
        myTable.Add("츄르2", ("내가 먹을거 아니야...", 6, 20));
        myTable.Add("츄르3", ("츄르...", 8, 14));
        myTable.Add("고양이 키링1", ("고양이가 세상을 구할거야...", 7, 17));
        myTable.Add("고양이 키링2", ("샴인가봐 얼굴이 검은색이네...", 8, 16));
        myTable.Add("고양이 키링3", ("고양이...", 6, 14));
        myTable.Add("도시괴담 100선1", ("괴담은...별로 안 무서워 하는데...", 9, 18));
        myTable.Add("도시괴담 100선2", ("지하철이 멈추지 않는 간이역의 비밀...", 8, 14));
        myTable.Add("도시괴담 100선3", ("도시 괴담...", 6, 14));
        myTable.Add("캔버스1", ("너도 한장 그려줄까...?", 9, 16));
        myTable.Add("캔버스2", ("확실히 스케치북보다 캔버스에 그리는게 더 좋아...", 7, 15));
        myTable.Add("캔버스3", ("캔버스...", 6, 14));
        myTable.Add("죽도1", ("우리집에 진검도 있어...", 6, 15));
        myTable.Add("죽도2", ("죽도로 죽도록 맞아본적 있어...?", 9, 17));
        myTable.Add("죽도3", ("죽도...", 7, 14));
        myTable.Add("비키니1", ("...무슨뜻이야...?", 8, 20));
        myTable.Add("비키니2", ("이거...나한테는 조금 작아...", 6, 16));
        myTable.Add("비키니3", ("비키니...?", 6, 14));
        myTable.Add("오토바이 헬멧1", ("헬멧은 이미 있는데... 그래도 고마워...", 7, 15));
        myTable.Add("오토바이 헬멧2", ("내가 쓰는거랑 디자인이 조금 다르네...", 8, 14));
        myTable.Add("오토바이 헬멧3", ("헬멧...", 6, 14));
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
