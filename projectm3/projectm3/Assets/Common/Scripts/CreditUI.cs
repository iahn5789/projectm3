using UnityEngine;
using UnityEngine.UI;

public class CreditUI : MonoBehaviour
{
    public GameObject We;
    public GameObject Help;
    public GameObject Spon;
    public Button Button_We;
    public Button Button_Help;
    public Button Button_Spon;

    private void Start()
    {
        // Button_We 클릭 시 We를 활성화하고 다른오브젝트를 비활성화합니다.
        Button_We.onClick.AddListener(() =>
        {
            We.SetActive(true);
            Help.SetActive(false);
            Spon.SetActive(false);
        });

        // Button_Help 클릭 시 Help를 활성화하고 다른오브젝트를 비활성화합니다.
        Button_Help.onClick.AddListener(() =>
        {
            We.SetActive(false);
            Help.SetActive(true);
            Spon.SetActive(false);
        });

        // Button_Spon 클릭 시 Spon를 활성화하고 다른오브젝트를 비활성화합니다.
        Button_Spon.onClick.AddListener(() =>
        {
            We.SetActive(false);
            Help.SetActive(false);
            Spon.SetActive(true);
        });
    }
}