// Copyright 2022 ReWaffle LLC. All rights reserved.

using System.Collections.Generic;
using System.Linq;
using UnityEngine;

namespace Naninovel
{
    /// <summary>
    /// Represents serializable data used for <see cref="ResourceLoader{TResource}"/> construction.
    /// </summary>
    [System.Serializable]
    public class ResourceLoaderConfiguration
    {
        [Tooltip("요청된 각 리소스에 대해 추가할 경로 프리픽스입니다.")]
        public string PathPrefix = string.Empty;
        [Tooltip("순서대로 사용할 프로바이더 유형입니다." +
                 "\n\n기본 제공 옵션:" +
                 "\n • 주소 지정 가능 - 주소 지정 가능 에셋 시스템을 통해 관리되는 에셋입니다." +
                 "\n • 프로젝트 - 프로젝트의 'Resources' 폴더에 저장된 에셋입니다." +
                 "\n • 로컬 - 로컬 파일 시스템에 저장된 에셋입니다." +
                 "\n • Google Drive — Google Drive 계정에 원격으로 저장된 에셋입니다.")]
        public List<string> ProviderTypes = new List<string> { ResourceProviderConfiguration.AddressableTypeName, ResourceProviderConfiguration.ProjectTypeName };

        public ResourceLoader<TResource> CreateFor<TResource> (IResourceProviderManager providerManager) where TResource : Object
        {
            var providerList = providerManager.GetProviders(ProviderTypes);
            return new ResourceLoader<TResource>(providerList, providerManager, PathPrefix);
        }

        public LocalizableResourceLoader<TResource> CreateLocalizableFor<TResource> (IResourceProviderManager providerManager,
            ILocalizationManager localizationManager, bool fallbackToSource = true) where TResource : Object
        {
            var providerList = providerManager.GetProviders(ProviderTypes);
            return new LocalizableResourceLoader<TResource>(providerList, providerManager, localizationManager, PathPrefix, fallbackToSource);
        }

        public override string ToString () => $"{PathPrefix}- ({string.Join(", ", ProviderTypes.Select(t => t.GetBetween(".", "Resource") ?? t.GetBefore(",")))})";
    }
}
