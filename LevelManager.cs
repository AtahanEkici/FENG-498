using System.Collections.Generic;
using UnityEngine;

public class LevelManager : MonoBehaviour
{
    public GameObject Cube_Prefab_1;
    public GameObject Wall_Prefab_1;
    public Transform player;

    public float distanceBeforeSpawnWall;
    public float distanceBeforeSpawnBlock;

    public List<GameObject> Cube_Prefabs = new List<GameObject>();
    public List<GameObject> Wall_Prefabs = new List<GameObject>();

    //private int initial_Walls = 3;

    private float currentWallY;
    private float currentBlockY;

    private Vector3 BlockVector = Vector3.zero;
    private Vector3 WallVector = Vector3.zero;
    
    private Vector3 Player_Position;

    void Start()
    {
       GenerateWall(WallVector);
       GeneratePlatform(BlockVector);
    }
    void Update()
    {
        Player_Position = player.position;
        Setup_Init();
    }

    private void GenerateWall(Vector3 vector)
    {
        Wall_Prefabs.Add(Instantiate(Wall_Prefab_1, vector, Quaternion.identity));
        currentWallY += distanceBeforeSpawnWall;
        WallVector -= new Vector3(0, distanceBeforeSpawnWall, 0);
    }
    private void GeneratePlatform(Vector3 vector)
    {
        Cube_Prefabs.Add(Instantiate(Cube_Prefab_1, vector, Quaternion.identity));
        currentBlockY += distanceBeforeSpawnBlock;
        BlockVector -= new Vector3(0, distanceBeforeSpawnBlock, 0);
    }
    private void Setup_Init()
    {
        if (Player_Position.y + currentWallY < distanceBeforeSpawnWall)
        {
            GenerateWall(WallVector);
        }

        if (Player_Position.y + currentBlockY < distanceBeforeSpawnBlock)
        {
            GeneratePlatform(BlockVector);
        }
    }
}
