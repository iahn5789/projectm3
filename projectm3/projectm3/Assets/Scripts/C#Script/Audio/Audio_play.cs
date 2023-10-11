using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Audio_play : MonoBehaviour
{
    public AudioSource audio;
    // Start is called before the first frame update

    public void play_sound()
    {
        audio.Play();
    }
}
