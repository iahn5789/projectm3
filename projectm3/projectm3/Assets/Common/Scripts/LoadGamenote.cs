using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LoadGamenote : MonoBehaviour
{
    public GameObject gamenoteUIPrefab;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    public void GoGameScene()
    {
        // 씬 로드
        SceneManager.LoadScene(1);

        // GamenoteUI 프리팹 인스턴스화 및 활성화
        if (gamenoteUIPrefab != null)
        {
            gamenoteUIPrefab.SetActive(true);
        }
    }
}


