using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System;
using Naninovel;
using Naninovel.UI;
using Naninovel.Commands;
using UnityEngine;

public class BloackKeyInputManager : MonoBehaviour
{
    private ICustomVariableManager variableManager;
    public void SetProcessInputOn()
    {
        Engine.GetService<IInputManager>().ProcessInput = true;
    }
    public void SetProcessInputOff()
    {
        Engine.GetService<IInputManager>().ProcessInput = false;
    }
    public void SetProcessInputValue()
    {
        Engine.GetService<IInputManager>().ProcessInput = Convert.ToBoolean(variableManager?.GetVariableValue($"InputKeyValue"));

    }
}
