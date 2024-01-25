// Copyright 2022 ReWaffle LLC. All rights reserved.

using System.IO;
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
                var title = ExtractTitleFromPath(pathsBySlot.First()); // pathsBySlot 중 하나의 경로에서 제목 추출
                // 여기서 texturePaths를 생성해서 CGSlotData에 전달합니다.
                var texturePaths = pathsBySlot.OrderBy(p => p).ToList();
                var data = new CGSlotData(id, texturePaths , loader,title);
                slotData.Add(data);
            }
            string ExtractTitleFromPath(string path)
            {
                // 경로에서 파일 이름을 추출하고, 필요에 따라 추가 처리를 수행
                var name = Path.GetFileNameWithoutExtension(path);
                if(name == "Kang01")
                    return "네가 그 전학생이구나!";
                else if(name == "Kang02")
                    return "처음 잡아본 여자의 손...";
                else if(name == "Kang03")
                    return "Kang3번";
                else if(name == "Kang04")
                    return "Kang4번";
                else if(name == "Kang05")
                    return "Kang5번";
                else if(name == "Kang06")
                    return "Kang6번";
                else if(name == "Jin01")
                    return "Jin1번";
                else if(name == "Jin02")
                    return "Jin2번";
                else if(name == "Jin03")
                    return "Jin3번";
                else if(name == "Jin04")
                    return "Jin4번";
                else if(name == "Jin05")
                    return "Jin5번";
                else if(name == "Jin06")
                    return "Jin6번";
                else if(name == "Sul01")
                    return "이딴게 회의?";
                else if(name == "Sul02")
                    return "두근두근 벌컥벌컥";
                else if(name == "Sul03")
                    return "힘을 빼고 자연스럽게";
                else if(name == "Sul04")
                    return "Sul4번";
                else if(name == "Sul05")
                    return "Sul5번";
                else if(name == "Sul06")
                    return "Sul6번";
                else if(name == "Mini01")
                    return "포스터";
                else if(name == "Mini02")
                    return "낡은 앨범";
                else if(name == "Mini03")
                    return "밴드부 팻말";
                else if(name == "Mini04")
                    return "한갑수 선생님";
                else if(name == "Mini05")
                    return "유리관 속 기타";
                else if(name == "Mini06")
                    return "졸업 앨범";
                else if(name == "Mini07")
                    return "믹서";
                else if(name == "Mini08")
                    return "Mini8번";
                else if(name == "Mini09")
                    return "Mini9번";
                else if(name == "Mini10")
                    return "Mini10번";
                else if(name == "Mini11")
                    return "Mini11번";
                else if(name == "Mini12")
                    return "Mini12번";
                else if(name == "Mini13")
                    return "Mini13번";
                else if(name == "Mini14")
                    return "Mini14번";
                else if(name == "Mini15")
                    return "Mini15번";
                else if(name == "Mini16")
                    return "Mini16번";
                else if(name == "Mini17")
                    return "Mini17번";
                else if(name == "Mini18")
                    return "Mini18번";
                else if(name == "Mini19")
                    return "Mini19번";
                else if(name == "Mini20")
                    return "Mini20번";
                else
                    return name;
            }
        }
        public string GetTitle()
        {
            return "";
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
