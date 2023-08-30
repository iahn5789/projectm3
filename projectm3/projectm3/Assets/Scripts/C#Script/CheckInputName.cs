using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Naninovel;

public class CheckInputName : MonoBehaviour
{
    public Text nameTextField;
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
            if (string.IsNullOrEmpty(textFieldValue))
            {
                // Naninovel 변수 설정
                variableManager?.SetVariableValue("Player_name", "정민");
            }
            else if (textFieldValue != "강여진" && textFieldValue != "진다영" && textFieldValue != "설나희" && textFieldValue != "전대용")
            {
                // Naninovel 변수 설정
                variableManager?.SetVariableValue("Player_name", textFieldValue);
            }
            else{
                // Naninovel 변수 설정
                variableManager?.SetVariableValue("Player_name", "");
            }
            Debug.Log("입력된 이름: " + textFieldValue);
            Debug.Log("저장된 이름: " + variableManager.GetVariableValue("Player_name"));
        }
    }
}