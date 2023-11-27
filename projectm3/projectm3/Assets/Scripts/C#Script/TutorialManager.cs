using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;
using Naninovel;
using Naninovel.UI;
using Naninovel.Commands;

public class TutorialManager : MonoBehaviour
{
    public Text MoneyUI;    // 현재 돈
    public Text BadgeUI;    // 현재 뱃지
    private ICustomVariableManager variableManager;
    public void setCoinUI()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
        string moneyText = variableManager.GetVariableValue("money");
        MoneyUI.text = moneyText;

        string badgeText = variableManager.GetVariableValue("Badge");
        BadgeUI.text = badgeText;
    }
}
