using UnityEngine;

public class MovementController : MonoBehaviour
{
    private readonly float speed = 15f;
    private readonly float maxvelocity = 50f;
    private Rigidbody rb;
	void Awake()
    {
        rb = GetComponent<Rigidbody>();       
    }
    void FixedUpdate()
    {
        Move_With_Keyboard();
        rb.velocity = Vector3.ClampMagnitude(rb.velocity, maxvelocity);
    }
    void Update()
    {
        //Move_With_Keyboard();
    }
    private void Movement(float a)
    {
        Vector3 tempVect = new Vector3(a, 0, 0);
        tempVect = tempVect.normalized * speed * Time.fixedDeltaTime;
        rb.MovePosition(transform.position + tempVect);
    }
    private void Move_With_Keyboard()
    {
        if (Input.GetKey(KeyCode.LeftArrow) || Input.GetKey(KeyCode.A))
        {
            Movement(-1f);
        }
        else if (Input.GetKey(KeyCode.RightArrow) || Input.GetKey(KeyCode.D))
        {
            Movement(1f);
        }
    }
}
