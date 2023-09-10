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

    private void Awake()
    {
        gallery = () => { setMenuVisible(); };
    }
    public void setMenuVisible()
    {
        MiniCG.SetActive(true);
        KangCG.SetActive(false);
        SulCG.SetActive(false);
        JinCG.SetActive(false);
    }
    private void Start()
    {
        // Button_Mini 클릭 시 MiniCG를 활성화하고 다른CG를 비활성화합니다.
        Button_Mini.onClick.AddListener(() =>
        {
            MiniCG.SetActive(true);
            KangCG.SetActive(false);
            SulCG.SetActive(false);
            JinCG.SetActive(false);
        });

        // Button_Kang 클릭 시 KangCG를 활성화하고 다른CG를 비활성화합니다.
        Button_Kang.onClick.AddListener(() =>
        {
            MiniCG.SetActive(false);
            KangCG.SetActive(true);
            SulCG.SetActive(false);
            JinCG.SetActive(false);
        });

        // Button_Jin 클릭 시 JinCG를 활성화하고 다른CG를 비활성화합니다.
        Button_Jin.onClick.AddListener(() =>
        {
            MiniCG.SetActive(false);
            KangCG.SetActive(false);
            SulCG.SetActive(false);
            JinCG.SetActive(true);
        });

        // Button_Sul 클릭 시 SulCG를 활성화하고 다른CG를 비활성화합니다.
        Button_Sul.onClick.AddListener(() =>
        {
            MiniCG.SetActive(false);
            KangCG.SetActive(false);
            SulCG.SetActive(true);
            JinCG.SetActive(false);
        });
    }
}