using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScreenModeManager : MonoBehaviour
{
    // Start is called before the first frame update
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
}
