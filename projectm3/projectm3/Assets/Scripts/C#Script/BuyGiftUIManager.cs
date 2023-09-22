using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BuyGiftUIManager : MonoBehaviour
{
    public Image giftImage;
    public Text priceText;
    public Text likeAbilityText;
    public Text nameText;
    public Text giftInfoText;
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
        nameText.text = name;
    }
    public void SetGiftInfo(string giftInfo)
    {
        giftInfoText.text = giftInfo.Replace("\\n", "\n");
    }

}
