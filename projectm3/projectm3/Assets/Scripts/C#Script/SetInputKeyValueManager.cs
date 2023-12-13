﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Naninovel;
using Naninovel.Commands;

public class SetInputKeyValueManager : MonoBehaviour
{
    private ICustomVariableManager variableManager;
    public void SetValueInputKeyManager(string InputKey)
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
        variableManager?.SetVariableValue($"InputKeyValue", InputKey);
    }
}
