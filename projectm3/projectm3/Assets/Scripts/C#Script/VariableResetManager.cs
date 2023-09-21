using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Naninovel;
using Naninovel.Commands;

public class VariableResetManager : MonoBehaviour
{
    private ICustomVariableManager variableManager;
    public void ResetVariable()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();

        // 호감도 초기화
        variableManager?.SetVariableValue("KangLikeAbility", "10");
        variableManager?.SetVariableValue("JinLikeAbility", "10");
        variableManager?.SetVariableValue("SulLikeAbility", "10");

    }
}
