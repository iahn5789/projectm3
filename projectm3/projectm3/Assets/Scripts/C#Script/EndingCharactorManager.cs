using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class EndingCharactorManager : MonoBehaviour
{
    public Sprite[] KangFaceList; // 강여진 얼굴 리스트
    public Sprite[] JinFaceList; // 강여진 얼굴 리스트
    public Sprite[] SulFaceList; // 강여진 얼굴 리스트
    public Sprite[] KangBodyList; // 강여진 몸 리스트
    public Sprite[] JinBodyList; // 강여진 몸 리스트
    public Sprite[] SulBodyList; // 강여진 몸 리스트
    public Image KangFace;
    public Image JinFace;
    public Image SulFace;
    public Image KangBody;
    public Image JinBody;
    public Image SulBody;

    public void CharacterSet(string args)
    {
        // args 문자열을 쉼표(,)로 분리하여 parts 배열에 저장
        string[] parts = args.Split(',');
            // 분리된 문자열이 올바른 개수를 갖고 있는지 확인
        if (parts.Length == 3)
        {
            string name = parts[0].Trim(); // 캐릭터 이름
            int face = int.Parse(parts[1].Trim()); // 얼굴 인덱스
            int body = int.Parse(parts[2].Trim()); // 몸 인덱스
    
            // 분리된 값을 사용하여 캐릭터의 얼굴과 몸 설정
            SetFace(name, face);
            SetBody(name, body);
        }
        else
        {
            Debug.LogError("Invalid arguments for CharacterSet: " + args);
        }
    }
    private void SetFace(string name, int face)
    {
        switch (name)
        {
            case "Kang":
                KangFace.sprite = KangFaceList[face];
                break;
            case "Jin":
                JinFace.sprite = JinFaceList[face];
                break;
            case "Sul":
                SulFace.sprite = SulFaceList[face];
                break;
            default:
                Debug.LogError("Unknown character name: " + name);
                break;
        }
    }
    private void SetBody(string name, int body)
    {
        switch (name)
        {
            case "Kang":
                KangBody.sprite = KangBodyList[body];
                break;
            case "Jin":
                JinBody.sprite = JinBodyList[body];
                break;
            case "Sul":
                SulBody.sprite = SulBodyList[body];
                break;
            default:
                Debug.LogError("Unknown character name: " + name);
                break;
        }
    }
}
