// Copyright 2022 ReWaffle LLC. All rights reserved.

using System;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

namespace Naninovel
{
    public class TipsListItem : MonoBehaviour
    {
        [Serializable]
        private class OnLabelChangedEvent : UnityEvent<string> { }
        [Serializable]
        private class OnLabelStyleChangedEvent : UnityEvent<FontStyle> { }

        public virtual string UnlockableId { get; private set; }
        public virtual int Number => transform.GetSiblingIndex() + 1;

        protected virtual Button Button => button;
        protected virtual GameObject SelectedIndicator => selectedIndicator;

        [Tooltip("팁 레이블 템플릿. '{N}'은 레코드 번호 '{T}'로 대체됩니다. - 제목.")]
        [SerializeField] private string template = "{N}. {T}";
        [Tooltip("팁 항목이 잠겼을 때 설정할 레코드 제목.")]
        [SerializeField] private string lockedTitle = "???";
        [Tooltip("팁 버튼")]
        [SerializeField] private Button button;
        [Tooltip("할당되면 팁을 선택하면 게임 개체가 활성화됩니다.")]
        [SerializeField] private GameObject selectedIndicator;
        [SerializeField] private OnLabelChangedEvent onLabelChanged;
        [SerializeField] private OnLabelStyleChangedEvent onLabelStyleChanged;

        private Action<TipsListItem> onClick;
        private string title;
        private bool selectedOnce;

        public static TipsListItem Instantiate (TipsListItem prototype, string unlockableId,
            string title, bool selectedOnce, Action<TipsListItem> onClick)
        {
            var item = Instantiate(prototype);

            item.onClick = onClick;
            item.UnlockableId = unlockableId;
            item.title = title;
            item.selectedOnce = selectedOnce;

            return item;
        }

        public virtual void SetSelected (bool selected)
        {
            if (selected)
            {
                selectedOnce = true;
                SetLabelStyle(FontStyle.Normal);
            }
            if (SelectedIndicator)
                SelectedIndicator.SetActive(selected);
        }

        public virtual void SetUnlocked (bool unlocked)
        {
            SetLabel(template.Replace("{N}", Number.ToString()).Replace("{T}", unlocked ? title : lockedTitle));
            SetLabelStyle(!unlocked || selectedOnce ? FontStyle.Normal : FontStyle.Bold);
            Button.interactable = unlocked;
        }

        protected virtual void Awake ()
        {
            this.AssertRequiredObjects(Button);
            if (SelectedIndicator)
                SelectedIndicator.SetActive(false);
        }

        protected virtual void OnEnable ()
        {
            Button.onClick.AddListener(HandleButtonClicked);
        }

        protected virtual void OnDisable ()
        {
            Button.onClick.RemoveListener(HandleButtonClicked);
        }

        protected virtual void SetLabel (string value)
        {
            onLabelChanged?.Invoke(value);
        }

        protected virtual void SetLabelStyle (FontStyle value)
        {
            onLabelStyleChanged?.Invoke(value);
        }

        protected virtual void HandleButtonClicked ()
        {
            onClick?.Invoke(this);
        }
    }
}
