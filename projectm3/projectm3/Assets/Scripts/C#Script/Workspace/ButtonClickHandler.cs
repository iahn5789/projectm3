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
        var variableManager = Engine.GetService<ICustomVariableManager>();
        variableManager?.SetVariableValue("Start_Timer", "true");
        variableManager?.SetVariableValue("Create_Object", "true");
        variableManager?.SetVariableValue("PartTimeJob_Object", "1");
        var inputShowUI = new List<string>() {"PartTimeJobUI"};
        var showUI = new ShowUI{UINames = inputShowUI};
        showUI.ExecuteAsync();
    }
    public void OnButtonClick_Work_Game_2()
    {
        var variableManager = Engine.GetService<ICustomVariableManager>();
        variableManager?.SetVariableValue("Start_Timer", "true");
        variableManager?.SetVariableValue("Create_Object", "true");
        variableManager?.SetVariableValue("PartTimeJob_Object", "2");
        var inputShowUI = new List<string>() {"PartTimeJobUI"};
        var showUI = new ShowUI{UINames = inputShowUI};
        showUI.ExecuteAsync();
    }
    public void OnButtonClick_Work_Game_3()
    {
        var variableManager = Engine.GetService<ICustomVariableManager>();
        variableManager?.SetVariableValue("Start_Timer", "true");
        variableManager?.SetVariableValue("Create_Object", "true");
        variableManager?.SetVariableValue("PartTimeJob_Object", "3");
        var inputShowUI = new List<string>() {"PartTimeJobUI"};
        var showUI = new ShowUI{UINames = inputShowUI};
        showUI.ExecuteAsync();
    }
    public void OnButtonClick_Work_Game_4()
    {
        var variableManager = Engine.GetService<ICustomVariableManager>();
        variableManager?.SetVariableValue("Start_Timer", "true");
        variableManager?.SetVariableValue("Create_Object", "true");
        variableManager?.SetVariableValue("PartTimeJob_Object", "4");
        var inputShowUI = new List<string>() {"PartTimeJobUI"};
        var showUI = new ShowUI{UINames = inputShowUI};
        showUI.ExecuteAsync();
    }
    public void OnButtonClick_Work_Game_5()
    {
        var variableManager = Engine.GetService<ICustomVariableManager>();
        variableManager?.SetVariableValue("Start_Timer", "true");
        variableManager?.SetVariableValue("Create_Object", "true");
        variableManager?.SetVariableValue("PartTimeJob_Object", "5");
        var inputShowUI = new List<string>() {"PartTimeJobUI"};
        var showUI = new ShowUI{UINames = inputShowUI};
        showUI.ExecuteAsync();
    }
}
