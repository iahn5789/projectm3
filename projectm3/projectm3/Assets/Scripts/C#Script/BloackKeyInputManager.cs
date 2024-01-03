using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System;
using Naninovel;
using Naninovel.UI;
using Naninovel.Commands;
using UnityEngine;
using UnityEngine.UI;

public class BloackKeyInputManager : MonoBehaviour
{
    private ICustomVariableManager variableManager;
    public Text Titletext;
    public Text WeekName;
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
        variableManager = Engine.GetService<ICustomVariableManager>();
        bool inputBool = Convert.ToBoolean(variableManager?.GetVariableValue($"InputKeyValue"));
        Engine.GetService<IInputManager>().ProcessInput = inputBool;
    }
    public void SetConfirmInputValue()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
        bool inputBool = Convert.ToBoolean(variableManager?.GetVariableValue($"ConfirmationValue"));
        Engine.GetService<IInputManager>().ProcessInput = inputBool;
    }
    public void ClickSlot()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
        string saveloadscene = variableManager?.GetVariableValue($"SaveLoadScene");
        if (saveloadscene != "Save")
        {
            checkHideTestSceneUI();
            if (WeekName.text == "쪽지 시험")
            {
                variableManager?.SetVariableValue($"InputKeyValue", "false");
                Engine.GetService<IInputManager>().ProcessInput = false;
            }
            else if( Titletext.text != "빈 슬롯")
            {
                variableManager?.SetVariableValue($"InputKeyValue", "true");
                Engine.GetService<IInputManager>().ProcessInput = true;
            }
        }
    }
    private void checkHideTestSceneUI()
    {
        Transform current = gameObject.transform;
        for (int i = 0; i < 6 && current.parent != null; i++)
        {
            current = current.parent;
        }
        Transform uiTransform = current.Find("UI");

        if (uiTransform != null)
        {
            Transform testSceneUITransform = uiTransform.Find("TestSceneUI");
            if (testSceneUITransform != null)
            {
                HideAndPlayAnimation(testSceneUITransform, "StoryboardUI", "Normal");
                HideAndPlayAnimation(testSceneUITransform, "SecretMessageUI", "Normal");
                HideAndPlayAnimation(testSceneUITransform, "PartTimeJobList", "Normal");
            }
        }
    }
    private void HideAndPlayAnimation(Transform parentTransform, string childName, string animationState)
    {
        Transform childTransform = parentTransform.Find(childName);
        if (childTransform != null)
        {
            childTransform.gameObject.SetActive(false);

            Animator animator = childTransform.GetComponent<Animator>();
            if (animator != null)
            {
                animator.Play(animationState);
            }
        }
    }
}
