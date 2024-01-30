using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Naninovel;

public class StoryBoardUIOnOffManager : MonoBehaviour
{
    private ICustomVariableManager variableManager;
    public void OnStoryBoard()
    {
        if (variableManager == null)
            variableManager = Engine.GetService<ICustomVariableManager>();
        variableManager?.SetVariableValue("StoryBoard_In_Boolen","true");
    }
    public void OffStoryBoard()
    {
        if (variableManager == null)
            variableManager = Engine.GetService<ICustomVariableManager>();
        variableManager?.SetVariableValue("StoryBoard_In_Boolen","false");
    }
}
