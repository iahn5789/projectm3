using UnityEngine;
using System.Collections; // 이 부분을 추가


public class ShowHideWithAnimation : MonoBehaviour
{
    public GameObject objectToShowHide; // 애니메이션을 적용할 대상 오브젝트
    public Animator animator; // 대상 오브젝트의 Animator 컴포넌트

    private void Start()
    {
        // 초기에 대상 오브젝트를 비활성화합니다.
        objectToShowHide.SetActive(false);
    }

    // 오브젝트를 표시하고 애니메이션을 재생합니다.
    public void ShowObject()
    {
        if (objectToShowHide != null)
        {
            objectToShowHide.SetActive(true);

            // 애니메이션 트리거를 활성화하여 "Show" 애니메이션을 재생합니다.
            if (animator != null)
            {
                animator.SetTrigger("Show");
            }
        }
    }

    // 오브젝트를 숨기고 애니메이션을 재생합니다.
    public void HideObject()
    {
        if (objectToShowHide != null)
        {
            // 애니메이션 트리거를 활성화하여 "Hide" 애니메이션을 재생합니다.
            if (animator != null)
            {
                animator.SetTrigger("Hide");
            }

            // 애니메이션이 끝나면 오브젝트를 비활성화합니다.
            StartCoroutine(DisableObjectAfterAnimation());
        }
    }

    // 애니메이션 재생 후 오브젝트를 비활성화하는 함수
    private IEnumerator DisableObjectAfterAnimation()
    {
        // "Hide" 애니메이션이 종료될 때까지 대기
        yield return new WaitForSeconds(animator.GetCurrentAnimatorStateInfo(0).length);

        // 오브젝트를 비활성화
        objectToShowHide.SetActive(false);
    }
}