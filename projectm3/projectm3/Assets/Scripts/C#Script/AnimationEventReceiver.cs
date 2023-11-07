using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimationEventReceiver : MonoBehaviour
{
    public void DestroyParentGameObject()
    {
        Transform greatGrandparent = transform.parent?.parent?.parent;
        
        if (greatGrandparent != null)
        {
            Destroy(greatGrandparent.gameObject);
        }
        else
        {
            Debug.LogError("There is no great grandparent to destroy.");
        }
    }
}
