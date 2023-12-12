using UnityEngine;

namespace EasyTransition
{

    public class DemoLoadScene : MonoBehaviour
    {
        public TransitionSettings transition;
        public float startDelay;

        public bool InputKey;

        
        public void LoadScene(string _sceneName)
        {
            transition.Keyinput = InputKey;
            TransitionManager.Instance().Transition(_sceneName, transition, startDelay);
        }
    }
}


