using UnityEngine;

public class PlayerController : MonoBehaviour
{
    public Color selected_Color;
    public float Color_Change_Timer;
    public GameManager gm;
    public ParticleController particles;

    private Rigidbody rb;
    private Renderer Sphere_Renderer;
    private float temp_timer;

    private void Awake()
    {
        Sphere_Renderer = GetComponent<Renderer>();
        rb = gameObject.GetComponent<Rigidbody>();
    }

    void Start()
    {
        ChangeColor(Color_Randomizer(), Sphere_Renderer);
        Timer_Setup();
        temp_timer = Color_Change_Timer;
    }
    void Update()
    {
        Timer_Setup();
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
    private void Timer_Setup()
    {
        Color_Change_Timer -= Time.deltaTime;

        if (Color_Change_Timer <= 0.0f)
        {
            ChangeColor(Color_Randomizer(), Sphere_Renderer);
            Color_Change_Timer = temp_timer;
        }
    }
    private void OnCollisionEnter(Collision other_object)
    {
        Color Objects_Color = other_object.gameObject.GetComponent<Renderer>().material.GetColor("_Color");

        if (other_object.gameObject.CompareTag("Cube"))
        {
            particles.PlayerDestroyed(transform.position);
            other_object.gameObject.GetComponent<Rigidbody>().useGravity = true;
            gm.GameOver();
        }

        else if (selected_Color == Objects_Color && other_object.gameObject.CompareTag("Cube_target"))
        {
            particles.ObjectDestroyed(other_object.transform.position);
            Destroy(other_object.gameObject);
        }

    }
}
