using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class LoadingRandomBGI : MonoBehaviour
{
    public Image imageBgi01;
    private string[] bgiResourcePaths = new string[]
    {
        "Assets/Common/Bgi/Common_Dream_Bgi_01.png",
        "Assets/Common/Bgi/Common_Home_Room_Bgi_01.png",
        "Assets/Common/Bgi/Common_Home_Room_Night_Bgi_01.png",
        "Assets/Common/Bgi/Common_Road_Bgi_01.png",
        "Assets/Common/Bgi/Common_Road_Bgi_02.png",
        "Assets/Common/Bgi/Common_Sc_Maingate_Bgi_01.png",
        "Assets/Common/Bgi/Common_Sc_Lobby_Bgi_02.png",
        "Assets/Common/Bgi/Common_Sc_Club_Bgi_01.png",
        "Assets/Common/Bgi/Common_Sc_ClassRoom_Bgi_01_.png",
        "Assets/Common/Bgi/Common_Sc_Office_Bgi_01.png",
        "Assets/Common/Bgi/Common_Sc_Lobby_Bgi_01.png",
        // 추가 이미지 리소스 경로를 계속 추가하세요.
    };

    void OnEnable()
    {
        // 오브젝트가 활성화될 때마다 랜덤한 이미지를 출력합니다.
        DisplayRandomBGI();
    }

    void DisplayRandomBGI()
    {
        // 랜덤한 인덱스를 선택합니다.
        int randomIndex = Random.Range(0, bgiResourcePaths.Length);

        // 선택된 이미지를 로드합니다.
        Sprite loadedSprite = UnityEditor.AssetDatabase.LoadAssetAtPath<Sprite>(bgiResourcePaths[randomIndex]);

        // 로드된 이미지를 이미지 오브젝트에 설정합니다.
        if (loadedSprite != null)
        {
            imageBgi01.sprite = loadedSprite;
        }
        else
        {
            Debug.LogError("Failed to load image resource: " + bgiResourcePaths[randomIndex]);
        }
    }
}