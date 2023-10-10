using System.Collections;
using System.Collections.Generic;
using System.Globalization;
using UnityEngine;
using UnityEngine.UI;
using Naninovel;
using Naninovel.Commands;

public class TestSceneUIManager : MonoBehaviour
{
    public Text MoneyUI;    // 현재 돈
    public Text CountUI;    // 남은 횟수
    public GameObject Image_End_PartTimeJob;    // 아르바이트 종료
    private ICustomVariableManager variableManager;
    // Start is called before the first frame update
    void Start()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
        
    }

    // Update is called once per frame
    void Update()
    {
        string update_TestSceneUI_variable = variableManager?.GetVariableValue("update_TestSceneUI_variable");
        if (update_TestSceneUI_variable == "true")
        {
            setUI();
            
            variableManager?.SetVariableValue("update_TestSceneUI_variable", "false");
        }
    }
    public void setUI()
    {
        string moneyText = variableManager.GetVariableValue("money");
        int moneyValue;
        if (int.TryParse(moneyText, out moneyValue))
        {
            CultureInfo ci = new CultureInfo("en-US"); // 미국의 숫자 형식을 사용하여 천 단위 구분 기호를 추가합니다.
            MoneyUI.text = moneyValue.ToString("N0", ci);
        }

        string countText = variableManager.GetVariableValue("PartTimeJob_Count");
        CountUI.text = countText;
        if (countText == "0")
        {
            Image_End_PartTimeJob.SetActive(true);
        }
    }
}
