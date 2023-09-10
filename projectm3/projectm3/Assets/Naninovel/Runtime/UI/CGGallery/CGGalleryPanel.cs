// Copyright 2022 ReWaffle LLC. All rights reserved.

using System.Collections.Generic;
using System.Linq;
using Naninovel.Runtime.UI;
using UnityEngine;
using UnityEngine.UI;

namespace Naninovel.UI
{
    [RequireComponent(typeof(CanvasGroup))]
    public class CGGalleryPanel : CustomUI, ICGGalleryUI
    {
        public const string CGPrefix = "CG";

        public virtual int CGCount { get; private set; }

        protected virtual ResourceLoaderConfiguration[] CGSources => cgSources;
        protected virtual CGViewerPanel ViewerPanel_Kang => viewerPanel_Kang;
        protected virtual CGViewerPanel ViewerPanel_Jin => viewerPanel_Jin;
        protected virtual CGViewerPanel ViewerPanel_Sul => viewerPanel_Sul;
        protected virtual CGViewerPanel ViewerPanel_Mini => viewerPanel_Mini;
        protected virtual CGGalleryGrid Grid_Kang => grid_kang;
        protected virtual CGGalleryGrid Grid_Sul => grid_sul;
        protected virtual CGGalleryGrid Grid_Jin => grid_jin;
        protected virtual CGGalleryGrid Grid_Mini => grid_mini;

        [Tooltip("지정된 리소스 로더를 사용하여 사용 가능한 CG 슬롯 및 관련 텍스처를 검색합니다.")]
        [SerializeField] private ResourceLoaderConfiguration[] cgSources = {
            new ResourceLoaderConfiguration { PathPrefix = $"{UnlockablesConfiguration.DefaultPathPrefix}/{CGPrefix}" },
            new ResourceLoaderConfiguration { PathPrefix = $"{BackgroundsConfiguration.DefaultPathPrefix}/{BackgroundsConfiguration.MainActorId}/{CGPrefix}" }
        };
        [Tooltip("선택한 CG 슬롯을 보는 데 사용됩니다.")]
        [SerializeField] private CGViewerPanel viewerPanel_Kang;
        [SerializeField] private CGViewerPanel viewerPanel_Jin;
        [SerializeField] private CGViewerPanel viewerPanel_Sul;
        [SerializeField] private CGViewerPanel viewerPanel_Mini;
        [Tooltip("선택 가능한 CG 미리 보기 썸네일을 호스팅하고 탐색하는 데 사용됩니다.")]
        [SerializeField] private CGGalleryGrid grid_kang;
        [SerializeField] private CGGalleryGrid grid_sul;
        [SerializeField] private CGGalleryGrid grid_jin;
        [SerializeField] private CGGalleryGrid grid_mini;

        private IResourceProviderManager providerManager;
        private ILocalizationManager localizationManager;
        private IInputManager inputManager;

        public override async UniTask InitializeAsync ()
        {
            var slotData = new List<CGSlotData>();
            await UniTask.WhenAll(CGSources.Select(InitializeLoaderAsync));
            CGCount = slotData.Count;
            // UniTask.WhenAll 메서드의 결과를 저장할 변수
            // 이제 모든 비동기 작업이 완료되었으므로 결과를 출력할 수 있습니다.
            var jinSlotData = slotData.Where(data => data.Id.StartsWith("Jin")).ToList();
            var sulSlotData = slotData.Where(data => data.Id.StartsWith("Sul")).ToList();
            var kangSlotData = slotData.Where(data => data.Id.StartsWith("Kang")).ToList();
            var miniSlotData = slotData.Where(data => data.Id.StartsWith("Mini")).ToList();

            // 각 서브루트에 대한 그리드 초기화
            grid_kang.Initialize(viewerPanel_Kang, kangSlotData);
            grid_sul.Initialize(viewerPanel_Sul, sulSlotData);
            grid_jin.Initialize(viewerPanel_Jin, jinSlotData);
            grid_mini.Initialize(viewerPanel_Mini, miniSlotData);

            
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
                // 여기서 texturePaths를 생성해서 CGSlotData에 전달합니다.
                var texturePaths = pathsBySlot.OrderBy(p => p).ToList();
                var data = new CGSlotData(id, texturePaths , loader);
                slotData.Add(data);
            }
        }

        protected override void Awake ()
        {
            base.Awake();
            this.AssertRequiredObjects(Grid_Kang, ViewerPanel_Kang);
            this.AssertRequiredObjects(Grid_Jin, ViewerPanel_Jin);
            this.AssertRequiredObjects(Grid_Sul, ViewerPanel_Sul);
            this.AssertRequiredObjects(Grid_Sul, ViewerPanel_Mini);

            providerManager = Engine.GetService<IResourceProviderManager>();
            localizationManager = Engine.GetService<ILocalizationManager>();
            inputManager = Engine.GetService<IInputManager>();
        }

        protected override void OnEnable ()
        {
            base.OnEnable();

            if (inputManager?.GetCancel() != null)
            {
                inputManager.GetCancel().OnStart += ViewerPanel_Kang.Hide;
                inputManager.GetCancel().OnStart += ViewerPanel_Jin.Hide;
                inputManager.GetCancel().OnStart += ViewerPanel_Sul.Hide;
                inputManager.GetCancel().OnStart += ViewerPanel_Mini.Hide;
            }
        }

        protected override void OnDisable ()
        {
            base.OnDisable();

            if (inputManager?.GetCancel() != null)
            {
                inputManager.GetCancel().OnStart -= ViewerPanel_Kang.Hide;
                inputManager.GetCancel().OnStart -= ViewerPanel_Jin.Hide;
                inputManager.GetCancel().OnStart -= ViewerPanel_Sul.Hide;
                inputManager.GetCancel().OnStart -= ViewerPanel_Mini.Hide;
            }
        }
    }
}
