using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class ScoreManager : MonoBehaviour
{
    public TextMeshProUGUI Score_text;
    public Color text_color;

    private int score;
    private bool isActive;
    void Awake()
    {
        score = 0;
        isActive = false;
    }
    void Update()
    {
        if(isActive == true)
        {
            Score_text.fontSize += 2;

            if (Score_text.fontSize >= 200)
            {
                isActive = false;
            } 
        }
        else if (isActive == false && Score_text.fontSize > 150)
        {
            Score_text.fontSize -= 2;
        }
    }
    public void IncrementScore(int value)
    {
        score += value;
        IncrementAnimation();
    }
    private void IncrementAnimation()
    {
        Score_text.SetText("SCORE: " + score + "");
        isActive = true;
    }
}
