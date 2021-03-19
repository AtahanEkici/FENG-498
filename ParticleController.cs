using UnityEngine;

public class ParticleController : MonoBehaviour
{
    public GameObject player;
    public ParticleSystem player_destroyed;
    public ParticleSystem object_destroyed;

    private Material player_renderer_material;
    private Renderer player_particle_renderer;
    private Renderer object_particle_renderer;

    void Awake()
    {
        player_renderer_material = player.GetComponent<Renderer>().material;
        object_particle_renderer = object_destroyed.GetComponent<Renderer>();
        player_particle_renderer = player_destroyed.GetComponent<Renderer>();
    }
    private Color GetPlayerColor()
    {
        if(player != null)
        {
            return player_renderer_material.GetColor("_Color");
        }
        else
        {
            return Color.white;
        }
    }
    private void ChangeColor(Color color, Renderer renderer)
    {
        if (renderer.gameObject != null)
        {
            renderer.sharedMaterial.SetColor("_Color", color);
        }
    }
    public void ObjectDestroyed(Vector3 vector)
    {
        ChangeColor(GetPlayerColor(),object_destroyed.GetComponent<Renderer>());
        Destroy(Instantiate(object_destroyed, vector,Quaternion.identity), 10f);
    }
    public void PlayerDestroyed(Vector3 vector)
    {
        ChangeColor(GetPlayerColor(), player_destroyed.GetComponent<Renderer>());
        Destroy(Instantiate(player_destroyed, vector, Quaternion.identity), 10f);
    }
}
