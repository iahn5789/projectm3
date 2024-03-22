using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MinigameTemplerunManager : MonoBehaviour
{
    // 게임 라운드별 정보
    private int N_RemainingDistance; // 현재 남은 거리
    public int RemainingDistance01; // 1라운드 남은 거리
    public int RemainingDistance02; // 2라운드 남은 거리
    public int RemainingDistance03; // 3라운드 남은 거리
    private int N_InitialDifferenceDistance; // 현재 차이 거리
    public int InitialDifferenceDistance01; // 1라운드 초기 차이
    public int InitialDifferenceDistance02; // 2라운드 초기 차이
    public int InitialDifferenceDistance03; // 3라운드 초기 차이
    private int RaeunSPS; // 현재 라은 초속 (m/s)
    public int RaeunSPS01; // 1라운드 라은 초속 (m/s)
    public int RaeunSPS02; // 1라운드 라은 초속 (m/s)
    public int RaeunSPS03; // 1라운드 라은 초속 (m/s)
    private int Probability_Styrofoam_Box; // 현재 스티로폼 상자 생성 확률
    private int Probability_Delivery_Box; // 현재 스티로폼 상자 생성 확률
    private int Probability_Gift_Box; // 현재 스티로폼 상자 생성 확률
    public int Probability01_Styrofoam_Box; // 1라운드 스티로폼 상자 생성 확률
    public int Probability01_Delivery_Box; // 1라운드 택배 상자 생성 확률
    public int Probability01_Gift_Box; // 1라운드 선물 상자 생성 확률
    public int Probability02_Styrofoam_Box; // 2라운드 스티로폼 상자 생성 확률
    public int Probability02_Delivery_Box; // 2라운드 택배 상자 생성 확률
    public int Probability02_Gift_Box; // 2라운드 선물 상자 생성 확률
    public int Probability03_Styrofoam_Box; // 3라운드 스티로폼 상자 생성 확률
    public int Probability03_Delivery_Box; // 3라운드 택배 상자 생성 확률
    public int Probability03_Gift_Box; // 3라운드 선물 상자 생성 확률
    public int Probability01_Garbage_Bag; // 1라운드 쓰레기 봉투 생성 확률
    public int Probability01_Barricade; // 1라운드 바리케이트 생성 확률
    public int Probability01_Tack; // 1라운드 압정 생성 확률
    public int Probability02_Garbage_Bag; // 2라운드 쓰레기 봉투 생성 확률
    public int Probability02_Barricade; // 2라운드 바리케이트 생성 확률
    public int Probability02_Tack; // 2라운드 압정 생성 확률
    public int Probability03_Garbage_Bag; // 3라운드 쓰레기 봉투 생성 확률
    public int Probability03_Barricade; // 3라운드 바리케이트 생성 확률
    public int Probability03_Tack; // 3라운드 압정 생성 확률
    
    public GameObject nodeParentContainer;
    public GameObject nodePrefab;
    public int numberOfRounds;
    public Sprite successSprite;
    public Sprite failSprite;
    private List<GameObject> nodes = new List<GameObject>();
    private List<int> animationIndexes = new List<int>();
    private const int MaxNodes = 5;
    private bool isInputBlocked = false; // 사용자 입력을 무시할지 여부를 결정하는 플래그
    private bool GameStatus = false;

    public void GameStart()
    {
        GameStatus = true;

        for (int i = 5; i >= 1; i--)
        {
            animationIndexes.Insert(0, i);
            CreateNewNode(i, prepend: true);
        }
        SetPosition();
    }
    public void SetPosition()
    {

    }
    public void NextGameStart()
    {
        // 다음 게임 시작
        //(Round) 적용해서 GameStart 에 적용.
        // 모든 데이터 초기화 및 라운드별 설정 추가
    }

    public void KeyCheck()
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
    void Update()
    {
        KeyCheck();
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

        // 세 개의 객체 중에서 무작위로 하나를 성공 이미지로 선택합니다.
        int successIndex = Random.Range(0, 3);

        // 선택된 인덱스에 따라 성공 이미지 할당
        SetRandomImage(objectL, successIndex == 0 ? true : false);
        SetRandomImage(objectC, successIndex == 1 ? true : false);
        SetRandomImage(objectR, successIndex == 2 ? true : false);
    }

    void SetRandomImage(GameObject obj, bool isSuccess)
    {
        Image image = obj.GetComponent<Image>();
        if (image != null)
        {
            image.sprite = isSuccess ? successSprite : failSprite;
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
