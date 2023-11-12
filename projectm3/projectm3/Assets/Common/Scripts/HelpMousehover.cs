using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class HelpMousehover : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler
{
    public GameObject Object; // Inspector에서 Image_Frame01 오브젝트를 연결할 변수

    private void Start()
    {
        // 시작할 때 Image_Frame01 오브젝트를 비활성화
        Object.SetActive(false);
    }

    public void OnPointerEnter(PointerEventData eventData)
    {
        // 마우스 커서가 오브젝트 위에 진입했을 때 호출됩니다.
        // Image_Frame01 오브젝트를 활성화하여 켭니다.
        Object.SetActive(true);
    }

    public void OnPointerExit(PointerEventData eventData)
    {
        // 마우스 커서가 오브젝트에서 나갔을 때 호출됩니다.
        // Image_Frame01 오브젝트를 비활성화하여 끕니다.
        Object.SetActive(false);
    }
}