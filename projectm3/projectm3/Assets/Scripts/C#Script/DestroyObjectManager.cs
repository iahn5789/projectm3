using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DestroyObjectManager : MonoBehaviour
{
    // Start is called before the first frame update
    public void DestroyObject(GameObject target)
    {
        Destroy(target);
    }
}
