using UnityEngine;

public class PlayerController : MonoBehaviour
{
    public Color selected_Color;
    public GameManager gm;
    public ParticleController particles;
    public CameraShake camshake;

    private Rigidbody rb;
    private Renderer Sphere_Renderer;

    private void Awake()
    {
        Sphere_Renderer = GetComponent<Renderer>();
        rb = gameObject.GetComponent<Rigidbody>();
    }

    void Start()
    {
        ChangeColor(Color_Randomizer(), Sphere_Renderer);
    }
    private Color Color_Randomizer()
    {
        selected_Color = Random.ColorHSV();
        Debug.Log(selected_Color);
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
        Color Objects_Color = other_object.gameObject.GetComponent<Renderer>().material.GetColor("_Color");

        if (other_object.gameObject.CompareTag("Cube"))
        {
            camshake.InduceStress(5,8,1f);
            particles.PlayerDestroyed(transform.position);
            other_object.gameObject.GetComponent<Rigidbody>().useGravity = true;
            gm.GameOver();
        }

        else if (selected_Color == Objects_Color && other_object.gameObject.CompareTag("Cube_target"))
        {
            camshake.InduceStress(2, 2, 1f);
            particles.ObjectDestroyed(other_object.transform.position);
            Destroy(other_object.gameObject);
            ChangeColor(Color_Randomizer(), Sphere_Renderer);
        }
    }
}
