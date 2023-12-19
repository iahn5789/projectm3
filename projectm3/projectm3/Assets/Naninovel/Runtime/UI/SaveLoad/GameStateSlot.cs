// Copyright 2022 ReWaffle LLC. All rights reserved.

using System;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;
using UnityEngine.UI;

namespace Naninovel.UI
{
    public class GameStateSlot : ScriptableGridSlot
    {
        [Serializable]
        private class OnTitleTextChangedEvent : UnityEvent<string> { }

        public override string Id => SlotNumber.ToString();
        public int SlotNumber { get; private set; }
        public GameStateMap State { get; private set; }

        [ManagedText("DefaultUI")]
        protected static string EmptySlotLabel = "빈 슬롯";

        protected virtual Button DeleteButton => deleteButton;
        protected virtual RawImage ThumbnailImage => thumbnailImage;
        protected virtual Texture2D EmptySlotThumbnail => emptySlotThumbnail;

        [Tooltip("제목에 설정된 날짜 형식. 사용 가능한 옵션은 C# 문서에서 날짜 및 시간 형식 문자열을 참조하십시오.")]
        [SerializeField] private string dateFormat = "yy년MM월dd일 HH시mm분";
        [Tooltip("제목 템플릿. '{N}'은 슬롯 번호 '{D}' - 날짜(또는 슬롯이 비어 있는 경우 레이블이 비어 있음)로 대체됩니다.")]
        [SerializeField] private string titleTemplate = "{N}. {D}";
        [SerializeField] private Button deleteButton;
        [SerializeField] private RawImage thumbnailImage;
        [SerializeField] private Texture2D emptySlotThumbnail;
        [SerializeField] private OnTitleTextChangedEvent onTitleTextChanged;

        private Action<int> onClicked, onDeleteClicked;
        private ScriptableUIBehaviour deleteButtonBehaviour;
        private ISaveLoadUI saveLoadUI;
        private ICustomVariableManager variableManager;
        public Text WeekText;
        public Text WeekUnitText;
        public Text WeekNameText;

        public virtual void Initialize (Action<int> onClicked, Action<int> onDeleteClicked)
        {
            this.onClicked = onClicked;
            this.onDeleteClicked = onDeleteClicked;
            saveLoadUI = Engine.GetService<IUIManager>().GetUI<ISaveLoadUI>();
            if (Engine.GetService<IInputManager>().GetDelete() is IInputSampler deleteInput)
                deleteInput.OnStart += HandleDeleteInputActivated;
        }

        public virtual void Bind (int slotNumber, GameStateMap state)
        {
            State = state;
            SlotNumber = slotNumber;

            if (state is null)
            {
                DeleteButton.gameObject.SetActive(false);
                SetTitleText(titleTemplate.Replace("{N}", SlotNumber.ToString()).Replace("{D}", EmptySlotLabel),"","","");
                ThumbnailImage.texture = EmptySlotThumbnail;
            }
            else
            {
                DeleteButton.gameObject.SetActive(true);
                var date = state.SaveDateTime.ToString(dateFormat);
                string name = variableManager?.GetVariableValue("Selected");
                string Week = variableManager?.GetVariableValue($"{name}Week");
                string WeekName = variableManager?.GetVariableValue("WeekTitle"); // 주차 내용
                SetTitleText(titleTemplate.Replace("{N}", SlotNumber.ToString()).Replace("{D}", date),Week,"주차",WeekName);
                ThumbnailImage.texture = state.Thumbnail;
            }
        }

        public override void OnPointerEnter (PointerEventData eventData)
        {
            base.OnPointerEnter(eventData);

            if (deleteButtonBehaviour)
                deleteButtonBehaviour.Show();
        }

        public override void OnPointerExit (PointerEventData eventData)
        {
            base.OnPointerExit(eventData);

            if (deleteButtonBehaviour)
                deleteButtonBehaviour.Hide();
        }

        protected override void Awake ()
        {
            base.Awake();
            this.AssertRequiredObjects(DeleteButton, ThumbnailImage);

            if (!EmptySlotThumbnail)
                emptySlotThumbnail = Texture2D.whiteTexture;
            DeleteButton.TryGetComponent<ScriptableUIBehaviour>(out deleteButtonBehaviour);
            DeleteButton.onClick.AddListener(HandleDeleteButtonClicked);
            variableManager = Engine.GetService<ICustomVariableManager>();
        }

        protected override void OnDestroy ()
        {
            base.OnDestroy();

            DeleteButton.onClick.RemoveListener(HandleDeleteButtonClicked);
        }

        protected virtual void SetTitleText (string value, string Week, string WeekUnit, string WeekName)
        {
            WeekText.text = Week;
            WeekUnitText.text = WeekUnit;
            WeekNameText.text = WeekName;
            onTitleTextChanged?.Invoke(value);
        }

        protected override void OnButtonClick ()
        {
            base.OnButtonClick();
            onClicked?.Invoke(SlotNumber);
        }

        protected virtual void HandleDeleteButtonClicked ()
        {
            onDeleteClicked?.Invoke(SlotNumber);
        }

        protected virtual void HandleDeleteInputActivated ()
        {
            if (saveLoadUI.Visible && gameObject.activeInHierarchy && Selected)
                onDeleteClicked?.Invoke(SlotNumber);
        }
    }
}
