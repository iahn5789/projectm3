using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Naninovel.Commands;
using Naninovel;

public class ButtonClickHandler : MonoBehaviour
{
    public GameObject Button_Work_Game_1;

    public void OnButtonClick_Work_Game_1()
    {
        Debug.Log("test");
        var variableManager = Engine.GetService<ICustomVariableManager>();
        variableManager?.SetVariableValue("Start_Timer", "true");
        var inputShowUI = new List<string>() {"PartTimeJobUI"};
        var showUI = new ShowUI{UINames = inputShowUI};
        showUI.ExecuteAsync();
    }
}
