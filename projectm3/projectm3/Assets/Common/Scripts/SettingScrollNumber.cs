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
      float normalizedValue = (exSlider.value - exSlider.minValue) / (exSlider.maxValue - exSlider.minValue);
      int scaledValue = Mathf.FloorToInt(normalizedValue * 100);
      sliderText.text = scaledValue.ToString();
      //   sliderText.text = exSlider.value.ToString();
   }
}