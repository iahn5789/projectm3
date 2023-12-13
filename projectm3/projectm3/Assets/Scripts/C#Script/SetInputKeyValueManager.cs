using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Naninovel;
using Naninovel.Commands;

public class SetInputKeyValueManager : MonoBehaviour
{
    private ICustomVariableManager variableManager;
    // Start is called before the first frame update
    void Start()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }
    public void SetValueInputKeyManager(string InputKey)
    {
        variableManager?.SetVariableValue($"InputKeyValue", InputKey);
    }
}
