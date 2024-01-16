using System;
using System.Linq;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Naninovel;
using Naninovel.Commands;

public class AccomplishmentManager : MonoBehaviour
{
    private ICustomVariableManager variableManager;
    public string AccomplishmentValue;
    public Transform Gauge;
    public Image Icon;
    public string SecretMainTitle;
    public string MainTitle;
    public Text MainTitleText;
    public string SecretSubTitle;
    public string SubTitle;
    public Text SubTitleText;
    public int totalCount;
    public Text TotalCountText;
    public Text CountText;
    // 전체 관리 Manager
    public Text AllPercent;
    public Text AllCount;
    public Text AllTotalCount;
    public Transform AllGauge;
    // Start is called before the first frame update
    void Start()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
    }
    public void UpdateAllAccomplishment()
    {
        string[] accomplishments = {
            "G_KangEnding_AC", "G_JinEnding_AC", "G_SulEnding_AC",
            "G_BadEnding_AC", "G_HiddenEnding_AC", "G_PTJ_Success_AC",
            "G_PTJ_Fail_AC", "G_PTJ_ALL_CLEAR_AC", "G_KangGift_ALL_CLEAR_AC",
            "G_KangGift_Many_AC", "G_JinGift_ALL_CLEAR_AC", "G_JinGift_Many_AC",
            "G_SulGift_ALL_CLEAR_AC", "G_SulGift_Many_AC", "G_Kang_SM_Many_AC",
            "G_Jin_SM_Many_AC", "G_Sul_SM_Many_AC", "G_Kang_Story_End_AC",
            "G_Jin_Story_End_AC", "G_Sul_Story_End_AC", "G_Test_All_Back_Many_AC",
            "G_Test_Fail_AC", "G_CG_ALL_CLEAR_AC", "G_I_AM_RICH_AC", "G_Lot_Of_Badge_AC"
        };
        int count = 0;
        foreach (string accomplishment in accomplishments)
        {
            if (CheckCompleteAllAccomplishment(accomplishment))
            {
                count += 1;
            }
        }
        AllCount.text = count.ToString();
        UpdateAllAccomplishmentGauge(count, accomplishments.Length);
    }
    private void UpdateAllAccomplishmentGauge(int count, int allcount)
    {
        AllTotalCount.text = "/"+allcount.ToString();
        float ratio = (float)count / allcount; // count와 allcount의 비율 계산
        float gaugeWidth = ratio * 1400; // 게이지 너비 계산

        // 게이지의 너비를 업데이트
        RectTransform gaugeRectTransform = AllGauge.GetComponent<RectTransform>();
        gaugeRectTransform.sizeDelta = new Vector2(gaugeWidth, gaugeRectTransform.sizeDelta.y);
        // 퍼센트 표시를 업데이트
        float percentage = ratio * 100f;
        AllPercent.text = percentage.ToString("0.0") + "%"; // 소수점 첫째 자리까지 표시
    }
    private bool CheckCompleteAllAccomplishment(string Value)
    {
        if (variableManager?.GetVariableValue(Value) != "0")
        {
            return true;
        }
        return false;
    }
    public void UpdateAccomplishment()
    {
        string variableKey = AccomplishmentValue;
    
        // AccomplishmentValue가 $로 시작하는 경우 $를 제거
        if (!string.IsNullOrEmpty(variableKey) && variableKey.StartsWith("$"))
        {
            variableKey = variableKey.Substring(1);
        }
        string accomplishmentValue = variableManager?.GetVariableValue(variableKey);
        int count;

        if (!string.IsNullOrEmpty(accomplishmentValue) && AccomplishmentValue.StartsWith("$"))
        {
            // $로 시작하는 경우, 0이 아닌 문자의 개수를 센다.
            count = accomplishmentValue.Count(c => c != '0');
        }
        else
        {
            // $로 시작하지 않는 경우, 기존 로직을 사용한다.
            count = Math.Min(int.Parse(accomplishmentValue), totalCount);
        }

        // 게이지 700으로 진행함 최종 달성 수치에서 달성 숫자 만큼 700인 width를 조절함.
        float gaugeWidth = ((float)count / totalCount) * 700; // 게이지 너비 계산
        Gauge.GetComponent<RectTransform>().sizeDelta = new Vector2(gaugeWidth, Gauge.GetComponent<RectTransform>().sizeDelta.y);

        // UI 색상 미오픈시 FF0000 오픈시 색상 FFFFFF
        Color newColor;
        if (count < totalCount)
        {
            ColorUtility.TryParseHtmlString("#FF0000", out newColor); // 빨간색
        }
        else
        {
            ColorUtility.TryParseHtmlString("#FFFFFF", out newColor); // 흰색
        }
        Icon.color = newColor;

        // 텍스트 업데이트
        MainTitleText.text = count < totalCount ? SecretMainTitle : MainTitle;
        SubTitleText.text = count < totalCount ? SecretSubTitle : SubTitle;

        // 카운트 및 총 수치 텍스트 업데이트
        CountText.text = count.ToString();
        TotalCountText.text = totalCount.ToString();
    }
    
}
