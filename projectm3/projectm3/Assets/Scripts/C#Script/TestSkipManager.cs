using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Naninovel;

public class TestSkipManager : MonoBehaviour
{
    private ICustomVariableManager variableManager;
    void Start()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
    }
    // Start is called before the first frame update
    public void OnClick()
    {
        variableManager?.SetVariableValue("TestCorrectResult", "31"); // 1+2+4+8+16
        variableManager?.SetVariableValue("TestScore", "100"); // 0~100
        variableManager?.SetVariableValue("TestCorrect", "5"); // 0~5
    }
}
