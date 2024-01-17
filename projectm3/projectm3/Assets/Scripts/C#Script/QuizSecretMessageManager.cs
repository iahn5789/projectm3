using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Naninovel;
using Naninovel.Commands;

public class QuizSecretMessageManager : MonoBehaviour
{
    public Text SecretMessageNameText;
    public Text SecretMessageText;
    public Animator SManimator; // 시크릿 메시지 애니메이터 컴포넌트
    private string status = "Normal";
    private string name = "Normal";
    private int number = 0;
    private int In_number = 0;
    public Button[] SecretMessageButton;
    private ICustomVariableManager variableManager;
    public void ClickButton(int Clicknumber)
    {
        name = CheckMessage(Clicknumber);
        In_number = Clicknumber;
        if (name != "null")
        {
            if (status == "In" && number != Clicknumber)
            {
                SManimator.SetTrigger("Out");
                SManimator.SetTrigger("In");
            }
            else if (number != Clicknumber)
            {
                SManimator.SetTrigger("In");
            }
        }
        number = Clicknumber;
    }
    public void StatusOut()
    {
        status = "Out";
        number = 0;
    }
    public void CheckMessageUI()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
        for (int i = 1;i<=3;i++)
        {
            string check = CheckMessage(i);
            if (check == "null")
            {
                SecretMessageButton[i-1].interactable = false;
            }
            else
            {
                SecretMessageButton[i-1].interactable = true;
            }
        }
    }
    public string CheckMessage(int number)
    {
        if (variableManager == null)
        {
            Debug.Log("null variableManager");
        }
        var checks = new Dictionary<string, string>
        {
            {"강여진", variableManager?.GetVariableValue($"KangSecret_{number}_Buy")},
            {"진다영", variableManager?.GetVariableValue($"JinSecret_{number}_Buy")},
            {"설나희", variableManager?.GetVariableValue($"SulSecret_{number}_Buy")}
        };

        foreach (var pair in checks)
        {
            if (pair.Value == "true")
            {
                return pair.Key;
            }
        }
        return "null";
    }
    public void SetMessage()
    {
        number = In_number;
        SecretMessageNameText.text = name;
        SecretMessageText.text = variableManager?.GetVariableValue($"SecretMessage_{number}_Buy");
        status = "In";
    }
}
