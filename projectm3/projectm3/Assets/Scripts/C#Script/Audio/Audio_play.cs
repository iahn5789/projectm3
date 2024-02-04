using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Audio_play : MonoBehaviour
{
    public AudioSource audio;
    public AudioClip[] audiolist;
    // Start is called before the first frame update

    public void play_sound()
    {
        audio.Play();
    }

    public void play_sound_list(int i)
    {
        // audiolist 배열에서 i번째 오디오 클립을 가져와서 오디오 소스의 클립으로 설정
        audio.clip = audiolist[i];
        // 오디오 소스 재생
        play_sound();
    }
}
