using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class ScoreManager : MonoBehaviour
{
    public TextMeshProUGUI Score_text;
    public PlayerController player;

    private int score;
    private bool isActive;
    private Color font_color;
    void Awake()
    {
        score = 0;
        isActive = false;
    }
    void Start()
    {
        font_color = GetPlayerColor();
    }
    void Update()
    {
        IncrementAnimation();
        CheckColor();
    }
    private Color GetPlayerColor()
    {
        if (player != null)
        {
            return player.GetComponent<Renderer>().material.GetColor("_Color");
        }
        else
        {
            return Color.white;
        }    
    }
    private void SetFontColor(Color color)
    {
        Score_text.color = color;
    }
    private void CheckColor()
    {
        if(player != null && font_color != GetPlayerColor())
        {
            font_color = GetPlayerColor();
            SetFontColor(font_color);
        }
    }
    public void IncrementScore(int value)
    {
        score += value;
        Score_text.SetText("SCORE: " + score + "");
        isActive = true;
    }
    private void IncrementAnimation()
    {
        if (isActive == true)
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
}
