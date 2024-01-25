using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CrainManager : MonoBehaviour
{
    public MinigameGachaManager minigameManager;
    public GameObject SuccessUI;
    public GameObject FailUI;
    public GameObject NextRoundUI;
    void Start()
    {
        // minigameManager 변수에 MinigameGachaManager 스크립트의 인스턴스 할당
        minigameManager = FindObjectOfType<MinigameGachaManager>();
    }
    public void FailPopup()
    {
        FailUI.SetActive(true);
    }
    public void NextRoundPopup()
    {
        if (minigameManager.N_Round != 4)
            NextRoundUI.SetActive(true);
        else
            SuccessUI.SetActive(true);
    }
    public void nextGame()
    {

        minigameManager.ResetGame();
    }
    public void nextAnim()
    {
        minigameManager.PlayIdleAnim();
    }
}
