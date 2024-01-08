using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class SettingScrollNumber : MonoBehaviour
{
   public Slider exSlider;
   public TextMeshProUGUI sliderText;

   public void ChangeSlider()
   {
        sliderText.text = exSlider.value.ToString();
   }
}