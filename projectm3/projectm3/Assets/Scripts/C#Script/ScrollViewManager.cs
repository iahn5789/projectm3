using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScrollViewManager : MonoBehaviour
{
    public RectTransform ScrollContent;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void SetRectPosition()
    {
        float x = ScrollContent.anchoredPosition.x;
        ScrollContent.anchoredPosition = new Vector3(x, 0, 0);
    }
}
