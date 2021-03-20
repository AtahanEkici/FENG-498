using System.Collections.Generic;
using UnityEngine;

public class LevelManager : MonoBehaviour
{
    public GameObject Cube_Prefab_1;
    public GameObject Wall_Prefab_1;

    private List<GameObject> Cube_Prefabs = new List<GameObject>();
    private List<GameObject> Wall_Prefabs = new List<GameObject>();

    private void Start()
    {
        GenerateWall(Vector3.zero);
        GeneratePlatform(Vector3.zero);
    }

    private void GenerateWall(Vector3 vector)
    {
        Wall_Prefabs.Add(Instantiate(Wall_Prefab_1, vector, Quaternion.identity));
    }
    private void GeneratePlatform(Vector3 vector)
    {
        Cube_Prefabs.Add(Instantiate(Cube_Prefab_1, vector, Quaternion.identity));
    }
}
