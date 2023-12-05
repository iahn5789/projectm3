using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Naninovel;
using Naninovel.Commands;

public class CheckInputName : MonoBehaviour
{
    public Text nameTextField;
    public GameObject DeleteText;
    Button button;

    private void Start()
    {
        button = GetComponent<Button>();
        button.onClick.AddListener(OnClickButton);
    }

    public void OnClickButton()
    {
        if (nameTextField != null)
        {
            string textFieldValue = nameTextField.text.Trim(); // 공백 제거
            var variableManager = Engine.GetService<ICustomVariableManager>();
            var gotoHendler = Engine.GetService<IEngineService>();
            if (string.IsNullOrEmpty(textFieldValue))
            {
                // Naninovel 변수 설정
                variableManager?.SetVariableValue("Player_name", "정민");
                StartCoroutine(Wait3Second());

            }
            else if (textFieldValue != "강여진" && textFieldValue != "진다영" && textFieldValue != "설나희" && textFieldValue != "전대용")
            {
                // Naninovel 변수 설정
                variableManager?.SetVariableValue("Player_name", textFieldValue);
                StartCoroutine(Wait3Second());
            }
            else{
                // Naninovel 변수 설정
                variableManager?.SetVariableValue("Player_name", "");
                StartCoroutine(WaitAndActivateUI());
            }
        }
    }
    private IEnumerator WaitAndActivateUI()
    {
        DeleteText.SetActive(true);
    
        yield return new WaitForSeconds(2f);
    
        DeleteText.SetActive(false);
    }

    private void gotoGame()
    {
        // Naninovel UI Hide 문
        var inputHideUI = new List<string>() {"InputNameUI"};
        var hideUI = new HideUI{UINames = inputHideUI};
        hideUI.ExecuteAsync();
        // Naninovel Goto 문
        var inputRoot = new NamedString("A_prologue_01", "GameStart");
        var Goto = new Goto { Path = inputRoot };
        Goto.ExecuteAsync();
    }
    private IEnumerator Wait3Second()
    {
        yield return new WaitForSeconds(3f);
        gotoGame();
    }
}