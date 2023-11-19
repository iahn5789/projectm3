using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CloneSponPrefabManager : MonoBehaviour
{
    public GameObject textPrefab; // 텍스트를 표시할 기본 GameObject (Text 컴포넌트 포함)
    public TextAsset SponTextString;
    private List<string> items; // 표시할 텍스트들의 리스트
    private List<GameObject> clones = new List<GameObject>(); // 클론된 GameObject들을 추적하기 위한 리스트    
    private string Separator = "|^%$";
    private bool On = false;

    // Update is called once per frame
    public void ClonePrefab()
    {
        if (!On)
        {
            items = SplitSponText();
            foreach (var item in items)
            {
                // 기본 GameObject를 복제
                var clone = Instantiate(textPrefab, transform);

                // 복제된 GameObject의 Text 컴포넌트를 찾아 텍스트 설정
                var textComponent = clone.GetComponent<Text>();
                if (textComponent != null)
                {
                    textComponent.text = item;
                }
                clones.Add(clone);
            }
            On = true;
        }
    }
    public List<string> SplitSponText()
    {
        List<string> stringList = new List<string>();
            
        string[] splitItems = SponTextString.text.Split(new string[] { Separator }, System.StringSplitOptions.RemoveEmptyEntries);
        foreach (var item in splitItems)
        {
            stringList.Add(item.Trim()); 
        }

        return stringList;
    }
    public void DestroyClones()
    {
        foreach (var clone in clones)
        {
            Destroy(clone);
        }
        clones.Clear();
        On = false;
    }
}
