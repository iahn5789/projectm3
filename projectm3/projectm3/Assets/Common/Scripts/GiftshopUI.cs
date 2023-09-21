using UnityEngine;
using UnityEngine.UI;

public class GiftshopUI : MonoBehaviour
{
    public GameObject KangPanel;
    public GameObject JinPanel;
    public GameObject SulPanel;
    public Button Button_Kang;
    public Button Button_Jin;
    public Button Button_Sul;

    private void Start()
    {
        // Button_Kang 클릭 시 KangPanel를 활성화하고 다른 오브젝트를 비활성화합니다.
        Button_Kang.onClick.AddListener(() =>
        {
            KangPanel.SetActive(true);
            JinPanel.SetActive(false);
            SulPanel.SetActive(false);
            
            // Button_Kang의 자식 오브젝트 중 'Blur' 오브젝트를 찾아 활성화
            ToggleBlurOn(Button_Kang, true);
            ToggleBlurOn(Button_Jin, false);
            ToggleBlurOn(Button_Sul, false);
        });

        // Button_Jin 클릭 시 JinPanel를 활성화하고 다른 오브젝트를 비활성화합니다.
        Button_Jin.onClick.AddListener(() =>
        {
            KangPanel.SetActive(false);
            JinPanel.SetActive(true);
            SulPanel.SetActive(false);
            
            // Button_Jin의 자식 오브젝트 중 'Blur' 오브젝트를 찾아 활성화
            ToggleBlurOn(Button_Kang, false);
            ToggleBlurOn(Button_Jin, true);
            ToggleBlurOn(Button_Sul, false);
        });

        // Button_Sul 클릭 시 SulPanel를 활성화하고 다른 오브젝트를 비활성화합니다.
        Button_Sul.onClick.AddListener(() =>
        {
            KangPanel.SetActive(false);
            JinPanel.SetActive(false);
            SulPanel.SetActive(true);
            
            // Button_Sul의 자식 오브젝트 중 'Blur' 오브젝트를 찾아 활성화
            ToggleBlurOn(Button_Kang, false);
            ToggleBlurOn(Button_Jin, false);
            ToggleBlurOn(Button_Sul, true);
        });
    }

    // 자식 오브젝트 중 'Blur' 오브젝트를 찾아 활성화/비활성화
    private void ToggleBlurOn(Button button, bool isActive)
    {
        Transform blurTransform = button.transform.Find("Blur");
        if (blurTransform != null)
        {
            blurTransform.gameObject.SetActive(isActive);
        }
    }
}