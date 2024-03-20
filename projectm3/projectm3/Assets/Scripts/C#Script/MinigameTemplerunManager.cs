using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MinigameTemplerunManager : MonoBehaviour
{
    public GameObject nodeParentContainer;
    public GameObject nodePrefab;
    public int numberOfRounds;
    public Sprite successSprite;
    public Sprite failSprite;
    private List<GameObject> nodes = new List<GameObject>();
    private List<int> animationIndexes = new List<int>();
    private const int MaxNodes = 5;
    private bool isInputBlocked = false; // 사용자 입력을 무시할지 여부를 결정하는 플래그

    public void GameStart()
    {
        for (int i = 5; i >= 1; i--)
        {
            animationIndexes.Insert(0, i);
            CreateNewNode(i, prepend: true);
        }
    }

    void Update()
    {
        if (nodes.Count > 3 && !isInputBlocked) // nodes 리스트에 충분한 요소가 있는지 확인
        {
            if (Input.GetKeyDown(KeyCode.LeftArrow))
            {
                if (IsCorrectSprite("ObjectL"))
                {
                    UpdateAllAnimations();
                }
                else
                {
                    StartCoroutine(BlockInputTemporarily(1.5f)); // 입력을 일시적으로 블록
                }
            }
            else if (Input.GetKeyDown(KeyCode.DownArrow))
            {
                if (IsCorrectSprite("ObjectC"))
                {
                    UpdateAllAnimations();
                }
                else
                {
                    StartCoroutine(BlockInputTemporarily(1.5f)); // 입력을 일시적으로 블록
                }
            }
            else if (Input.GetKeyDown(KeyCode.RightArrow))
            {
                if (IsCorrectSprite("ObjectR"))
                {
                    UpdateAllAnimations();
                }
                else
                {
                    StartCoroutine(BlockInputTemporarily(1.5f)); // 입력을 일시적으로 블록
                }
            }
        }
    }
    IEnumerator BlockInputTemporarily(float blockDuration)
    {
        isInputBlocked = true; // 입력 블록 시작
        yield return new WaitForSeconds(blockDuration); // 지정된 시간만큼 대기
        isInputBlocked = false; // 입력 블록 해제
    }

    bool IsCorrectSprite(string childName)
    {
        Transform childTransform = nodes[3].transform.Find(childName);
        if (childTransform != null)
        {
            Image image = childTransform.GetComponent<Image>();
            if (image != null && image.sprite == successSprite)
            {
                return true;
            }
        }
        return false;
    }


    void CreateNewNode(int animationIndex, bool prepend)
    {
        GameObject newNode = Instantiate(nodePrefab, nodeParentContainer.transform);
        SetRandomImages(newNode);
        if (prepend)
        {
            newNode.transform.SetAsFirstSibling();
            nodes.Insert(0, newNode);
        }
        else
        {
            nodes.Add(newNode);
        }

        ConfigureAnimator(newNode, animationIndex);
        ManageNodeListSize();
    }

    void UpdateAllAnimations()
    {
        CreateNewNode(1, true); // Always create a new node with animation index 1

        for (int i = 0; i < animationIndexes.Count; i++)
        {
            animationIndexes[i] = i + 1;
            UpdateNodeAnimation(nodes[i], animationIndexes[i]);
        }
    }

    void UpdateNodeAnimation(GameObject node, int animationIndex)
    {
        Animator animator = node.GetComponent<Animator>();
        if (animator != null)
        {
            string animationStateName = $"MT_Object_Move0{animationIndex}";
            animator.Play(animationStateName);
        }
        else
        {
            Debug.LogWarning("Animator component not found.");
        }
    }

    void SetRandomImages(GameObject node)
    {
        GameObject objectL = node.transform.Find("ObjectL").gameObject;
        GameObject objectC = node.transform.Find("ObjectC").gameObject;
        GameObject objectR = node.transform.Find("ObjectR").gameObject;

        // 이미지를 랜덤하게 설정합니다.
        SetRandomImage(objectL);
        SetRandomImage(objectC);
        SetRandomImage(objectR);

        // 모두 failSprite로 설정되었는지 확인합니다.
        Image imageL = objectL.GetComponent<Image>();
        Image imageC = objectC.GetComponent<Image>();
        Image imageR = objectR.GetComponent<Image>();

        if (imageL.sprite == failSprite && imageC.sprite == failSprite && imageR.sprite == failSprite)
        {
            // 모두 failSprite로 설정된 경우, 무작위로 하나를 successSprite로 변경합니다.
            int randomIndex = Random.Range(0, 3);
            switch (randomIndex)
            {
                case 0:
                    imageL.sprite = successSprite;
                    break;
                case 1:
                    imageC.sprite = successSprite;
                    break;
                case 2:
                    imageR.sprite = successSprite;
                    break;
            }
        }
    }

    void SetRandomImage(GameObject obj)
    {
        Image image = obj.GetComponent<Image>();
        if (image != null)
        {
            image.sprite = Random.Range(0, 2) == 0 ? successSprite : failSprite;
        }
    }

    void ConfigureAnimator(GameObject node, int animationIndex)
    {
        Animator animator = node.GetComponent<Animator>();
        if (animator != null)
        {
            animator.Play($"MT_Object_Move0{animationIndex}");
        }
        else
        {
            Debug.LogWarning("Animator component not found on new node.");
        }
    }

    void ManageNodeListSize()
    {
        while (nodes.Count > MaxNodes)
        {
            GameObject lastNode = nodes[nodes.Count - 1];
            Destroy(lastNode);
            nodes.RemoveAt(nodes.Count - 1);
        }
    }
}
