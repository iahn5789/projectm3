// Copyright 2022 ReWaffle LLC. All rights reserved.

using System.Collections.Generic;
using System.Linq;
using Naninovel.Runtime.UI;
using UnityEngine;

namespace Naninovel.UI
{
    [RequireComponent(typeof(CanvasGroup))]
    public class CGGalleryPanel : CustomUI, ICGGalleryUI
    {
        public const string CGPrefix = "CG";

        public virtual int CGCount { get; private set; }

        protected virtual ResourceLoaderConfiguration[] CGSources => cgSources;
        protected virtual CGViewerPanel ViewerPanel => viewerPanel;
        protected virtual CGGalleryGrid Grid => grid;

        [Tooltip("지정된 리소스 로더를 사용하여 사용 가능한 CG 슬롯 및 관련 텍스처를 검색합니다.")]
        [SerializeField] private ResourceLoaderConfiguration[] cgSources = {
            new ResourceLoaderConfiguration { PathPrefix = $"{UnlockablesConfiguration.DefaultPathPrefix}/{CGPrefix}" },
            new ResourceLoaderConfiguration { PathPrefix = $"{BackgroundsConfiguration.DefaultPathPrefix}/{BackgroundsConfiguration.MainActorId}/{CGPrefix}" }
        };
        [Tooltip("선택한 CG 슬롯을 보는 데 사용됩니다.")]
        [SerializeField] private CGViewerPanel viewerPanel;
        [Tooltip("선택 가능한 CG 미리 보기 썸네일을 호스팅하고 탐색하는 데 사용됩니다.")]
        [SerializeField] private CGGalleryGrid grid;

        private IResourceProviderManager providerManager;
        private ILocalizationManager localizationManager;
        private IInputManager inputManager;

        public override async UniTask InitializeAsync ()
        {
            var slotData = new List<CGSlotData>();
            await UniTask.WhenAll(CGSources.Select(InitializeLoaderAsync));
            CGCount = slotData.Count;
            Grid.Initialize(viewerPanel, slotData);

            async UniTask InitializeLoaderAsync (ResourceLoaderConfiguration loaderConfig)
            {
                var loader = loaderConfig.CreateLocalizableFor<Texture2D>(providerManager, localizationManager);
                var resourcePaths = await loader.LocateAsync(string.Empty);
                var pathsBySlots = resourcePaths.OrderBy(p => p).GroupBy(CGPathToSlotId);
                foreach (var pathsBySlot in pathsBySlots)
                    AddSlotData(pathsBySlot, loader);
            }

            string CGPathToSlotId (string cgPath)
            {
                if (cgPath.Contains(CGPrefix + "/"))
                    cgPath = cgPath.GetAfterFirst(CGPrefix + "/");
                if (!cgPath.Contains("_")) return cgPath;
                if (!ParseUtils.TryInvariantInt(cgPath.GetAfter("_"), out _)) return cgPath;
                return cgPath.GetBeforeLast("_");
            }

            void AddSlotData (IGrouping<string, string> pathsBySlot, IResourceLoader<Texture2D> loader)
            {
                var id = pathsBySlot.Key;
                if (slotData.Any(s => s.Id == id)) return;
                var data = new CGSlotData(id, pathsBySlot.OrderBy(p => p), loader);
                slotData.Add(data);
            }
        }

        protected override void Awake ()
        {
            base.Awake();
            this.AssertRequiredObjects(Grid, ViewerPanel);

            providerManager = Engine.GetService<IResourceProviderManager>();
            localizationManager = Engine.GetService<ILocalizationManager>();
            inputManager = Engine.GetService<IInputManager>();
        }

        protected override void OnEnable ()
        {
            base.OnEnable();

            if (inputManager?.GetCancel() != null)
                inputManager.GetCancel().OnStart += ViewerPanel.Hide;
        }

        protected override void OnDisable ()
        {
            base.OnDisable();

            if (inputManager?.GetCancel() != null)
                inputManager.GetCancel().OnStart -= ViewerPanel.Hide;
        }
    }
}
