// Copyright 2022 ReWaffle LLC. All rights reserved.

using System;
using UnityEngine;
using System.Collections;

namespace Naninovel.UI
{
    public class TitleNewGameButton : ScriptableButton
    {
        private const string titleLabel = "OnNewGame";

        [Tooltip("새 게임을 시작할 때 상태 재설정에서 제외하는 서비스")]
        [SerializeField] private string[] excludeFromReset = Array.Empty<string>();

        private string startScriptName;
        private string titleScriptName;
        private TitleMenu titleMenu;
        private IScriptPlayer scriptPlayer;
        private IStateManager stateManager;
        private IScriptManager scriptManager;

        protected override void Awake ()
        {
            base.Awake();

            scriptManager = Engine.GetService<IScriptManager>();
            startScriptName = scriptManager.StartGameScriptName;
            titleScriptName = scriptManager.Configuration.TitleScript;
            titleMenu = GetComponentInParent<TitleMenu>();
            scriptPlayer = Engine.GetService<IScriptPlayer>();
            stateManager = Engine.GetService<IStateManager>();
            Debug.Assert(titleMenu && scriptPlayer != null);
        }

        protected override void Start ()
        {
            base.Start();

            if (string.IsNullOrEmpty(startScriptName))
                UIComponent.interactable = false;
        }

        protected override async void OnButtonClick ()
        {
            if (string.IsNullOrEmpty(startScriptName))
            {
                Engine.Err("Can't start new game: specify start script name in the settings.");
                return;
            }

            if (!string.IsNullOrEmpty(titleScriptName) &&
                await scriptManager.LoadScriptAsync(titleScriptName) is Script titleScript &&
                titleScript.LabelExists(titleLabel))
            {
                scriptPlayer.ResetService();
                await scriptPlayer.PreloadAndPlayAsync(titleScript, label: titleLabel);
                await UniTask.WaitWhile(() => scriptPlayer.Playing);
            }
            StartCoroutine(Wait3Second());
        }
        private IEnumerator Wait3Second()
        {
            yield return new WaitForSeconds(3f);
            titleMenu.Hide();
            stateManager.ResetStateAsync(excludeFromReset,
                () => scriptPlayer.PreloadAndPlayAsync(startScriptName)).Forget();
        }
    }
}
