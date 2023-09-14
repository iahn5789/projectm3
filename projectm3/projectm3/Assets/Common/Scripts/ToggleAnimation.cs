using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using Naninovel;
using Naninovel.UI;

public class ToggleAnimation : MonoBehaviour
{
    public Animator animator;
    private Toggle toggle;

    public bool Status;
    private IScriptPlayer player;

    private void Start()
    {
        Status = false;
        toggle = GetComponent<Toggle>();
        toggle.onValueChanged.AddListener(OnToggleValueChanged);
        player = Engine.GetService<IScriptPlayer>();
    }

    public void OnToggleValueChanged(bool isOn)
    {
    }

    public void OnPointerClick(PointerEventData eventData)
    {
        ToggleBtClick(toggle.isOn);
    }

    public void ToggleBtClick(bool isOn)
    {
        if (Status && !animator.GetCurrentAnimatorStateInfo(0).IsName("Skip_Toggle_On") && animator.GetCurrentAnimatorStateInfo(0).normalizedTime >= 1)
        {
            Status = false;
            animator.SetTrigger("isOn");
            player.SkipMode = (PlayerSkipMode)0;
        }
        else if (!Status && !animator.GetCurrentAnimatorStateInfo(0).IsName("Skip_Toggle_Off") && animator.GetCurrentAnimatorStateInfo(0).normalizedTime >= 1)
        {
            Status = true;
            animator.SetTrigger("isOff");
            player.SkipMode = (PlayerSkipMode)1;
        }
    }
}