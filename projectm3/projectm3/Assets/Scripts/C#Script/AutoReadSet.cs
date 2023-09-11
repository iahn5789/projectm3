using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Naninovel;
using Naninovel.Commands;

public class AutoReadSet : MonoBehaviour
{
    private IScriptPlayer scriptPlayer;

    public void OnClick()
    {
        scriptPlayer = Engine.GetService<IScriptPlayer>();
        scriptPlayer.SetAutoPlayEnabled(false);
    }
}
