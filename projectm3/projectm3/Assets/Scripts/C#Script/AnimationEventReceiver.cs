using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using Naninovel;
using Naninovel.UI;
using Naninovel.Commands;
using UnityEngine;


public class AnimationEventReceiver : MonoBehaviour
{
    public void DestroyParentX3GameObject()
    {
        Transform greatGrandparent = transform.parent?.parent?.parent;
        
        if (greatGrandparent != null)
        {
            Destroy(greatGrandparent.gameObject);
            Engine.GetService<IInputManager>().ProcessInput = true;
        }
        else
        {
            Debug.LogError("There is no great grandparent to destroy.");
        }
    }
    public void DestroyParentX4GameObject()
    {
        Transform greatGrandparent = transform.parent?.parent?.parent?.parent;
        
        if (greatGrandparent != null)
        {
            Destroy(greatGrandparent.gameObject);
            Engine.GetService<IInputManager>().ProcessInput = true;
        }
        else
        {
            Debug.LogError("There is no great grandparent to destroy.");
        }
    }
}
