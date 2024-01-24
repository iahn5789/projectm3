using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.UI.ProceduralImage;
using Naninovel;
using Naninovel.Commands;

public class TestStartPopupManager : MonoBehaviour
{
    public GameObject TestStartButton;
    public Text NowAbility;
    public Text NeedAbility;
    private ICustomVariableManager variableManager;
    private string name;
    private int money;
    private int week;
    private int LikeAbility;
    private string Count;
    // Start is called before the first frame update
    void Start()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
    }

    public void CheckLikeAbility(string name)
    {
        if (variableManager == null)
            variableManager = Engine.GetService<ICustomVariableManager>();
            
        if (name == "")
        {
            name = variableManager?.GetVariableValue("Selected");
        }
        if(name == "Kang" || name == "Jin" || name == "Sul")
        {
            money = int.Parse(variableManager?.GetVariableValue($"money"));
            week = int.Parse(variableManager?.GetVariableValue($"{name}Week"));
            LikeAbility = int.Parse(variableManager?.GetVariableValue($"{name}LikeAbility"));
            Count = variableManager?.GetVariableValue("PartTimeJob_Count");
            if (LikeAbility >= (week * 10) + 5)
            {
                TestStartButton.SetActive(true);
            }
            else
            {
                CalculatorLikeAbility();
            }
        }
    }
    private bool CheckAnotherLikeAbility()
    {
        string[] characterNames = {"Kang", "Jin", "Sul"};

        foreach (var otherName in characterNames)
        {
            if (otherName != name)
            {
                if (_CheckLikeAbility(otherName))
                {
                    return true;
                }
            }
        }

        return false;
    }
    private bool _CheckLikeAbility(string otherName)
    {
        int week = int.Parse(variableManager?.GetVariableValue($"{otherName}Week"));
        int likeAbility = int.Parse(variableManager?.GetVariableValue($"{otherName}LikeAbility"));

        return (week * 10) + 5 <= likeAbility;
    }
    private void CalculatorLikeAbility()
    {
        if (CheckAnotherLikeAbility())
        {
            TestStartButton.SetActive(false);
            return;
        }
        if(Count != "0")
        {
            if(CalculatorRemaining(money+1000, (((week * 10) + 5) - LikeAbility)))
            {
                OnNotEnough(LikeAbility, (week * 10) + 5);
            }
            else
            {
                BadEnding();
            }
        }
        else
        {
            if(CalculatorRemaining(money, (((week * 10) + 5) - LikeAbility)))
            {
                OnNotEnough(LikeAbility, (week * 10) + 5);
            }
            else
            {
                BadEnding();
            }
        }
    }
    private void OnNotEnough(int now, int need)
    {
        NowAbility.text = now.ToString();
        NeedAbility.text = need.ToString();
        TestStartButton.SetActive(false);
    }
    private void BadEnding()
    {
        variableManager?.SetVariableValue("BadEnding", "true");
        TestStartButton.SetActive(true);
    }
    private bool CalculatorRemaining(int _moeny, int RemainingLikeAbility)
    {
        if (RemainingLikeAbility == 10)
        {
            if (_moeny >= 4000)
            {
                return true;
            }
        }
        else if (RemainingLikeAbility == 9)
        {
            if (_moeny >= 3600)
            {
                return true;
            }
        }
        else if (RemainingLikeAbility == 8)
        {
            if (_moeny >= 3200)
            {
                return true;
            }
        }
        else if (RemainingLikeAbility == 7)
        {
            if (_moeny >= 2800)
            {
                return true;
            }
        }
        else if (RemainingLikeAbility == 6)
        {
            if (_moeny >= 2400)
            {
                return true;
            }
        }
        else if (RemainingLikeAbility == 5)
        {
            if (_moeny >= 2000)
            {
                return true;
            }
        }
        else if (RemainingLikeAbility == 4)
        {
            if (_moeny >= 1600)
            {
                return true;
            }
        }
        else if (RemainingLikeAbility == 3)
        {
            if (_moeny >= 1300)
            {
                return true;
            }
        }
        else if (RemainingLikeAbility == 2)
        {
            if (_moeny >= 900)
            {
                return true;
            }
        }
        else if (RemainingLikeAbility == 1)
        {
            if (_moeny >= 500)
            {
                return true;
            }
        }
         return false;
    }
}
