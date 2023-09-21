using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Naninovel;
using Naninovel.Commands;


public class LikeAbilityBarManager : MonoBehaviour
{
    public Text likeAbilityText; 
    public Image likeAbilityBar; 
    public string likeAbilityChar; 
    private string NowlikeAbilityText = "-1";
    private ICustomVariableManager variableManager;
    // Start is called before the first frame update
    private RectTransform likeAbilityBarRect;  // Cached RectTransform component

    void Start()
    {
        variableManager = Engine.GetService<ICustomVariableManager>();
        likeAbilityBarRect = likeAbilityBar.GetComponent<RectTransform>();  // Cache the RectTransform component
    }

    void Update()
    {
        UpdateLikeAbility();
        UpdateUI();
    }

    void UpdateLikeAbility()
    {
        string naniNovelLikeAbility = variableManager?.GetVariableValue($"{likeAbilityChar}LikeAbility");
        if (!string.IsNullOrEmpty(naniNovelLikeAbility) && NowlikeAbilityText != naniNovelLikeAbility)
        {
            NowlikeAbilityText = naniNovelLikeAbility;
        }
    }

    void UpdateUI()
    {
        if (likeAbilityText.text != NowlikeAbilityText)
        {
            likeAbilityText.text = NowlikeAbilityText;

            if (int.TryParse(likeAbilityText.text, out int parsedValue))
            {
                likeAbilityBarRect.sizeDelta = new Vector2(parsedValue * 1.7f, likeAbilityBarRect.sizeDelta.y);  // Use cached RectTransform
            }
        }
    }
}
