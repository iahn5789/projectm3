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
    private Dictionary<string, (string, int, int)> line;
    public ICustomVariableManager variableManager;
    public Text lineText;
    public int firstLimit; // 첫번째 호감도 최대값(미만)
    public int secondLimit; // 두번째 호감도 최대값(미만)
    public int thirdLimit; // 세번째 호감도 최대값(미만)
    public Image charactorFace; // Result창 캐릭터 얼굴
    public Image charactorBody; // Result창 캐릭터 몸
    public Sprite[] charactorFaceList; // Result창 캐릭터 얼굴 리스트
    public Sprite[] charactorBodyList; // Result창 캐릭터 몸 리스트
    public void Start()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
        line = new Dictionary<string, (string, int, int)>();
        // 강여진 대사
        line.Add("Kang1", ("밝고 명량한 소녀", 0, 0));
        line.Add("Kang2", ("위험한 가시를 숨긴 소녀", 1, 1));
        line.Add("Kang3", ("슬픈(위태로운) 가시를 숨긴 소녀", 2, 2));
        line.Add("Kang4", ("아름다운 가시를 숨긴 소녀", 3, 3));
        // 진다영 대사
        line.Add("Jin1", ("조용하지만 카리스마 있는 소녀", 0, 0));
        line.Add("Jin2", ("꿈을 꾸고 싶은 소녀", 1, 1));
        line.Add("Jin3", ("꿈을 꾸고 있는 소녀", 2, 2));
        line.Add("Jin4", ("꿈을 이루게 된 소녀", 3, 3));
        // 설나희 대사
        line.Add("Sul1", ("겉은 차갑지만, 속은 따뜻(?)한 소녀", 0, 0));
        line.Add("Sul2", ("사랑할 줄 모르는 소녀", 1, 1));
        line.Add("Sul3", ("사랑받고 싶은 소녀", 2, 2));
        line.Add("Sul4", ("사랑을 알게 된 소녀", 3, 3));
    }
    public void LikeAbilityToLine()
    {
        int LikeAbility =  Int32.Parse(variableManager?.GetVariableValue($"{characterName}LikeAbility"));
        if (LikeAbility < firstLimit)
        {
            GetLine($"{characterName}1");
        }
        else if (LikeAbility < secondLimit)
        {
            GetLine($"{characterName}2");
        }
        else if (LikeAbility < thirdLimit)
        {
            GetLine($"{characterName}3");
        }
        else
        {
            GetLine($"{characterName}4");
        }
    }
    public void GetLine(string key)
    {
        if(line.ContainsKey(key)) // 해당 키가 myTable 딕셔너리에 있는지 확인
        {
            var tupleValue = line[key];
            lineText.text = tupleValue.Item1;
            charactorBody.sprite = charactorBodyList[tupleValue.Item2];
            charactorFace.sprite = charactorFaceList[tupleValue.Item3];
        }
    }
}
