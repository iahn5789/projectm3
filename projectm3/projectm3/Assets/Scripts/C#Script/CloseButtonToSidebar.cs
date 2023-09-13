using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CloseButtonToSidebar : MonoBehaviour
{
    public void onClick()
    {

        GameObject dialogObject = GameObject.Find("Dialogue");
        if (dialogObject != null)
            MenuInOut.target();
    }
}
