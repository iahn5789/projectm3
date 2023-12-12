using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using Naninovel;
using Naninovel.UI;
using Naninovel.Commands;
using UnityEngine;
using EasyTransition;


public class AnimationEventReceiver : MonoBehaviour
{
    public void DestroyParentX3GameObject()
    {
        Transform greatGrandparent = transform.parent?.parent?.parent;
        
        if (greatGrandparent != null)
        {
            // Transition 컴포넌트 찾기
            EasyTransition.Transition transitionComponent = greatGrandparent.GetComponent<EasyTransition.Transition>();
            if (transitionComponent != null)
            {
                // TransitionSettings에서 Keyinput 값 확인
                bool keyInputValue = transitionComponent.transitionSettings.Keyinput;

                // Keyinput 값에 따라 ProcessInput 설정
                Engine.GetService<IInputManager>().ProcessInput = keyInputValue;
            }
            Destroy(greatGrandparent.gameObject);
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
            // Transition 컴포넌트 찾기
            EasyTransition.Transition transitionComponent = greatGrandparent.GetComponent<EasyTransition.Transition>();
            if (transitionComponent != null)
            {
                // TransitionSettings에서 Keyinput 값 확인
                bool keyInputValue = transitionComponent.transitionSettings.Keyinput;

                // Keyinput 값에 따라 ProcessInput 설정
                Engine.GetService<IInputManager>().ProcessInput = keyInputValue;
            }
            Destroy(greatGrandparent.gameObject);
        }
        else
        {
            Debug.LogError("There is no great grandparent to destroy.");
        }
    }
}
