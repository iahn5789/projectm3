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
    // public Text NowAbility;
    // public Text NeedAbility;
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
    // private bool CheckAnotherLikeAbility()
    // {
    //     string[] characterNames = {"Kang", "Jin", "Sul"};

    //     foreach (var otherName in characterNames)
    //     {
    //         if (otherName != name)
    //         {
    //             if (_CheckLikeAbility(otherName))
    //             {
    //                     return true;
    //             }
    //         }
    //     }

    //     return false;
    // }
    // private bool _CheckLikeAbility(string otherName)
    // {
    //     int week = int.Parse(variableManager?.GetVariableValue($"{otherName}Week"));
    //     int likeAbility = int.Parse(variableManager?.GetVariableValue($"{otherName}LikeAbility"));

    //     return (week * 10) + 5 <= likeAbility;
    // }
    private void CalculatorLikeAbility()
    {
        string[] characterNames = {"Kang", "Jin", "Sul"};
        bool anyCharacterMeetsCriteria = false;
        // 각 캐릭터에 대해 호감도 기준 충족 여부를 체크합니다.
        foreach (var characterName in characterNames)
        {
            int charWeek = int.Parse(variableManager?.GetVariableValue($"{characterName}Week"));
            int charLikeAbility = int.Parse(variableManager?.GetVariableValue($"{characterName}LikeAbility"));
            int requiredLikeAbility = (charWeek * 10) + 5;
            // 아르바이트 횟수가 "0"이 아니면 돈을 조정합니다.
            int adjustedMoney = money;
            if(Count != "0")
            {
                adjustedMoney += 1000;
            }

            // 돈의 조정 후 캐릭터가 호감도 기준을 충족하는지 체크합니다.
            if (CalculatorRemaining(adjustedMoney, requiredLikeAbility - charLikeAbility))
            {
                anyCharacterMeetsCriteria = true;
                break; // 한 명이라도 기준을 충족하면 더 이상 체크하지 않고 반복문을 탈출합니다.
            }
            Debug.Log($"{characterName} : {requiredLikeAbility - charLikeAbility} : {adjustedMoney}");
        }

        if (anyCharacterMeetsCriteria)
        {
            // 어떤 캐릭터라도 기준을 충족하면 TestStartButton을 비활성화합니다.
            Debug.Log("비활");
            TestStartButton.SetActive(false);
        }
        else
        {
            // 모든 캐릭터가 기준을 충족하지 않으면 나쁜 결말 로직으로 진행합니다.
            Debug.Log("배드엔딩");
            BadEnding();
        }
    }
    private void BadEnding()
    {
        Debug.Log("BadEnding");
        variableManager?.SetVariableValue("BadEnding", "true");
        TestStartButton.SetActive(true);
    }
    private bool CalculatorRemaining(int _moeny, int RemainingLikeAbility)
    {
        if (RemainingLikeAbility <= 0)
        {
            return true;
        }
        else if (RemainingLikeAbility == 15)
        {
            if (_moeny >= 6000)
            {
                return true;
            }
        }
        else if (RemainingLikeAbility == 14)
        {
            if (_moeny >= 5600)
            {
                return true;
            }
        }
        else if (RemainingLikeAbility == 13)
        {
            if (_moeny >= 5200)
            {
                return true;
            }
        }
        else if (RemainingLikeAbility == 12)
        {
            if (_moeny >= 4800)
            {
                return true;
            }
        }
        else if (RemainingLikeAbility == 11)
        {
            if (_moeny >= 4400)
            {
                return true;
            }
        }
        else if (RemainingLikeAbility == 10)
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
