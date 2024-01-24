using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CrainManager : MonoBehaviour
{
    public MinigameGachaManager minigameManager;
    void Start()
    {
        // minigameManager 변수에 MinigameGachaManager 스크립트의 인스턴스 할당
        minigameManager = FindObjectOfType<MinigameGachaManager>();
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
