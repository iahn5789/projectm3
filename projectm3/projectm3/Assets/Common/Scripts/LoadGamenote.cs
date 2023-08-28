using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LoadGamenote : MonoBehaviour
{
    public GameObject gamenoteUIPrefab;

    public void GoGameScene()
    {
        // 이전 씬의 게임 오브젝트들을 비활성화
        DeactivatePreviousScene();

        // 씬 로드
        SceneManager.LoadScene(1);

        // GamenoteUI 프리팹 인스턴스화 및 활성화
        if (gamenoteUIPrefab != null)
        {
            Instantiate(gamenoteUIPrefab, Vector3.zero, Quaternion.identity);
        }
    }

    private void DeactivatePreviousScene()
    {
        Scene previousScene = SceneManager.GetActiveScene();
        foreach (GameObject obj in previousScene.GetRootGameObjects())
        {
            Debug.Log("test GameObject : " , obj);
            obj.SetActive(false);
        }
    }
}