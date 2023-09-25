using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Naninovel;
using Naninovel.Commands;

public class CheckPriceBuyItemManager : MonoBehaviour
{
    public GameObject BuyItemUI;
    public GameObject BuyResultUI;
    public GameObject SetBuyResultInfoObject;
    public Text CoinText;
    public void CheckPrice()
    {
        ICustomVariableManager variableManager = Engine.GetService<ICustomVariableManager>();
        string money = variableManager?.GetVariableValue("money");
        if (int.Parse(CoinText.text.Substring(0, CoinText.text.Length - 1).Replace(" ", "")) <=int.Parse(money))
        {
            BuyItemUI.SetActive(false);
            BuyResultUI.SetActive(true);
            BuyGiftUIManager buyGiftManager = SetBuyResultInfoObject.GetComponent<BuyGiftUIManager>();
            buyGiftManager.SetBuyResultInfo();
        }
    }
}
