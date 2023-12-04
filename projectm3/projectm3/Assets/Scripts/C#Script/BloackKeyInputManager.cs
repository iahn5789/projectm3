using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Naninovel;
using Naninovel.UI;
using Naninovel.Commands;
using UnityEngine;

public class BloackKeyInputManager : MonoBehaviour
{
    public void SetProcessInputOn()
    {
        Engine.GetService<IInputManager>().ProcessInput = false;
    }
    public void SetProcessInputOff()
    {
        Engine.GetService<IInputManager>().ProcessInput = true;
    }
}
