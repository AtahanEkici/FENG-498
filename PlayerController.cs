using UnityEngine;

public class PlayerController : MonoBehaviour
{
    public Color selected_Color;
    public GameManager gm;
    public ParticleController particles;
    public CameraShake camshake;
    public ScoreManager score;

    private Renderer Sphere_Renderer;
    private ParticleSystem flames;

    private void Awake()
    {
        Sphere_Renderer = GetComponent<Renderer>();
        flames = gameObject.GetComponentInChildren<ParticleSystem>();
    }

    void Start()
    {
        ChangeColor(Color_Randomizer(),Sphere_Renderer);
    }
    private Color Color_Randomizer()
    {
        float r = Random.Range(0.0f, 1.0f);
        float g = Random.Range(0.0f, 1.0f);
        float b = Random.Range(0.0f, 1.0f);
        selected_Color = new Color(r,g,b,1); // Alpha value in rgba is always 1 //
        return selected_Color;
    }
    private static void ChangeColor(Color color, Renderer renderer)
    {
        if(renderer.gameObject != null)
        {
            renderer.material.SetColor("_Color", color);
        }
    }

    [System.Obsolete]
    private void OnCollisionEnter(Collision other_object)
    {
        if (other_object.gameObject.CompareTag("Cube") || other_object.gameObject.CompareTag("Wall")) // Invincible Cube //
        {
            flames.transform.parent = other_object.gameObject.transform;
            flames.transform.position = other_object.gameObject.transform.position;

            var flame_main = flames.main;
            flame_main.startLifetime = (float)0.5f;

            var flame_emission = flames.emission;
            flame_emission.rateOverTime = 200;

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
