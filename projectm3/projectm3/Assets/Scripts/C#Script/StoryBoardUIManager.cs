using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Naninovel;
using Naninovel.Commands;

public class StoryBoardUIManager : MonoBehaviour
{
    // Start is called before the first frame update
    private ICustomVariableManager variableManager;
    public Animator anim;
    public GameObject SecretMessage;
    public GameObject SelectedOn;
    public GameObject[] SelectedOff;
    public Animator SecretMessageAnimator;
    // 비밀쪽지 이미지
    public GameObject[] SecretMessageImage;
    public Sprite Sprite_SecretSD;
    public Image SecretSD;
    public Text SecretLine;
    void Start()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
    }
    public void OnHighlighted(string OnName)
    {
        if(!gameObject.activeInHierarchy)
        {
            return;
        }
        string Selected = variableManager?.GetVariableValue("Selected");
        if (Selected != OnName)
        {
            anim.Play("Highlighted");
        }

    }
    public void OnSelected(string OnName)
    {
        if(!gameObject.activeInHierarchy)
        {
            return;
        }
        if (!SecretMessage.activeInHierarchy)
        {
            SecretMessage.SetActive(true);
        }
        string Selected = variableManager?.GetVariableValue("Selected");
        if (Selected != OnName)
        {
            anim.Play("Selected");
            UpdateSecretMessageUI(OnName);
            SecretMessageAnimator.PlayInFixedTime(0);
            SecretMessageAnimator.Play("SecretMessage_In");
            SelectedOn.SetActive(true);
            SelectedOff[0].SetActive(false);
            SelectedOff[1].SetActive(false);
            
        }
        variableManager?.SetVariableValue("Selected", OnName);
    }
    public void OnExit(string OnName)
    {
        if(!gameObject.activeInHierarchy)
        {
            return;
        }
        string Selected = variableManager?.GetVariableValue("Selected");
        if (Selected != OnName)
        {
            anim.Play("Normal");
        }
    }
    public void UpdateSecretMessageUI(string OnName)
    {
        string buy1 = variableManager?.GetVariableValue($"{OnName}Secret_1_Buy");
        string buy2 = variableManager?.GetVariableValue($"{OnName}Secret_2_Buy");
        string buy3 = variableManager?.GetVariableValue($"{OnName}Secret_3_Buy");

        SecretSD.sprite = Sprite_SecretSD;
        if (OnName == "Kang")
        {
            SecretLine.text = "긴장말고! 시험 잘 봐!";
        }
        else if (OnName == "Jin")
        {
            SecretLine.text = "틀리면 바보!";
        }
        else if (OnName == "Sul")
        {
            SecretLine.text = "너만 보여줄게...";
        }
        else if (OnName == "Common")
        {
            SecretLine.text = "요시! 집중하라구";
        }
        SetActiveBasedOnPurchase(buy1, 0, 1);
        SetActiveBasedOnPurchase(buy2, 2, 3);
        SetActiveBasedOnPurchase(buy3, 4, 5);
    }
    private void SetActiveBasedOnPurchase(string buyStatus, int trueIndex, int falseIndex)
    {
        bool isPurchased = buyStatus == "true";
        SecretMessageImage[trueIndex].SetActive(!isPurchased);
        SecretMessageImage[falseIndex].SetActive(isPurchased);
    }
}
