// Copyright 2022 ReWaffle LLC. All rights reserved.

using System;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

namespace Naninovel
{
    /// <summary>
    /// When applied to a <see cref="GameObject"/>, containing child objects with <see cref="Renderer"/> components (layers), 
    /// handles the composition (layers enabled state) and rendering to a texture in back to front order based on z-position and sort order.
    /// Will prevent the child renderers from being rendered by the cameras at play mode.
    /// </summary>
    [ExecuteAlways]
    public abstract class LayeredActorBehaviour : MonoBehaviour
    {
        [Serializable]
        public class CompositionMapItem
        {
            public string Key;
            [TextArea(1, 5)]
            public string Composition;
        }

        /// <summary>
        /// Current layer composition of the actor.
        /// </summary>
        public virtual string Composition => string.Join(splitLiteral, Drawer.Layers.Select(l => $"{l.Group}{(l.Enabled ? enableLiteral : disableLiteral)}{l.Name}"));
        public virtual bool Animated => animated;

        protected virtual bool Reversed => reversed;
        protected virtual Material SharedRenderMaterial => renderMaterial;
        protected virtual LayeredDrawer Drawer { get; private set; }

        private const string selectLiteral = ">";
        private const string enableLiteral = "+";
        private const string disableLiteral = "-";
        private const string splitLiteral = ",";
        private static readonly string[] splitLiterals = { splitLiteral };

        [Tooltip("액터가 모든 프레임을 렌더링해야 하는지 여부. 레이어를 애니메이션화하거나 다른 동적 동작을 구현할 때 활성화합니다.")]
        [SerializeField] private bool animated;
        [Tooltip("레이어를 반대 순서로 렌더링할지 여부입니다.")]
        [SerializeField] private bool reversed;
        [Tooltip("레이어를 렌더링할 때 사용할 공유 재료. 할당되지 않은 경우 레이어 렌더링기의 재료를 사용합니다.")]
        [SerializeField] private Material renderMaterial;
        [Tooltip("계층 구성 식을 키에 매핑할 수 있습니다. 그런 다음 키를 사용하여 전체 식을 지정하는 대신 계층적 배우 모양을 지정할 수 있습니다.")]
        [SerializeField] private List<CompositionMapItem> compositionMap = new List<CompositionMapItem>();
        [Tooltip("배우의 모양이 변경될 때 호출됩니다.")]
        [SerializeField] private StringUnityEvent onAppearanceChanged;

        /// <summary>
        /// Returns all the composition expressions mapped to keys via <see cref="compositionMap"/> serialized field.
        /// Records with duplicate keys are ignored.
        /// </summary>
        public virtual IReadOnlyDictionary<string, string> GetCompositionMap ()
        {
            var map = new Dictionary<string, string>();
            foreach (var item in compositionMap)
                map[item.Key] = item.Composition;
            return map;
        }

        /// <summary>
        /// Applies provided layer composition expression to the actor.
        /// </summary>
        /// <remarks>
        /// Value format: path/to/object/parent>SelectedObjName,another/path+EnabledObjName,another/path-DisabledObjName,...
        /// Select operator (>) means that only this object is enabled inside the group, others should be disabled.
        /// When no target objects provided, all the layers inside the group will be affected (recursively, including child groups).
        /// </remarks>
        public virtual void ApplyComposition (string value)
        {
            onAppearanceChanged?.Invoke(value);

            if (Drawer.Layers is null || Drawer.Layers.Count == 0) return;

            SplitAndApplyExpressions(value);

            void SplitAndApplyExpressions (string composition)
            {
                var items = composition.Trim().Split(splitLiterals, StringSplitOptions.RemoveEmptyEntries);
                foreach (var item in items)
                    if (compositionMap.Any(e => e.Key == item))
                        SplitAndApplyExpressions(compositionMap.First(e => e.Key == item).Composition);
                    else ApplyExpression(item);
            }

            void ApplyExpression (string expression)
            {
                if (ParseExpression(expression, selectLiteral, out var group, out var name)) // Select expression (>).
                {
                    if (string.IsNullOrEmpty(name)) // Enable all in the group, disable all in neighbour groups (recursive).
                    {
                        var parentGroup = group.Contains("/") ? group.GetBeforeLast("/") : string.Empty;
                        ForEachLayer(l => l.Group.StartsWithFast(parentGroup), l => l.Enabled = l.Group.StartsWithFast(group), group);
                    }
                    else ForEachLayer(l => l.Group.EqualsFast(group), l => l.Enabled = l.Name.EqualsFast(name), group);
                }
                else if (ParseExpression(expression, enableLiteral, out group, out name)) // Enable expression (+).
                {
                    if (string.IsNullOrEmpty(name))
                        ForEachLayer(l => l.Group.StartsWithFast(group), l => l.Enabled = true, group);
                    else ForLayer(group, name, l => l.Enabled = true);
                }
                else if (ParseExpression(expression, disableLiteral, out group, out name)) // Disable expression (-).
                {
                    if (string.IsNullOrEmpty(name))
                        ForEachLayer(l => l.Group.StartsWithFast(group), l => l.Enabled = false, group);
                    else ForLayer(group, name, l => l.Enabled = false);
                }
                else Engine.Warn($"Unrecognized `{gameObject.name}` layered actor composition expression: `{expression}`.");
            }

            bool ParseExpression (string expression, string operationLiteral, out string group, out string name)
            {
                group = expression.GetBefore(operationLiteral);
                if (group is null)
                {
                    name = null;
                    return false;
                }
                name = expression.Substring(group.Length + operationLiteral.Length);
                return true;
            }

            void ForEachLayer (Func<LayeredActorLayer, bool> selector, Action<LayeredActorLayer> action, string group)
            {
                var layers = Drawer.Layers.Where(selector).ToArray();
                if (!layers.Any()) Engine.Warn($"`{gameObject.name}` layered actor composition group `{group}` not found.");
                else
                    foreach (var layer in layers)
                        action.Invoke(layer);
            }

            void ForLayer (string group, string name, Action<LayeredActorLayer> action)
            {
                var layer = Drawer.Layers.FirstOrDefault(l => l.Group.EqualsFast(group) && l.Name.EqualsFast(name));
                if (layer is null) Engine.Warn($"`{gameObject.name}` layered actor layer `{name}` inside composition group `{group}` not found.");
                else action.Invoke(layer);
            }
        }

        /// <summary>
        /// Rebuilds the layers and associated rendering parameters.
        /// </summary>
        [ContextMenu("Rebuild Layers")]
        public virtual void RebuildLayers () => Drawer?.BuildLayers();

        /// <summary>
        /// Renders the enabled layers scaled by <paramref name="pixelsPerUnit"/> to the provided or a temporary <see cref="RenderTexture"/>.
        /// Don't forget to release unused render textures.
        /// </summary>
        /// <param name="pixelsPerUnit">PPU to use when rendering.</param>
        /// <param name="renderTexture">Render texture to render the content into; when not provided, will create a temporary one.</param>
        /// <returns>Temporary render texture created when no render texture is provided.</returns>
        public virtual RenderTexture Render (float pixelsPerUnit, RenderTexture renderTexture = default) => Drawer.DrawLayers(pixelsPerUnit, renderTexture);

        protected virtual void Awake ()
        {
            Drawer = CreateDrawer();
        }

        protected virtual void OnDestroy ()
        {
            Drawer?.Dispose();
        }

        protected virtual void OnDrawGizmos ()
        {
            Drawer.DrawGizmos();
        }

        protected virtual void OnValidate ()
        {
            // Drawer is null when entering-exiting play mode while
            // a layered prefab is opened in edit mode (Awake is not invoked).
            if (Drawer is null) Drawer = CreateDrawer();
        }

        protected virtual LayeredDrawer CreateDrawer ()
        {
            return new LayeredDrawer(transform, SharedRenderMaterial, Reversed);
        }
    }
}
