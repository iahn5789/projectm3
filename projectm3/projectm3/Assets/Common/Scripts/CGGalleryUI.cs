using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System;

public class CGGalleryUI : MonoBehaviour
{
    public static Action gallery;
    public GameObject MiniCG;
    public GameObject KangCG;
    public GameObject JinCG;
    public GameObject SulCG;

    public Button Button_Mini;
    public Button Button_Kang;
    public Button Button_Jin;
    public Button Button_Sul;

    public Color activeButtonColor = Color.red; // 활성화된 버튼의 색
    public Color defaultButtonColor = Color.white; // 기본 버튼의 색

    private void Awake()
    {
        gallery = () => { setMenuVisible(); };
    }
    public void setMenuVisible()
    {
        ChangeButtonColors(Button_Kang);
        KangCG.SetActive(true);
        SulCG.SetActive(false);
        JinCG.SetActive(false);
        MiniCG.SetActive(false);
    }
    private void Start()
    {
        // Button_Mini 클릭 시 MiniCG를 활성화하고 다른CG를 비활성화합니다.
        Button_Mini.onClick.AddListener(() =>
        {
            ChangeButtonColors(Button_Mini);
            MiniCG.SetActive(true);
            KangCG.SetActive(false);
            SulCG.SetActive(false);
            JinCG.SetActive(false);
        });

        // Button_Kang 클릭 시 KangCG를 활성화하고 다른CG를 비활성화합니다.
        Button_Kang.onClick.AddListener(() =>
        {
            ChangeButtonColors(Button_Kang);
            MiniCG.SetActive(false);
            KangCG.SetActive(true);
            SulCG.SetActive(false);
            JinCG.SetActive(false);
        });

        // Button_Jin 클릭 시 JinCG를 활성화하고 다른CG를 비활성화합니다.
        Button_Jin.onClick.AddListener(() =>
        {
            ChangeButtonColors(Button_Jin);
            MiniCG.SetActive(false);
            KangCG.SetActive(false);
            SulCG.SetActive(false);
            JinCG.SetActive(true);
        });

        // Button_Sul 클릭 시 SulCG를 활성화하고 다른CG를 비활성화합니다.
        Button_Sul.onClick.AddListener(() =>
        {
            ChangeButtonColors(Button_Sul);
            MiniCG.SetActive(false);
            KangCG.SetActive(false);
            SulCG.SetActive(true);
            JinCG.SetActive(false);
        });
    }
    void ChangeButtonColors(Button activeButton)
    {
        // 모든 버튼을 기본 색으로 설정
        Button_Mini.GetComponent<Image>().color = defaultButtonColor;
        Button_Kang.GetComponent<Image>().color = defaultButtonColor;
        Button_Jin.GetComponent<Image>().color = defaultButtonColor;
        Button_Sul.GetComponent<Image>().color = defaultButtonColor;

        // 활성화된 버튼의 색을 변경
        activeButton.GetComponent<Image>().color = activeButtonColor;
    }
    public void SetScrollReset(RectTransform Content)
    {
        float y = Content.anchoredPosition.y;
        Content.anchoredPosition = new Vector3(0, y, 0);
    }
}