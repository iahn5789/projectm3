using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class EndingDialogueManager : MonoBehaviour
{
    public GameObject CharactorDialog;
    public Text CharactorName;

    public void SetDialogText(string text)
    {
        CharactorDialog.GetComponent<TypingEffect>().fullText = text;
    }
    public void SetDialogName(string name)
    {
        CharactorName.text = name;
    }
}
