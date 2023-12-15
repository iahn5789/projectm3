// Copyright 2022 ReWaffle LLC. All rights reserved.

using System.Collections;
using System;
using System.Collections.Generic;
using System.Linq;
using Naninovel.Runtime.UI;
using Naninovel.UI;
using UnityEngine;
using UnityEngine.UI;

namespace Naninovel
{
    public class CGGalleryGridSlot : ScriptableGridSlot
    {
        public override string Id => Data.Id;

        protected virtual CGSlotData Data { get; private set; }
        protected virtual RawImage ThumbnailImage => thumbnailImage;
        protected virtual Texture2D LockedTexture => lockedTexture;
        protected virtual Texture2D LoadingTexture => loadingTexture;
        protected virtual Text CGText => cgText;
        protected virtual IReadOnlyList<Texture2D> CGTextures { get; private set; }
        protected virtual bool AnyUnlocked => CGTextures?.Any(t => t != null) ?? false;

        [SerializeField] private RawImage thumbnailImage;
        [SerializeField] private Texture2D lockedTexture;
        [SerializeField] private Texture2D loadingTexture;
        [SerializeField] private Text cgText;

        [SerializeField] private IUnlockableManager unlockableManager;
        private ILocalizationManager localizationManager;
        private Action<IEnumerable<Texture2D>> showTextures;
        private Coroutine repeatingCoroutine; // 코루틴을 참조하기 위한 변수

        public void Initialize (Action<IEnumerable<Texture2D>> showTextures)
        {
            this.showTextures = showTextures;
        }

        public void Bind (CGSlotData data)
        {
            UnloadCGTextures();
            this.Data = data;
            Refresh();
        }

        protected virtual async UniTask LoadCGTexturesAsync ()
        {
            var prevThumbnailImage = ThumbnailImage.texture;
            ThumbnailImage.texture = LoadingTexture;
            var textures = new Texture2D[Data.TexturePaths.Count];
            await UniTask.WhenAll(Data.TexturePaths.Select(LoadCGTextureAsync));
            CGTextures = textures;
            ThumbnailImage.texture = prevThumbnailImage;

            async UniTask LoadCGTextureAsync (string path)
            {
                var unlockableId = PathToUnlockableId(path);
                if (!unlockableManager.ItemUnlocked(unlockableId)) return;
                var index = Data.TexturePaths.IndexOf(path);
                if (index >= 0 && index < textures.Length) // 범위 확인 추가
                {
                    textures[index] = Data.TextureLoader.IsLoaded(path)
                        ? Data.TextureLoader.GetLoadedOrNull(path)
                        : await Data.TextureLoader.LoadAndHoldAsync(path, this);
                }
            }
        }

        public virtual void UnloadCGTextures ()
        {
            if (Data.TexturePaths is null) return;
            foreach (var texturePath in Data.TexturePaths)
                Data.TextureLoader?.Release(texturePath, this);
        }

        protected virtual void Refresh () => HandleItemUpdated(null);

        protected override void OnEnable()
        {
            base.OnEnable();
            repeatingCoroutine = StartCoroutine(RepeatingCoroutine());
        }

        protected override void OnDisable()
        {
            base.OnDisable();
            if (repeatingCoroutine != null)
            {
                StopCoroutine(repeatingCoroutine);
            }
        }

        protected override void Awake ()
        {
            base.Awake();
            this.AssertRequiredObjects(ThumbnailImage, LockedTexture);

            unlockableManager = Engine.GetService<IUnlockableManager>();
            localizationManager = Engine.GetService<ILocalizationManager>();
            ThumbnailImage.texture = LoadingTexture;

            unlockableManager.OnItemUpdated += HandleItemUpdated;
            localizationManager.OnLocaleChanged += HandleLocaleChanged;
            
        }
        private IEnumerator RepeatingCoroutine()
        {
            while (true)
            {
                int itemId = ExtractItemId(this.Id);
                float scale = CalculateScaleBasedOnPosition(itemId);
                transform.localScale = new Vector3(scale, scale, scale);

                yield return null;
            }
        }
        private int ExtractItemId(string id)
        {
            if (string.IsNullOrEmpty(id) || id.Length < 2)
            {
                return -1;
            }

            string lastTwoChars = id.Substring(id.Length - 2);
            if (int.TryParse(lastTwoChars, out int itemId))
            {
                return itemId;
            }
            return -1;
        }
        private float CalculateScaleBasedOnPosition(int itemId)
        {
            // this.Id 확인
            if (string.IsNullOrEmpty(this.Id))
            {
                return 1f;
            }
            float distance_nanugi;
            int referenceValue;
            if (this.Id.StartsWith("Mini"))
            {
                distance_nanugi = 2400f;
                referenceValue = ((itemId - 1) / 2) * -325;
            }
            else
            {
                distance_nanugi = 4000f;
                referenceValue = (itemId - 1) * -1000;
            }
            float distance = Mathf.Abs(transform.parent.parent.localPosition.x - referenceValue);
            return Mathf.Clamp(1 - (distance / distance_nanugi), 0.8f, 1f); // Scale 계산 (거리에 따라 0.5에서 1 사이 변화)
        }
        
        protected override void OnDestroy ()
        {
            base.OnDestroy();

            if (unlockableManager != null)
                unlockableManager.OnItemUpdated -= HandleItemUpdated;
            if (localizationManager != null)
                localizationManager.OnLocaleChanged -= HandleLocaleChanged;
        }

        protected virtual async void HandleItemUpdated (UnlockableItemUpdatedArgs _)
        {
            while (Id is null) // We get here after first OnEnable, but ID is not set yet.
            {
                await UniTask.DelayFrame(1);
                if (!this) return;
            }
            
            await LoadCGTexturesAsync();

            if (!AnyUnlocked) 
            {
                ThumbnailImage.texture = LockedTexture;
                if (CGText != null)
                {
                    CGText.text = "???"; // 잠긴 CG 제목
                }
            }
            else 
            {
                ThumbnailImage.texture = CGTextures.FirstOrDefault(t => t != null);
                
                if (CGText != null)
                {
                    CGText.text = Data.Title; // 잠금 해제된 CG의 제목
                }
            }
        }

        protected virtual void HandleLocaleChanged (string _) => Refresh();

        protected override void OnButtonClick ()
        {
            base.OnButtonClick();

            if (AnyUnlocked)
                showTextures(CGTextures);
        }

        private static string PathToUnlockableId (string path) => $"{CGGalleryPanel.CGPrefix}/{path}";
    }
}
