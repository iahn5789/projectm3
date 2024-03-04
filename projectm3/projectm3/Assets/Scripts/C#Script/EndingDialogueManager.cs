using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class EndingDialogueManager : MonoBehaviour
{
    public GameObject CharactorDialog;
    public Text CharactorName;

    public void SetDialogText(string dialog_text)
    {
        CharactorDialog.SetActive(false);
        CharactorDialog.GetComponent<TypingEffect>().fullText = dialog_text;
        CharactorDialog.SetActive(true);
    }
    public void SetDialogName(string name)
    {
        CharactorName.text = name;
    }
}
