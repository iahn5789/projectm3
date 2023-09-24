using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class TypingEffect : MonoBehaviour
{
    public Text textComponent;
    public string fullText;
    public float typingSpeed = 0.1f;

    private Coroutine typingCoroutine; // 코루틴 참조를 저장할 변수

    private void OnEnable()
    {
        // 오브젝트가 활성화될 때 타이핑 효과를 다시 시작
        if (typingCoroutine != null)
        {
            StopCoroutine(typingCoroutine);
        }
        textComponent.text = ""; // 텍스트 초기화
        typingCoroutine = StartCoroutine(TypeText());
    }

    private void OnDisable()
    {
        // 오브젝트가 비활성화될 때 타이핑 효과를 중지
        if (typingCoroutine != null)
        {
            StopCoroutine(typingCoroutine);
        }
    }

    private void Start()
    {
        // 초기에 타이핑 효과를 시작하지 않음
    }

    IEnumerator TypeText()
    {
        foreach (char letter in fullText)
        {
            textComponent.text += letter;
            yield return new WaitForSeconds(typingSpeed);
        }
    }
}