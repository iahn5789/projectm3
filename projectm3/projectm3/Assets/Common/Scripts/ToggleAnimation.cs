using UnityEngine;
using UnityEngine.UI;

public class ToggleAnimation : MonoBehaviour
{
    public Animator animator;

    private Toggle toggle;

    private void Start()
    {
        toggle = GetComponent<Toggle>();
        toggle.onValueChanged.AddListener(OnToggleValueChanged);
    }

    private void OnToggleValueChanged(bool isOn)
    {
        animator.SetBool("IsOn", isOn); // "IsOn" 파라미터 값을 변경하여 애니메이션 트리거
    }
}