using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI; // Add this if you're using Text class from UnityEngine.UI
using Naninovel;

public class StoryStartEndManager : MonoBehaviour
{
    private ICustomVariableManager variableManager;
    public Text WeekText;
    public Text WeekTitleStartText;
    public PlayScript NextScript;
    void Start()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
    }
    public void SetText()
    {
        string name = variableManager?.GetVariableValue("Selected");
        string week = variableManager?.GetVariableValue($"{name}Week") + "주차";
        string WeekTitleStart = variableManager?.GetVariableValue("WeekTitleStart");
        WeekText.text = week;
        WeekTitleStartText.text = WeekTitleStart;

    }
    public void StartNextScript()
    {
        string name = variableManager?.GetVariableValue("Selected");
        string week = variableManager?.GetVariableValue($"{name}Week");
        week = int.TryParse(week, out int weekNumber) ? weekNumber.ToString("D2") : "01";
        string Script = $"@hideUI StoryStartEndUI\n@goto A_week{week}_{name.ToLower()}01";
        NextScript.SetScriptText(Script);
        NextScript.Play();
        Debug.Log("ScriptStart");
        Engine.GetService<IInputManager>().ProcessInput = true;
        variableManager?.SetVariableValue($"InputKeyValue", "true");
    }
}
