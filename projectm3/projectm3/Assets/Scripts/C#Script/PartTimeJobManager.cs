using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.UI.ProceduralImage;
using Naninovel.Commands;
using Naninovel;

public class PartTimeJobManager : MonoBehaviour
{
    
    public Text SuccessPercentText1;
    public Text SuccessPercentText2;
    public Text SuccessPercentText3;
    public Text SuccessPercentText4;
    public Text SuccessPercentText5;
    private ICustomVariableManager variableManager;
    public void Update_Success_Percent()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
        SuccessPercentText1.text = Success_Percent("1");
        SuccessPercentText2.text = Success_Percent("2");
        SuccessPercentText3.text = Success_Percent("3");
        SuccessPercentText4.text = Success_Percent("4");
        SuccessPercentText5.text = Success_Percent("5");
    }
    public string Success_Percent(string _PartTimeJob_Object)
    {
        int _Total_Count = int.Parse(variableManager?.GetVariableValue($"PartTimeJob_{_PartTimeJob_Object}_Total"));
        int _Success_Count = int.Parse(variableManager?.GetVariableValue($"PartTimeJob_{_PartTimeJob_Object}_Success"));
        if (_Total_Count == 0 && _Success_Count == 0)
        {
            return "-";
        }
        else if(_Success_Count == 0)
        {
            return "0%";
        }

        float successPercent = (float)_Success_Count / _Total_Count * 100;
        successPercent = Mathf.Round(successPercent * 10) / 10;
        return successPercent.ToString("F1") + "%"; // "F1" 포맷을 사용하여 소수점 한 자리 표시
    }
}
