using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class ScoreManager : MonoBehaviour
{
    public TextMeshProUGUI Score_text;

    private int score;
    private int Highest_Score;
    void Awake()
    {
        score = 0;
        Highest_Score = 0;   
    }
    public void IncrementScore(int value)
    {
        score += value;
        if(score > Highest_Score)
        {
            Highest_Score = score;
            Score_text.SetText("SCORE: "+Highest_Score+"");
        }
    }
}
