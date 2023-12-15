using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Naninovel;
using Naninovel.Commands;

public class TestResultUIManager : MonoBehaviour
{
    // Text
    public Text TestScoreText;
    public Text CollectScoreText;
    public Text AddCoinText;
    public Text TotalCoinText;
    public Text AddBadgeText;
    public Text TotalBadgeText;
    public GameObject[] Star;
    public Sprite[] StampList;
    public Image Stamp;
    private ICustomVariableManager variableManager;
    private int _Coin = 500;
    private int _Badge = 1;

    public void SetUI()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
        TestScoreText.text = variableManager?.GetVariableValue("TestScore");
        string _TestCorrect = variableManager?.GetVariableValue("TestCorrect");
        int TestCorrectResult = Int32.Parse(variableManager?.GetVariableValue("TestCorrectResult"));
        CollectScoreText.text = _TestCorrect;
        SetStamp(Int32.Parse(_TestCorrect));
        SetStar(TestCorrectResult);
        int _AddCoin = Int32.Parse(_TestCorrect) * _Coin;
        int _AddBadge = Int32.Parse(_TestCorrect) * _Badge;
        AddCoinText.text = "+ "+(_AddCoin).ToString()+" 개";
        AddBadgeText.text = "+ "+(_AddBadge).ToString()+" 개";
        int _TotalCoin = Int32.Parse(variableManager?.GetVariableValue("money"))+_AddCoin;
        int _TotalBadge = Int32.Parse(variableManager?.GetVariableValue("badge"))+_AddBadge;
        TotalCoinText.text = (_TotalCoin).ToString()+" 개";
        TotalBadgeText.text = (_TotalBadge).ToString()+" 개";
        variableManager?.SetVariableValue("money", _TotalCoin.ToString());
        variableManager?.SetVariableValue("badge", _TotalBadge.ToString());
    }
    private void SetStar(int TestCorrectResult)
    {
        for (int i = 0; i<5; i++)
        {
            bool isCorrect = (TestCorrectResult & (1 << i)) != 0;
            if (isCorrect)
            {
                Star[i*2+1].SetActive(true);
                Star[i*2].SetActive(false);
            }
            else
            {
                Star[i*2+1].SetActive(false);
                Star[i*2].SetActive(true);
            }
        }
    }
    private void SetStamp(int TestCorrectResult)
    {
        Stamp.sprite = StampList[TestCorrectResult];
    }

}
