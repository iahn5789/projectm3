using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Naninovel;
using Naninovel.Commands;

public class VariableResetManager : MonoBehaviour
{
    public ICustomVariableManager variableManager;
    public void ResetVariable()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
        if (variableManager == null) 
        {
            Debug.LogError("variableManager is null!");
            return;
        }
        // 호감도 초기화
        variableManager?.SetVariableValue("KangLikeAbility", "10");
        variableManager?.SetVariableValue("JinLikeAbility", "10");
        variableManager?.SetVariableValue("SulLikeAbility", "10");
        // 돈 초기화
        variableManager?.SetVariableValue("money", "200");
    }
}
