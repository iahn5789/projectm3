using UnityEngine;
using UnityEngine.UI;

public class LoadingRandomImage : MonoBehaviour
{
    public Sprite[] imageResources; // 이미지 리소스를 저장할 배열

    private void OnEnable()
    {
        DisplayRandomImage();
    }

    void DisplayRandomImage()
    {
        if (imageResources.Length > 0)
        {
            // 현재 GameObject의 Image 컴포넌트를 가져옴
            Image imageComponent = GetComponent<Image>();

            // null 체크를 추가
            if (imageComponent != null)
            {
                // 랜덤한 인덱스를 생성
                int randomIndex = Random.Range(0, imageResources.Length);

                // 랜덤 이미지를 설정
                imageComponent.sprite = imageResources[randomIndex];
            }
            else
            {
                Debug.LogError("Image 컴포넌트를 찾을 수 없습니다.");
            }
        }
        else
        {
            Debug.LogError("이미지 리소스가 없습니다. 이미지를 추가하세요.");
        }
    }
}