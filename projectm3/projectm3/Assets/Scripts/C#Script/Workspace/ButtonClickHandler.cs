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
        string count = variableManager?.GetVariableValue("PartTimeJob_Count");
        if (count == "0")
        {
            return;
        }
        variableManager?.SetVariableValue("Start_Timer", "true");
        variableManager?.SetVariableValue("Create_Object", "true");
        variableManager?.SetVariableValue("PartTimeJob_Object", "1");
        variableManager?.SetVariableValue("PartTimeJob_Speed", "1000");
        var inputShowUI = new List<string>() {"PartTimeJobUI"};
        var showUI = new ShowUI{UINames = inputShowUI};
        showUI.ExecuteAsync();

        changeCount(count);
    }
    public void OnButtonClick_Work_Game_2()
    {
        var variableManager = Engine.GetService<ICustomVariableManager>();
        string count = variableManager?.GetVariableValue("PartTimeJob_Count");
        if (count == "0")
        {
            return;
        }
        variableManager?.SetVariableValue("Start_Timer", "true");
        variableManager?.SetVariableValue("Create_Object", "true");
        variableManager?.SetVariableValue("PartTimeJob_Object", "2");
        variableManager?.SetVariableValue("PartTimeJob_Speed", "2000");
        var inputShowUI = new List<string>() {"PartTimeJobUI"};
        var showUI = new ShowUI{UINames = inputShowUI};
        showUI.ExecuteAsync();

        changeCount(count);
    }
    public void OnButtonClick_Work_Game_3()
    {
        var variableManager = Engine.GetService<ICustomVariableManager>();
        string count = variableManager?.GetVariableValue("PartTimeJob_Count");
        if (count == "0")
        {
            return;
        }
        variableManager?.SetVariableValue("Start_Timer", "true");
        variableManager?.SetVariableValue("Create_Object", "true");
        variableManager?.SetVariableValue("PartTimeJob_Object", "3");
        variableManager?.SetVariableValue("PartTimeJob_Speed", "3000");
        var inputShowUI = new List<string>() {"PartTimeJobUI"};
        var showUI = new ShowUI{UINames = inputShowUI};
        showUI.ExecuteAsync();

        changeCount(count);
    }
    public void OnButtonClick_Work_Game_4()
    {
        var variableManager = Engine.GetService<ICustomVariableManager>();
        string count = variableManager?.GetVariableValue("PartTimeJob_Count");
        if (count == "0")
        {
            return;
        }
        variableManager?.SetVariableValue("Start_Timer", "true");
        variableManager?.SetVariableValue("Create_Object", "true");
        variableManager?.SetVariableValue("PartTimeJob_Object", "4");
        variableManager?.SetVariableValue("PartTimeJob_Speed", "4000");
        var inputShowUI = new List<string>() {"PartTimeJobUI"};
        var showUI = new ShowUI{UINames = inputShowUI};
        showUI.ExecuteAsync();

        changeCount(count);
    }
    public void OnButtonClick_Work_Game_5()
    {
        var variableManager = Engine.GetService<ICustomVariableManager>();
        string count = variableManager?.GetVariableValue("PartTimeJob_Count");
        if (count == "0")
        {
            return;
        }
        variableManager?.SetVariableValue("Start_Timer", "true");
        variableManager?.SetVariableValue("Create_Object", "true");
        variableManager?.SetVariableValue("PartTimeJob_Object", "5");
        variableManager?.SetVariableValue("PartTimeJob_Speed", "5000");
        var inputShowUI = new List<string>() {"PartTimeJobUI"};
        var showUI = new ShowUI{UINames = inputShowUI};
        showUI.ExecuteAsync();

        changeCount(count);
    }

    public void changeCount(string count)
    {
        var variableManager = Engine.GetService<ICustomVariableManager>();
        if (count != "")
        {
            variableManager?.SetVariableValue("PartTimeJob_Count", (int.Parse(count) - 1).ToString());
        }
    }
}
