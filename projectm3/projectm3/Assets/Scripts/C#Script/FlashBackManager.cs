using System.Collections;
using System.Collections.Generic;
using System;
using UnityEngine;
using UnityEngine.Events;
using Naninovel.Commands;
using Naninovel;
using Naninovel.UI;

public class FlashBackManager : MonoBehaviour
{
    private const string titleLabel = "OnNewGame";

    [Tooltip("새 게임을 시작할 때 상태 재설정에서 제외하는 서비스")]
    [SerializeField] private string[] excludeFromReset = Array.Empty<string>();

    private string startScriptName;
    private IScriptPlayer scriptPlayer;
    private IStateManager stateManager;
    private IScriptManager scriptManager;
    public PlayScript playScript;
    public GameObject Unlock;
    
    public void Awake()
    {
        scriptManager = Engine.GetService<IScriptManager>();
        startScriptName = scriptManager.StartGameScriptName;
        scriptPlayer = Engine.GetService<IScriptPlayer>();
        stateManager = Engine.GetService<IStateManager>(); // stateManager 초기화 추가
    }

    public async void OnButtonClick()
    {
        if (Unlock.activeSelf) // Unlock GameObject가 현재 활성화 중인지 확인
        {
            stateManager.ResetStateAsync(excludeFromReset,
                () => scriptPlayer.PreloadAndPlayAsync(startScriptName)).Forget();
            // playScript.Play();
            Debug.Log("Unlock");
        }
        Debug.Log("OnButtonClick");
    }
}
