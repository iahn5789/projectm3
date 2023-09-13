using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ScreenModeManager : MonoBehaviour
{
    public GameObject fullScreenBt;
    public GameObject winScreenBt;
    private Button fullScreenButton;
    private Button winScreenButton;
    private string statusNowScreenColorHex = "#000000"; // 회색
    private string statusNormalScreenColorHex = "#444444"; // 회색

    private bool screenStatus;
    // Start is called before the first frame update
    void Start()
    {
        fullScreenButton = fullScreenBt.GetComponent<Button>();
        winScreenButton = winScreenBt.GetComponent<Button>();
    }
    public void FullScreenBtOnClick(){
        SetResolution(true,1920,1080);
    }
    public void WinScreenBtOnClick(){

        SetResolution(false,1600,900);
    }

    public void SetResolution(bool fullscreen, int setWidth, int setHeight)
    {
        Screen.SetResolution(setWidth, setHeight, fullscreen);
    }
    public void Update()
    {
        
        bool isFullscreen = Screen.fullScreen;

        // 결과 출력
        if (isFullscreen != screenStatus)
        {
            screenStatus = isFullscreen;
            
            Color statusNowScreenColor;
            Color statusNormalScreenColor;
            // 전체 화면 모드가 변경되면 버튼 색상을 변경합니다.
            if (isFullscreen)
            {
                // 전체 화면 모드일 때 버튼 색상 변경
                if (ColorUtility.TryParseHtmlString(statusNowScreenColorHex, out statusNowScreenColor))
                {
                    fullScreenButton.image.color = statusNowScreenColor;
                }
                if (ColorUtility.TryParseHtmlString(statusNormalScreenColorHex, out statusNormalScreenColor))
                {
                    winScreenButton.image.color = statusNormalScreenColor;
                }
            }
            else
            {
                // 창 모드일 때 버튼 색상 변경
                if (ColorUtility.TryParseHtmlString(statusNormalScreenColorHex, out statusNormalScreenColor))
                {
                    fullScreenButton.image.color = statusNormalScreenColor;
                }
                if (ColorUtility.TryParseHtmlString(statusNowScreenColorHex, out statusNowScreenColor))
                {
                    winScreenButton.image.color = statusNowScreenColor;
                }
            }
        }
    }
}
