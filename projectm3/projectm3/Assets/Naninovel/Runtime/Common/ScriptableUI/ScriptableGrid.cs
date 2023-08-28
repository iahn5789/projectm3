// Copyright 2022 ReWaffle LLC. All rights reserved.

using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

namespace Naninovel
{
    [Serializable]
    public class OnGridPageChangedEvent : UnityEvent<string> { }

    [RequireComponent(typeof(GridLayoutGroup))]
    public abstract class ScriptableGrid<TSlot> : ScriptableUIComponent<GridLayoutGroup>
        where TSlot : ScriptableGridSlot
    {
        /// <summary>
        /// Total items contained in the grid.
        /// </summary>
        public virtual int ItemsCount { get; private set; }
        /// <summary>
        /// Items displayed per page.
        /// </summary>
        public virtual int ItemsPerPage => itemsPerPage;
        /// <summary>
        /// Currently selected page number (starts from 1).
        /// </summary>
        public virtual int CurrentPage { get; private set; }
        /// <summary>
        /// Total number of pages.
        /// </summary>
        public virtual int PageCount => Mathf.Max(Mathf.CeilToInt(ItemsCount / (float)ItemsPerPage), 1);
        /// <summary>
        /// Slots instantiated under the grid representing currently displayed items.
        /// </summary>
        public virtual IReadOnlyList<TSlot> Slots { get; private set; }

        protected virtual TSlot SlotPrototype => slotPrototype;
        protected virtual GameObject PaginationPanel => paginationPanel;
        protected virtual Button PreviousPageButton => previousPageButton;
        protected virtual Button NextPageButton => nextPageButton;

        [Tooltip("그리드 슬롯을 나타내는 접두사입니다.")]
        [SerializeField] private TSlot slotPrototype;
        [Tooltip("페이지당 몇 개의 슬롯이 표시되어야 합니다."), Range(1, 99)]
        [SerializeField] private int itemsPerPage = 9;
        [Tooltip("페이지 번호 컨트롤용 컨테이너(옵션). 그리드에 페이지가 하나만 있는 경우 비활성화됩니다.")]
        [SerializeField] private GameObject paginationPanel;
        [Tooltip("페이지 표시 패널 내부 버튼을 눌러 다음 그리드 페이지를 선택합니다.")]
        [SerializeField] private Button previousPageButton;
        [Tooltip("이전 그리드 페이지를 선택하려면 페이지 표시 패널 내부 버튼을 누릅니다.")]
        [SerializeField] private Button nextPageButton;
        [Tooltip("그리드 페이지 번호가 변경될 때 이벤트가 호출됩니다.")]
        [SerializeField] private OnGridPageChangedEvent onPageChanged;

        /// <summary>
        /// Instantiates displayed items (slots) and makes the grid
        /// ready for interaction.
        /// </summary>
        /// <param name="itemsCount">Total items contained in the grid.</param>
        public virtual void Initialize (int itemsCount)
        {
            ItemsCount = itemsCount;
            Slots = CreateSlots();
            FocusOnNavigation = Slots[Slots.Count - 1].gameObject;
            SelectPage(1);
            if (PaginationPanel)
                PaginationPanel.SetActive(PageCount > 1);
        }

        /// <summary>
        /// Attempts to select grid page with the specified number (starting with 1).
        /// </summary>
        public virtual void SelectPage (int pageNumber)
        {
            if (CurrentPage == pageNumber) return;
            if (pageNumber < 1 || pageNumber > PageCount)
                throw new ArgumentOutOfRangeException(nameof(pageNumber), $"Page number should be between 1 and {PageCount}.");
            CurrentPage = pageNumber;
            Paginate();
            onPageChanged?.Invoke(pageNumber.ToString());
        }

        /// <summary>
        /// Attempts to select next grid page; no effect when last page is selected.
        /// </summary>
        public virtual void SelectNextPage ()
        {
            if (CurrentPage == PageCount) return;
            SelectPage(CurrentPage + 1);
        }

        /// <summary>
        /// Attempts to select previous grid page; no effect when first page is selected.
        /// </summary>
        public virtual void SelectPreviousPage ()
        {
            if (CurrentPage == 1) return;
            SelectPage(CurrentPage - 1);
        }

        protected override void Awake ()
        {
            base.Awake();
            this.AssertRequiredObjects(SlotPrototype);
        }

        protected override void OnEnable ()
        {
            base.OnEnable();

            if (PreviousPageButton)
                PreviousPageButton.onClick.AddListener(SelectPreviousPage);
            if (NextPageButton)
                NextPageButton.onClick.AddListener(SelectNextPage);
        }

        protected override void OnDisable ()
        {
            base.OnDisable();

            if (PreviousPageButton)
                PreviousPageButton.onClick.RemoveListener(SelectPreviousPage);
            if (NextPageButton)
                NextPageButton.onClick.RemoveListener(SelectNextPage);
        }

        /// <summary>
        /// Makes the slot ready for usage. Invoked on grid initialization.
        /// </summary>
        protected virtual void InitializeSlot (TSlot slot) { }

        /// <summary>
        /// Binds the slot to the specified item index.
        /// Invoked on pagination to re-use instantiated slot objects.
        /// </summary>
        protected abstract void BindSlot (TSlot slot, int itemIndex);

        /// <summary>
        /// Updates displayed items and pagination controls
        /// in correspondence with the currently selected page.
        /// </summary>
        protected virtual void Paginate ()
        {
            if (Slots is null) throw new Error("The grid is not initialized.");
            for (int i = 0; i < Slots.Count; i++)
                PaginateSlot(i);
            if (PreviousPageButton)
                PreviousPageButton.interactable = CurrentPage > 1;
            if (NextPageButton)
                NextPageButton.interactable = CurrentPage < PageCount;
        }

        private void PaginateSlot (int slotIndex)
        {
            var itemIndex = (CurrentPage - 1) * ItemsPerPage + slotIndex;
            var slot = Slots[slotIndex];
            var inBounds = itemIndex < ItemsCount;
            if (inBounds != slot.gameObject.activeSelf)
                slot.gameObject.SetActive(inBounds);
            if (inBounds) BindSlot(slot, itemIndex);
        }

        private TSlot[] CreateSlots ()
        {
            var slots = new TSlot[ItemsPerPage];
            for (int i = 0; i < ItemsPerPage; i++)
                slots[i] = CreateSlot();
            return slots;
        }

        private TSlot CreateSlot ()
        {
            var slot = Instantiate<TSlot>(SlotPrototype, transform, false);
            InitializeSlot(slot);
            return slot;
        }
    }
}
