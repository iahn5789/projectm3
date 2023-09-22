using UnityEngine;
using UnityEngine.UI;

public class GiftshopUI_Item : MonoBehaviour
{
    public GameObject giftshopUIPrefab; // GiftshopUI_Item 프리팹을 연결해주세요.

    private GameObject currentUI;

    // Button_Item01를 눌렀을 때 호출될 메서드
    public void ShowImageA()
    {
        if (currentUI == null)
        {
            currentUI = Instantiate(giftshopUIPrefab);
            currentUI.transform.SetParent(transform, false);
        }

        // GiftshopUI_Item 프리팹 안에 있는 ImageA 오브젝트를 찾아 활성화합니다.
        Transform imageA = currentUI.transform.Find("ImageA");
        if (imageA != null)
        {
            imageA.gameObject.SetActive(true);
        }
    }

    // Button_Item02를 눌렀을 때 호출될 메서드
    public void ShowImageB()
    {
        if (currentUI == null)
        {
            currentUI = Instantiate(giftshopUIPrefab);
            currentUI.transform.SetParent(transform, false);
        }

        // GiftshopUI_Item 프리팹 안에 있는 ImageB 오브젝트를 찾아 활성화합니다.
        Transform imageB = currentUI.transform.Find("ImageB");
        if (imageB != null)
        {
            imageB.gameObject.SetActive(true);
        }
    }
}