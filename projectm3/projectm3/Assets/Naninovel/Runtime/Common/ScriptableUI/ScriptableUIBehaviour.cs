// Copyright 2022 ReWaffle LLC. All rights reserved.

using System;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;

namespace Naninovel
{
    /// <summary>
    /// A wrapper over <see cref="UIBehaviour"/> providing various scripting utility APIs.
    /// </summary>
    public class ScriptableUIBehaviour : UIBehaviour
    {
        public enum FocusMode
        {
            Visibility,
            Navigation
        }

        /// <summary>
        /// Event invoked when visibility of the UI changes.
        /// </summary>
        public event Action<bool> OnVisibilityChanged;

        /// <summary>
        /// Fade duration (in seconds) when changing visibility of the UI;
        /// requires a <see cref="UnityEngine.CanvasGroup"/> on the same game object.
        /// </summary>
        public virtual float FadeTime { get => fadeTime; set => fadeTime = value; }
        /// <summary>
        /// Whether to ignore time scale when changing visibility (fade animation).
        /// </summary>
        public virtual bool IgnoreTimeScale { get => ignoreTimeScale; set => ignoreTimeScale = value; }
        /// <summary>
        /// Whether the UI element should be visible or hidden on awake.
        /// requires a <see cref="UnityEngine.CanvasGroup"/> on the same game object.
        /// </summary>
        public virtual bool VisibleOnAwake => visibleOnAwake;
        /// <summary>
        /// Determines when to focus the object: on the UI becomes visible or on first navigation attempt (arrow keys or d-pad) while the UI is visible.
        /// </summary>
        public virtual FocusMode FocusModeType { get => focusMode; set => focusMode = value; }
        /// <summary>
        /// The object to focus (for keyboard or gamepad control) when the UI becomes visible or upon navigation.
        /// </summary>
        public virtual GameObject FocusObject { get => focusObject; set => focusObject = value; }
        /// <summary>
        /// Whether the UI is currently visible.
        /// requires a <see cref="UnityEngine.CanvasGroup"/> on the same game object.
        /// </summary>
        public virtual bool Visible { get => visibleSelf; set => SetVisibility(value); }
        /// <summary>
        /// Current opacity (alpha) of the UI element, in 0.0 to 1.0 range.
        /// requires a <see cref="UnityEngine.CanvasGroup"/> on the same game object, will always return 1.0 otherwise.
        /// </summary>
        public virtual float Opacity => CanvasGroup ? CanvasGroup.alpha : 1f;
        /// <summary>
        /// Whether the UI is currently interactable.
        /// requires a <see cref="UnityEngine.CanvasGroup"/> on the same game object.
        /// </summary>
        public virtual bool Interactable { get => !CanvasGroup || CanvasGroup.interactable; set => SetInteractable(value); }
        /// <summary>
        /// Whether interaction with the object is permanently disabled, no matter the visibility.
        /// </summary>
        public virtual bool DisableInteraction => disableInteraction;
        /// <summary>
        /// Transform used by the UI element.
        /// </summary>
        public virtual RectTransform RectTransform => GetRectTransform();
        /// <summary>
        /// Topmost parent (in the game object hierarchy) canvas component.
        /// </summary>
        public virtual Canvas TopmostCanvas => ObjectUtils.IsValid(topmostCanvasCache) ? topmostCanvasCache : topmostCanvasCache = gameObject.FindTopmostComponent<Canvas>();
        /// <summary>
        /// Current sort order of the UI element, as per <see cref="TopmostCanvas"/>.
        /// </summary>
        public virtual int SortingOrder { get => ObjectUtils.IsValid(TopmostCanvas) ? TopmostCanvas.sortingOrder : 0; set => SetSortingOrder(value); }
        /// <summary>
        /// Current render mode of the UI element, as per <see cref="TopmostCanvas"/>.
        /// </summary>
        public virtual RenderMode RenderMode { get => ObjectUtils.IsValid(TopmostCanvas) ? TopmostCanvas.renderMode : default; set => SetRenderMode(value); }
        /// <summary>
        /// Current render camera of the UI element, as per <see cref="TopmostCanvas"/>.
        /// </summary>
        public virtual Camera RenderCamera { get => ObjectUtils.IsValid(TopmostCanvas) ? TopmostCanvas.worldCamera : null; set => SetRenderCamera(value); }

        /// <summary>
        /// Game object to focus on next navigation input (eg, arrow keys on keyboard or dpad on gamepad).
        /// </summary>
        protected static GameObject FocusOnNavigation { get; set; }

        /// <summary>
        /// Canvas group component attached to the host game object, if any.
        /// </summary>
        protected virtual CanvasGroup CanvasGroup { get; private set; }
        /// <summary>
        /// Whether to change opacity (alpha) of Canvas Group in correspondence to visibility of the UI element.
        /// </summary>
        protected virtual bool ControlOpacity => controlOpacity;

        [Tooltip("가시성에 관계없이 객체와의 상호작용을 영구적으로 해제할지 여부. 동일한 게임 객체에 '캔버스 그룹' 구성요소가 필요합니다.")]
        [SerializeField] private bool disableInteraction;
        [Tooltip("UI 요소가 활성화 시 표시되거나 숨겨져야 하는지 여부입니다.")]
        [SerializeField] private bool visibleOnAwake = true;
        [Tooltip("UI 요소의 가시성에 대응하여 캔버스 그룹의 불투명도(알파)를 변경할지 여부. 동일한 게임 오브젝트에 '캔버스 그룹' 구성요소가 필요합니다.")]
        [SerializeField] private bool controlOpacity = true;
        [Tooltip("'Control Opacity'를 활성화하면 가시성을 변경할 때 불투명도가 사라지는 시간(초)을 제어합니다.")]
        [SerializeField] private float fadeTime = .3f;
        [Tooltip("'Control Opacity'를 활성화하면 가시성을 변경할 때 시간 척도를 무시할지 여부를 제어합니다.")]
        [SerializeField] private bool ignoreTimeScale = true;
        [Tooltip("할당되면 UI가 표시되거나 탐색 시에 (키보드 또는 게임 패드 제어용) 개체에 초점을 맞출 수 있습니다.")]
        [SerializeField] private GameObject focusObject;
        [Tooltip("Focus Object'가 할당되면 객체에 초점을 맞출 시기를 결정합니다. UI가 표시되는 동안 또는 첫 번째 탐색 시도(화살표 키 또는 d-pad)가 표시됩니다. 탐색 모드에 대한 게임 패드 지원을 위해서는 Unity의 새로운 입력 시스템 패키지가 설치되어야 합니다.")]
        [SerializeField] private FocusMode focusMode;
        [Tooltip("UI 요소가 표시될 때 호출됩니다.")]
        [SerializeField] private UnityEvent onShow;
        [Tooltip("UI 요소를 숨길 때 호출됩니다.")]
        [SerializeField] private UnityEvent onHide;

        private readonly Tweener<FloatTween> fadeTweener = new Tweener<FloatTween>();
        private RectTransform rectTransform;
        private Canvas topmostCanvasCache;
        private bool visibleSelf;

        /// <summary>
        /// Gradually changes <see cref="Visible"/> with fade animation over <see cref="FadeTime"/> or specified time (in seconds).
        /// </summary>
        public virtual async UniTask ChangeVisibilityAsync (bool visible, float? duration = null, AsyncToken asyncToken = default)
        {
            if (fadeTweener.Running)
                fadeTweener.Stop();

            visibleSelf = visible;

            HandleVisibilityChanged(visible);

            if (!CanvasGroup) return;

            if (!DisableInteraction)
            {
                CanvasGroup.interactable = visible;
                CanvasGroup.blocksRaycasts = visible;
            }

            if (!ControlOpacity) return;

            var fadeDuration = duration ?? FadeTime;
            var targetOpacity = visible ? 1f : 0f;

            if (fadeDuration == 0f)
            {
                CanvasGroup.alpha = targetOpacity;
                return;
            }

            var tween = new FloatTween(CanvasGroup.alpha, targetOpacity, fadeDuration, SetOpacity, IgnoreTimeScale);
            await fadeTweener.RunAsync(tween, asyncToken, this);
        }

        /// <summary>
        /// Changes <see cref="Visible"/>.
        /// </summary>
        public virtual void SetVisibility (bool visible)
        {
            if (fadeTweener.Running)
                fadeTweener.Stop();

            visibleSelf = visible;

            HandleVisibilityChanged(visible);

            if (!CanvasGroup) return;

            if (!DisableInteraction)
            {
                CanvasGroup.interactable = visible;
                CanvasGroup.blocksRaycasts = visible;
            }

            if (ControlOpacity)
                CanvasGroup.alpha = visible ? 1f : 0f;
        }

        /// <summary>
        /// Toggles <see cref="Visible"/>.
        /// </summary>
        public virtual void ToggleVisibility ()
        {
            ChangeVisibilityAsync(!Visible).Forget();
        }

        /// <summary>
        /// Reveals the UI over <see cref="FadeTime"/>.
        /// </summary>
        [ContextMenu("Show")]
        public virtual void Show ()
        {
            ChangeVisibilityAsync(true).Forget();
        }

        /// <summary>
        /// Hides the UI over <see cref="FadeTime"/>.
        /// </summary>
        [ContextMenu("Hide")]
        public virtual void Hide ()
        {
            ChangeVisibilityAsync(false).Forget();
        }

        /// <summary>
        /// Changes <see cref="Opacity"/>; 
        /// has no effect when <see cref="CanvasGroup"/> is missing on the same game object.
        /// </summary>
        public virtual void SetOpacity (float opacity)
        {
            if (!CanvasGroup) return;
            CanvasGroup.alpha = opacity;
        }

        /// <summary>
        /// Changes <see cref="Interactable"/>; 
        /// has no effect when <see cref="CanvasGroup"/> is missing on the same game object.
        /// </summary>
        public virtual void SetInteractable (bool interactable)
        {
            if (!CanvasGroup) return;
            CanvasGroup.interactable = interactable;
        }

        /// <summary>
        /// Removes input focus from the UI element.
        /// </summary>
        public virtual void ClearFocus ()
        {
            if (EventSystem.current &&
                EventSystem.current.currentSelectedGameObject &&
                EventSystem.current.currentSelectedGameObject.transform.IsChildOf(transform))
                EventSystem.current.SetSelectedGameObject(null);
        }

        /// <summary>
        /// Applies input focus to the UI element.
        /// </summary>
        public virtual void SetFocus ()
        {
            if (EventSystem.current)
                EventSystem.current.SetSelectedGameObject(gameObject);
        }

        protected override void Awake ()
        {
            base.Awake();

            CanvasGroup = GetComponent<CanvasGroup>();

            if (CanvasGroup && DisableInteraction)
            {
                CanvasGroup.interactable = false;
                CanvasGroup.blocksRaycasts = false;
            }

            SetVisibility(VisibleOnAwake);
        }

        protected virtual void Update ()
        {
            HandleNavigationFocus();
        }

        /// <summary>
        /// Invoked when visibility of the UI is changed.
        /// </summary>
        /// <param name="visible">The new visibility of the UI.</param>
        protected virtual void HandleVisibilityChanged (bool visible)
        {
            OnVisibilityChanged?.Invoke(visible);

            if (visible) onShow?.Invoke();
            else onHide?.Invoke();

            if (FocusObject && visible && EventSystem.current)
                switch (FocusModeType)
                {
                    case FocusMode.Visibility:
                        EventSystem.current.SetSelectedGameObject(FocusObject);
                        FocusOnNavigation = null;
                        break;
                    case FocusMode.Navigation:
                        FocusOnNavigation = FocusObject;
                        break;
                }
        }

        protected virtual void HandleNavigationFocus ()
        {
            if (FocusModeType != FocusMode.Navigation || !FocusOnNavigation || !Visible || !EventSystem.current) return;

            if (SampleInputSystemNavigation() || SampleLegacyInputNavigation())
            {
                EventSystem.current.SetSelectedGameObject(FocusOnNavigation);
                FocusOnNavigation = null;
            }
        }

        protected virtual bool SampleInputSystemNavigation ()
        {
            #if ENABLE_INPUT_SYSTEM && INPUT_SYSTEM_AVAILABLE
            return UnityEngine.InputSystem.Gamepad.current is UnityEngine.InputSystem.Gamepad gamepad &&
                   (gamepad.leftStick.up.wasPressedThisFrame ||
                    gamepad.leftStick.down.wasPressedThisFrame ||
                    gamepad.leftStick.left.wasPressedThisFrame ||
                    gamepad.leftStick.right.wasPressedThisFrame ||
                    gamepad.dpad.up.wasPressedThisFrame ||
                    gamepad.dpad.down.wasPressedThisFrame ||
                    gamepad.dpad.left.wasPressedThisFrame ||
                    gamepad.dpad.right.wasPressedThisFrame) ||
                   // Generic HID gamepads are detected as joysticks by the input system.
                   UnityEngine.InputSystem.Joystick.current is UnityEngine.InputSystem.Joystick joystick &&
                   (joystick.stick.up.wasPressedThisFrame ||
                    joystick.stick.down.wasPressedThisFrame ||
                    joystick.stick.left.wasPressedThisFrame ||
                    joystick.stick.right.wasPressedThisFrame) ||
                   UnityEngine.InputSystem.Keyboard.current is UnityEngine.InputSystem.Keyboard keyboard &&
                   (keyboard.downArrowKey.wasPressedThisFrame ||
                    keyboard.upArrowKey.wasPressedThisFrame ||
                    keyboard.leftArrowKey.wasPressedThisFrame ||
                    keyboard.rightArrowKey.wasPressedThisFrame);
            #else
            return false;
            #endif
        }

        protected virtual bool SampleLegacyInputNavigation ()
        {
            #if ENABLE_LEGACY_INPUT_MANAGER
            return Input.GetKeyDown(KeyCode.UpArrow) ||
                   Input.GetKeyDown(KeyCode.DownArrow) ||
                   Input.GetKeyDown(KeyCode.LeftArrow) ||
                   Input.GetKeyDown(KeyCode.RightArrow);
            #else
            return false;
            #endif
        }

        private RectTransform GetRectTransform ()
        {
            if (!rectTransform)
                rectTransform = GetComponent<RectTransform>();
            return rectTransform;
        }

        private void SetSortingOrder (int value)
        {
            if (!ObjectUtils.IsValid(TopmostCanvas)) return;
            TopmostCanvas.sortingOrder = value;
        }

        private void SetRenderMode (RenderMode renderMode)
        {
            if (!ObjectUtils.IsValid(TopmostCanvas)) return;
            TopmostCanvas.renderMode = renderMode;
        }

        private void SetRenderCamera (Camera renderCamera)
        {
            if (!ObjectUtils.IsValid(TopmostCanvas)) return;
            TopmostCanvas.worldCamera = renderCamera;
        }
    }
}
