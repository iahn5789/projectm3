using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MinigameGachaPopUpManager : MonoBehaviour
{
    public Text RoundText;
    public GameObject UI;
    public MinigameGachaManager MGM;
    public void SetRoundText()
    {
        RoundText.text = MGM.N_Round.ToString();
    }
    public void SetActiveFalseUI()
    {
        UI.SetActive(false);
        MGM.ResetGame();
    }
}
