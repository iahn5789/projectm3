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
    private ICustomVariableManager variableManager;
    void Start()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
    }
    public void ClickButton(int Clicknumber)
    {
        name = CheckMessage(Clicknumber);
        number = Clicknumber;
        if (name != "null")
            {
            if (status == "In")
            {
                SManimator.SetTrigger("Out");
                SManimator.SetTrigger("In");
                status = "In";
            }
            else
            {
                SManimator.SetTrigger("In");
                status = "In";
            }
        }
    }
    public void ClickOutButton()
    {
        SManimator.SetTrigger("Out");
        status = "Out";
    }
    public string CheckMessage(int number)
    {
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
        SecretMessageNameText.text = name;
        SecretMessageText.text = variableManager?.GetVariableValue($"SecretMessage_{number}_Buy");
    }
}
