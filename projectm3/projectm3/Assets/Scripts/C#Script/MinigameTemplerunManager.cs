using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI; // UI 컴포넌트를 사용하기 위해 추가

public class MinigameTemplerunManager : MonoBehaviour
{
    public GameObject NodeParents;
    public GameObject Node;
    public int N_Round;
    public Sprite MT_Success_01;
    public Sprite MT_Fail_01;
    private List<GameObject> lastCreatedNodes = new List<GameObject>();
    private List<int> lastAnimationIndexes = new List<int>();

    public void GameStart()
    {
        for (int i = 0; i < 5; i++)
        {
            // 리스트의 맨 앞에 새로운 인덱스를 추가합니다.
            // 이는 리스트에 인덱스를 역순으로 삽입하게 됩니다.
            lastAnimationIndexes.Insert(0, i + 1);
            // 노드 생성 시, 새로운 노드를 맨 앞에 삽입하는 것을 명시합니다.
            CreateNewNode(i + 1, true);
        }
    }

    void Update()
    {
        // 화살표 키 입력을 감지하여 전체 줄의 애니메이션 인덱스 업데이트
        if (Input.GetKeyDown(KeyCode.LeftArrow) || Input.GetKeyDown(KeyCode.DownArrow) || Input.GetKeyDown(KeyCode.RightArrow))
        {
            UpdateAllAnimations();
        }
    }

    void CreateNewNode(int animationIndex, bool First)
    {
        GameObject clonedNode = Instantiate(Node, NodeParents.transform);
        SetRandomImages(clonedNode);
        if (First)
            clonedNode.transform.SetAsFirstSibling();

        // 리스트의 맨 앞에 새로운 노드를 추가합니다.
        lastCreatedNodes.Insert(0, clonedNode); // 리스트의 맨 앞에 추가
        
        Animator animator = clonedNode.GetComponent<Animator>();
        if (animator != null)
        {
            string animationStateName = $"MT_Object_Move0" + animationIndex;
            animator.Play(animationStateName);
        }
        else
        {
            Debug.LogWarning("Animator 컴포넌트를 찾을 수 없습니다.");
        }

        // 리스트의 크기가 5를 초과하면 마지막 노드를 파괴하고 리스트에서 제거
        if (lastCreatedNodes.Count > 6)
        {
            Destroy(lastCreatedNodes[lastCreatedNodes.Count - 1]);
            lastCreatedNodes.RemoveAt(lastCreatedNodes.Count - 1);
        }
    }
    void UpdateAllAnimations()
    {
        // 새 노드를 추가하는 로직을 단순화
        CreateNewNode(1, true); // 항상 인덱스 1의 애니메이션으로 새 노드 생성

        // 애니메이션 인덱스 업데이트
        for (int i = 0; i < lastAnimationIndexes.Count; i++)
        {
            lastAnimationIndexes[i] = i + 1;
            UpdateLastNodeAnimation(i, lastAnimationIndexes[i]);
        }
    }

    void UpdateLastNodeAnimation(int lineIndex, int animationIndex)
    {
        GameObject lastNode = lastCreatedNodes[lineIndex];
        if (lastNode != null)
        {
            Animator animator = lastNode.GetComponent<Animator>();
            if (animator != null)
            {
                string animationStateName = $"MT_Object_Move0{animationIndex}";
                animator.Play(animationStateName);
            }
            else
            {
                Debug.LogWarning("Animator 컴포넌트를 찾을 수 없습니다.");
            }
        }
    }

    // 새로운 노드에 이미지를 랜덤하게 설정하는 부분
    void SetRandomImages(GameObject node)
    {
        // 자식 오브젝트를 찾습니다.
        GameObject objectL = node.transform.Find("ObjectL").gameObject;
        GameObject objectC = node.transform.Find("ObjectC").gameObject;
        GameObject objectR = node.transform.Find("ObjectR").gameObject;

        // 각 자식 오브젝트에 대해 이미지 컴포넌트를 찾고, 랜덤하게 스프라이트를 설정합니다.
        SetRandomImageForObject(objectL);
        SetRandomImageForObject(objectC);
        SetRandomImageForObject(objectR);
    }

    void SetRandomImageForObject(GameObject obj)
    {
        Image image = obj.GetComponent<Image>();
        if (image != null)
        {
            // 0 또는 1을 랜덤하게 생성
            int rand = Random.Range(0, 2);
            image.sprite = rand == 0 ? MT_Success_01 : MT_Fail_01;
        }
    }
}
