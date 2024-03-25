using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MinigameTemplerunManager : MonoBehaviour
{
    // 게임 라운드별 정보
    public Text RemainingDistanceText;
    public Text RoundText;
    public GameObject Player;
    public GameObject Unknown;
    public GameObject SuccessResult;
    public GameObject FailResult;
    public GameObject NextGameResult;
    private int N_RemainingDistance; // 현재 남은 거리
    public int RemainingDistance01; // 1라운드 남은 거리
    public int RemainingDistance02; // 2라운드 남은 거리
    public int RemainingDistance03; // 3라운드 남은 거리
    private float N_InitialDifferenceDistance; // 현재 차이 거리
    public int InitialDifferenceDistance01; // 1라운드 초기 차이
    public int InitialDifferenceDistance02; // 2라운드 초기 차이
    public int InitialDifferenceDistance03; // 3라운드 초기 차이
    private int RaeunSPS; // 현재 라은 초속 (m/s)
    public int RaeunSPS01; // 1라운드 라은 초속 (m/s)
    public int RaeunSPS02; // 1라운드 라은 초속 (m/s)
    public int RaeunSPS03; // 1라운드 라은 초속 (m/s)
    public int Styrofoam_Box_SPS; // 스티로폼 상자 SPS
    public int Delivery_Box_SPS; // 택배 상자 초속 SPS
    public int Gift_Box_SPS; // 선물 상자 초속 SPS
    private int Probability_Styrofoam_Box; // 현재 스티로폼 상자 생성 확률
    private int Probability_Delivery_Box; // 현재 택배 상자 생성 확률
    private int Probability_Gift_Box; // 현재 선물 상자 생성 확률
    public int Probability01_Styrofoam_Box; // 1라운드 스티로폼 상자 생성 확률
    public int Probability01_Delivery_Box; // 1라운드 택배 상자 생성 확률
    public int Probability01_Gift_Box; // 1라운드 선물 상자 생성 확률
    public int Probability02_Styrofoam_Box; // 2라운드 스티로폼 상자 생성 확률
    public int Probability02_Delivery_Box; // 2라운드 택배 상자 생성 확률
    public int Probability02_Gift_Box; // 2라운드 선물 상자 생성 확률
    public int Probability03_Styrofoam_Box; // 3라운드 스티로폼 상자 생성 확률
    public int Probability03_Delivery_Box; // 3라운드 택배 상자 생성 확률
    public int Probability03_Gift_Box; // 3라운드 선물 상자 생성 확률
    private int Probability_Garbage_Bag; // 현재 쓰레기 봉투 생성 확률
    private int Probability_Barricade; // 현재 바리케이트 생성 확률
    private int Probability_Tack; // 현재 압정 생성 확률
    public int Probability01_Garbage_Bag; // 1라운드 쓰레기 봉투 생성 확률
    public int Probability01_Barricade; // 1라운드 바리케이트 생성 확률
    public int Probability01_Tack; // 1라운드 압정 생성 확률
    public int Probability02_Garbage_Bag; // 2라운드 쓰레기 봉투 생성 확률
    public int Probability02_Barricade; // 2라운드 바리케이트 생성 확률
    public int Probability02_Tack; // 2라운드 압정 생성 확률
    public int Probability03_Garbage_Bag; // 3라운드 쓰레기 봉투 생성 확률
    public int Probability03_Barricade; // 3라운드 바리케이트 생성 확률
    public int Probability03_Tack; // 3라운드 압정 생성 확률
    public float failStopTime01 = 1f; // failSprite01에 대한 멈추는 시간
    public float failStopTime02 = 1.5f; // failSprite02에 대한 멈추는 시간
    public float failStopTime03 = 2f; // failSprite03에 대한 멈추는 시간
    
    public GameObject nodeParentContainer;
    public GameObject nodePrefab;
    public int numberOfRounds = 1;
    public Sprite successSprite01;
    public Sprite successSprite02;
    public Sprite successSprite03;
    public Sprite failSprite01;
    public Sprite failSprite02;
    public Sprite failSprite03;
    private List<GameObject> nodes = new List<GameObject>();
    private List<int> animationIndexes = new List<int>();
    private const int MaxNodes = 5;
    private bool isInputBlocked = false; // 사용자 입력을 무시할지 여부를 결정하는 플래그
    private bool GameStatus = false;

    public void DeleteAllnodes()
    {
        while (nodes.Count > 0)
        {
            GameObject lastNode = nodes[nodes.Count - 1];
            Destroy(lastNode);
            nodes.RemoveAt(nodes.Count - 1);
        }
        animationIndexes.Clear();
    }
    public void GameStart()
    {
        DeleteAllnodes();
        ResetGameSettings(numberOfRounds); // 라운드에 맞는 게임 설정 초기화
        SetPosition();
        GameStatus = true;
        RoundText.text = numberOfRounds.ToString();

        for (int i = 5; i >= 1; i--)
        {
            animationIndexes.Insert(0, i);
            CreateNewNode(i, prepend: true);
        }
    }
    private void ResetGameSettings(int round)
    {
        // 라운드에 따른 설정 초기화
        switch (round)
        {
            case 1:
                N_RemainingDistance = RemainingDistance01;
                N_InitialDifferenceDistance = (float)InitialDifferenceDistance01;
                RaeunSPS = RaeunSPS01;
                Probability_Styrofoam_Box = Probability01_Styrofoam_Box;
                Probability_Delivery_Box = Probability01_Delivery_Box;
                Probability_Gift_Box = Probability01_Gift_Box;
                Probability_Garbage_Bag = Probability01_Garbage_Bag;
                Probability_Tack = Probability01_Tack;
                Probability_Barricade = Probability01_Barricade;
                break;
            case 2:
                N_RemainingDistance = RemainingDistance02;
                N_InitialDifferenceDistance = (float)InitialDifferenceDistance02;
                RaeunSPS = RaeunSPS02;
                Probability_Styrofoam_Box = Probability02_Styrofoam_Box;
                Probability_Delivery_Box = Probability02_Delivery_Box;
                Probability_Gift_Box = Probability02_Gift_Box;
                Probability_Garbage_Bag = Probability02_Garbage_Bag;
                Probability_Tack = Probability02_Tack;
                Probability_Barricade = Probability02_Barricade;
                break;
            case 3:
                N_RemainingDistance = RemainingDistance03;
                N_InitialDifferenceDistance = (float)InitialDifferenceDistance03;
                RaeunSPS = RaeunSPS03;
                Probability_Styrofoam_Box = Probability03_Styrofoam_Box;
                Probability_Delivery_Box = Probability03_Delivery_Box;
                Probability_Gift_Box = Probability03_Gift_Box;
                Probability_Garbage_Bag = Probability03_Garbage_Bag;
                Probability_Tack = Probability03_Tack;
                Probability_Barricade = Probability03_Barricade;
                break;
        }
    }
    public void SetPosition()
    {
        if (N_RemainingDistance < 0)
        {
            N_RemainingDistance = 0;
            GameStatus = false;
            if (numberOfRounds != 3)
            {
                numberOfRounds++;
                StartCoroutine(ShowResultAfterDelay(false, true)); // 다음 게임 결과 화면 표시
            }
            else
            {
                StartCoroutine(ShowResultAfterDelay(true, false)); // 다음 게임 결과 화면 표시
            }
        }
        RemainingDistanceText.text =N_RemainingDistance.ToString();
        SetCharPosition();
    }
    IEnumerator ShowResultAfterDelay(bool isSuccess, bool isNextRound)
    {
        yield return new WaitForSeconds(2f); // 2초 동안 대기

        if (isSuccess)
        {
            SuccessResult.SetActive(true); // 성공 결과 화면 표시
        }
        else if (isNextRound)
        {
            NextGameResult.SetActive(true); // 다음 게임 결과 화면 표시
        }
    }
    public void SetCharPosition()
    {
        // 현재 라운드에 맞는 전체 거리(남은 거리 + 초기 차이 거리)를 계산합니다.
        float totalDistanceForCurrentRound = (numberOfRounds == 1 ? RemainingDistance01 : numberOfRounds == 2 ? RemainingDistance02 : RemainingDistance03) + (numberOfRounds == 1 ? InitialDifferenceDistance01 : numberOfRounds == 2 ? InitialDifferenceDistance02 : InitialDifferenceDistance03);
        
        // 현재 남은 거리가 전체 거리 대비 어느 정도 비율인지 계산합니다.
        float positionRatio = 1f - (N_RemainingDistance / totalDistanceForCurrentRound);

    
        // 계산된 비율을 사용하여 Player의 x 위치를 결정합니다.
        // 예를 들어, totalLength * positionRatio를 x 위치로 사용할 수 있습니다.
        float newPositionY = 800f * positionRatio;

        RectTransform playerRectTransform = Player.GetComponent<RectTransform>();
        if (playerRectTransform != null)
        {
            playerRectTransform.anchoredPosition = new Vector2(playerRectTransform.anchoredPosition.x, newPositionY);
        }
    }
    public void NextGameStart()
    {
        // 다음 게임 시작
        //(Round) 적용해서 GameStart 에 적용.
        // 모든 데이터 초기화 및 라운드별 설정 추가
        numberOfRounds++;
        ResetGameSettings(numberOfRounds);
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
                    StartCoroutine(BlockInputTemporarily("ObjectL")); // 입력을 일시적으로 블록
                }
                SetPosition();
            }
            else if (Input.GetKeyDown(KeyCode.DownArrow))
            {
                if (IsCorrectSprite("ObjectC"))
                {
                    UpdateAllAnimations();
                }
                else
                {
                    StartCoroutine(BlockInputTemporarily("ObjectC")); // 입력을 일시적으로 블록
                }
                SetPosition();
            }
            else if (Input.GetKeyDown(KeyCode.RightArrow))
            {
                if (IsCorrectSprite("ObjectR"))
                {
                    UpdateAllAnimations();
                }
                else
                {
                    StartCoroutine(BlockInputTemporarily("ObjectR")); // 입력을 일시적으로 블록
                }
                SetPosition();
            }
        }
    }
    void Update()
    {
        if(GameStatus)
        {
            KeyCheck();
            UnknownPosition();
        }
    }
    void UnknownPosition()
    {    
        // 라운드별 전체 거리 계산
        float totalDistanceForCurrentRound = (numberOfRounds == 1 ? RemainingDistance01 : numberOfRounds == 2 ? RemainingDistance02 : RemainingDistance03) + (numberOfRounds == 1 ? InitialDifferenceDistance01 : numberOfRounds == 2 ? InitialDifferenceDistance02 : InitialDifferenceDistance03);
    
        // 프레임당 이동 거리 계산
        float distancePerFrame = RaeunSPS * Time.deltaTime;
        
        // N_InitialDifferenceDistance 감소
        N_InitialDifferenceDistance -= distancePerFrame * RaeunSPS;
        if (N_InitialDifferenceDistance < 0)
        {
            // N_InitialDifferenceDistance = 0;
            GameStatus = false;
            FailResult.SetActive(true);
        }
    
        // 남은 거리에 따른 비율 계산
        float positionRatio = 1f - ((N_InitialDifferenceDistance + (float)N_RemainingDistance) / totalDistanceForCurrentRound);
    
        // 비율을 사용하여 Unknown의 y 위치 결정
        float newPositionY = 800f * positionRatio;
    
        // Debug.Log($"newPositionY : {newPositionY}");
        // Debug.Log($"N_InitialDifferenceDistance : {N_InitialDifferenceDistance}");
        // Debug.Log($"N_RemainingDistance : {N_RemainingDistance}");
        // Debug.Log($"positionRatio : {positionRatio}");
        // Unknown 오브젝트의 위치 업데이트 (RectTransform 사용 가정)
        RectTransform unknownRectTransform = Unknown.GetComponent<RectTransform>();
        if (unknownRectTransform != null)
        {
            unknownRectTransform.anchoredPosition = new Vector2(unknownRectTransform.anchoredPosition.x, newPositionY);
        }
    }

    IEnumerator BlockInputTemporarily(string childName)
    {
        Transform childTransform = nodes[3].transform.Find(childName);
        if (childTransform != null)
        {
            Image image = childTransform.GetComponent<Image>();
            if (image != null)
            {
                isInputBlocked = true; // 입력 블록 시작
                // 현재 이미지가 세 가지 successSprite 중 하나와 일치하는지 확인
                if (image.sprite == failSprite01)
                {
                    yield return new WaitForSeconds(failStopTime01); // 지정된 시간만큼 대기
                }
                else if(image.sprite == failSprite02)
                {
                    yield return new WaitForSeconds(failStopTime02); // 지정된 시간만큼 대기
                }
                else
                {
                    yield return new WaitForSeconds(failStopTime03); // 지정된 시간만큼 대기
                }
                isInputBlocked = false; // 입력 블록 해제
            }
        }
    }

    bool IsCorrectSprite(string childName)
    {
        Transform childTransform = nodes[3].transform.Find(childName);
        if (childTransform != null)
        {
            Image image = childTransform.GetComponent<Image>();
            if (image != null)
            {
                if (image.sprite == successSprite01)
                {
                    N_RemainingDistance -= Styrofoam_Box_SPS;
                    N_InitialDifferenceDistance += Styrofoam_Box_SPS;
                    return true;
                }
                else if (image.sprite == successSprite02)
                {
                    N_RemainingDistance -= Delivery_Box_SPS;
                    N_InitialDifferenceDistance += Delivery_Box_SPS;
                    return true;
                }
                else if (image.sprite == successSprite03)
                {
                    N_RemainingDistance -= Gift_Box_SPS;
                    N_InitialDifferenceDistance += Delivery_Box_SPS;
                    return true;
                }
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
        int imageRandom = Random.Range(1, 101);
        // int imageRandom = 100;
        if (isSuccess)
        {
            if (imageRandom <= Probability_Styrofoam_Box)
            {
                image.sprite = successSprite01;
            }
            else if (imageRandom <= Probability_Delivery_Box + Probability_Styrofoam_Box)
            {
                image.sprite = successSprite02;
            }
            else 
            {
                image.sprite = successSprite03;
            }
        }
        else
        {
            if (imageRandom <= Probability_Garbage_Bag)
            {
                image.sprite = failSprite01;
            }
            else if (imageRandom <= Probability_Garbage_Bag + Probability_Barricade)
            {
                image.sprite = failSprite02;
            }
            else 
            {
                image.sprite = failSprite03;
            }
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
