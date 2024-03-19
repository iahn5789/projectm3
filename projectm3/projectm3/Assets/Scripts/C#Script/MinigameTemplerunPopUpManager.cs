using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MinigameTemplerunPopUpManager : MonoBehaviour
{
    public Text RoundText;
    public GameObject UI;
    public MinigameTemplerunManager MTM;
    public void SetRoundText()
    {
        RoundText.text = MTM.N_Round.ToString();
    }
    public void SetActiveFalseUI()
    {
        UI.SetActive(false);
        // MTM.ResetGame();
    }
}
