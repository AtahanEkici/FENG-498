using UnityEngine;

public class PlayerController : MonoBehaviour
{
    public Color selected_Color;
    public GameManager gm;
    public ParticleController particles;
    public CameraShake camshake;
    public ScoreManager score;

    private Renderer Sphere_Renderer;

    private void Awake()
    {
        Sphere_Renderer = GetComponent<Renderer>();
    }

    void Start()
    {
        ChangeColor(Color_Randomizer(), Sphere_Renderer);
    }
    private Color Color_Randomizer()
    {
        selected_Color = Random.ColorHSV();
        return selected_Color;
    }
    private static void ChangeColor(Color color, Renderer renderer)
    {
        if(renderer.gameObject != null)
        {
            renderer.material.SetColor("_Color", color);
        }
    }
    private void OnCollisionEnter(Collision other_object)
    {
        if (other_object.gameObject.CompareTag("Cube") || other_object.gameObject.CompareTag("Wall")) // Invincible Cube //
        {
            camshake.InduceStress(5, 8, 1f);
            particles.PlayerDestroyed(transform.position);
            gm.GameOver();
        }

        else if (other_object.gameObject.CompareTag("Cube_target")) // Destroyable Cube //
        {
            Destroy(other_object.gameObject);
            camshake.InduceStress(2, 2, 1f);
            particles.ObjectDestroyed(other_object.transform.position);
            ChangeColor(Color_Randomizer(), Sphere_Renderer);
            score.IncrementScore(10);
        }
    }
}
