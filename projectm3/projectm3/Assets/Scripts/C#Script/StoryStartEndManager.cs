using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StoryStartEndManager : MonoBehaviour
{
    private ICustomVariableManager variableManager;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
    public void NextScript()
    {
        variableManager?.SetVariableValue("Player_name", "정민");
    }
}
