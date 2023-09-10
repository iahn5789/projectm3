// Copyright 2022 ReWaffle LLC. All rights reserved.

using System.Collections.Generic;
using Naninovel.Runtime.UI;
using Naninovel.UI;
using UnityEngine;


namespace Naninovel
{
    public class CGGalleryGrid : ScriptableGrid<CGGalleryGridSlot>
    {
        protected virtual List<CGSlotData> SlotData { get; private set; }
        protected virtual List<CGSlotData> MiniSlotData { get; private set; } = new List<CGSlotData>();
        protected virtual List<CGSlotData> KangSlotData { get; private set; } = new List<CGSlotData>();
        protected virtual List<CGSlotData> SulSlotData { get; private set; } = new List<CGSlotData>();
        protected virtual List<CGSlotData> JinSlotData { get; private set; } = new List<CGSlotData>();
        private CGViewerPanel viewerPanel;

        public void Initialize (CGViewerPanel viewerPanel, List<CGSlotData> slotData)
        {
            this.viewerPanel = viewerPanel;
            SlotData = slotData; // 전체 데이터에도 추가
            // 딕셔너리를 사용하여 이름에 따라 리스트에 데이터를 추가합니다.
            foreach (var data in slotData)
            {
                // 각 카테고리에 맞게 데이터를 분류합니다.
                if (data.Id.StartsWith("Kang"))
                    KangSlotData.Add(new CGSlotData(data.Id, data.TexturePaths, data.TextureLoader));
                else if (data.Id.StartsWith("Sul"))
                    SulSlotData.Add(new CGSlotData(data.Id, data.TexturePaths, data.TextureLoader));
                else if (data.Id.StartsWith("Jin"))
                    JinSlotData.Add(new CGSlotData(data.Id, data.TexturePaths, data.TextureLoader));
                else if (data.Id.StartsWith("Mini"))
                    JinSlotData.Add(new CGSlotData(data.Id, data.TexturePaths, data.TextureLoader));
            }
            Initialize(slotData.Count);
        }

        protected new void Initialize (int itemsCount) => base.Initialize(itemsCount);

        protected override void InitializeSlot (CGGalleryGridSlot slot)
        {
            slot.Initialize(viewerPanel.Show);
        }

        protected override void BindSlot (CGGalleryGridSlot slot, int itemIndex)
        {
            var slotData = SlotData[itemIndex];
            slot.Bind(slotData);
        }
    }
}
