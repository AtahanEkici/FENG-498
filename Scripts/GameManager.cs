using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    public PlayerController player;
    public Canvas gameOver_Canvas;
    public Canvas Overlay_Canvas;

    public KeyCode PauseGameButton = KeyCode.Space;

    private AsyncOperation asyncLoadLevel;
    private static GameManager _instance;

    public static GameManager Instance
    {
        get { return _instance; }
    }
    private void Awake()
    {
        if (_instance != null && _instance != this)
        {
            Destroy(gameObject);
        }
        else
        {
            _instance = this;
        }
    }
    private void Start()
    {
        gameOver_Canvas.gameObject.SetActive(false);
        Overlay_Canvas.gameObject.SetActive(true);
    }
    private void Update()
    {
        Pause_Game(KeyCode.Space);
    }
    private void CheckPosition(float distance)
    {
        if (player != null)
        {
            if (player.transform.position.y <= distance)
            {
                GameOver();
            }
        }
    }
    private void Pause_Game(KeyCode k)
    {
        if (Input.GetKeyDown(k))
        {
            Pause_Or_Resume();
        }
    }
    public static void Quit_Game()
    {
        Application.Quit();
    }
    public void GameOver()
    {
        player.gameObject.SetActive(false);
        gameOver_Canvas.gameObject.SetActive(true);
        Overlay_Canvas.gameObject.SetActive(false);
    }
    public void POR() // Pause Or Resume Function //
    {
        if(Input.GetKeyDown(KeyCode.Space))
        {
            Pause_Or_Resume();
        }
    }
    private void Pause_Or_Resume()
    {
        if(Time.timeScale == 1)
        {
            Time.timeScale = 0;
        }
        else
        {
            Time.timeScale = 1;
        } 
    }
    private IEnumerator Load_Level()
    {
        asyncLoadLevel = SceneManager.LoadSceneAsync("1", LoadSceneMode.Single);

        while (!asyncLoadLevel.isDone)
        {
            yield return null;
        }
    }
    public static void V_Sync()
    {
        if(QualitySettings.vSyncCount == 1)
        {
            QualitySettings.vSyncCount = 0;
        }
        else
        {
            QualitySettings.vSyncCount = 1;
        }
    }
    public void Force_Frame_Rate(int given_frame_rate)
    {
        Application.targetFrameRate = given_frame_rate;
    }
    public void Restart_The_Game()
    {
        StartCoroutine(Load_Level());
    }
}
