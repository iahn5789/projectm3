using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Naninovel;
using Naninovel.Commands;

public class ProfileUIManager : MonoBehaviour
{
    public string characterName;
    private Dictionary<string, string> line;
    public ICustomVariableManager variableManager;
    public Text lineText;
    public int firstLimit; // 첫번째 호감도 최대값(미만)
    public int secondLimit; // 두번째 호감도 최대값(미만)
    public int thirdLimit; // 세번째 호감도 최대값(미만)
    public void Start()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
        line = new Dictionary<string, string>();
        // 강여진 대사
        line.Add("Kang1", "밝고 명량한 소녀");
        line.Add("Kang2", "위험한 가시를 숨긴 소녀");
        line.Add("Kang3", "슬픈(위태로운) 가시를 숨긴 소녀");
        line.Add("Kang4", "아름다운 가시를 숨긴 소녀");
        // 진다영 대사
        line.Add("Jin1", "조용하지만 카리스마 있는 소녀");
        line.Add("Jin2", "꿈을 꾸고 싶은 소녀");
        line.Add("Jin3", "꿈을 꾸고 있는 소녀");
        line.Add("Jin4", "꿈을 이루게 된 소녀");
        // 설나희 대사
        line.Add("Sul1", "겉은 차갑지만, 속은 따뜻(?)한 소녀");
        line.Add("Sul2", "사랑할 줄 모르는 소녀");
        line.Add("Sul3", "사랑받고 싶은 소녀");
        line.Add("Sul4", "사랑을 알게 된 소녀");
    }
    public void LikeAbilityToLine()
    {
        int LikeAblility =  Int32.Parse(variableManager?.GetVariableValue($"{characterName}LikeAbility"));
        if (LikeAblility < firstLimit)
        {
            lineText.text = GetLine($"{characterName}1");
        }
        else if (LikeAblility < secondLimit)
        {
            lineText.text = GetLine($"{characterName}2");
        }
        else if (LikeAblility < thirdLimit)
        {
            lineText.text = GetLine($"{characterName}3");
        }
        else
        {
            lineText.text = GetLine($"{characterName}4");
        }
    }
    public string GetLine(string key)
    {
        if(line.ContainsKey(key)) // 해당 키가 myTable 딕셔너리에 있는지 확인
        {
            return line[key];
        }
        return "";
    }
}
