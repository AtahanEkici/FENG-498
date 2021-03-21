using UnityEngine;

public class MovementController : MonoBehaviour
{
    public float speed = 15f;
    public float maxvelocity = 50f;

    private Collider col;
    private Rigidbody rb;
    private Vector3 tempVect;
    private float mp;
    private float screen_width;
    void Awake()
    {
        rb = GetComponent<Rigidbody>();
        col = GetComponent<Collider>();
    }
    void Update()
    {
        if (rb.velocity.x != 0)
        {
            rb.velocity = new Vector3(0, rb.velocity.y);
        }
    }
    void FixedUpdate()
    {
        LimitVelocity();
        MoveSphere();
    }
    private void LimitVelocity()
    {
        rb.velocity = Vector3.ClampMagnitude(rb.velocity, maxvelocity);
        
        if(rb.velocity.y < -22)
        {
             // Set Bounciness to 1 //
        }
        else
        {
            // Set Bounciness to 0.5 //
        }
    }
    private void SetMaterial(PhysicMaterial material)
    {
        col.material = material;
    }
    private void MoveSphere()
    {
        Move_With_Mouse();
        //Move_With_Keyboard();
    }
    private void Movement(float a)
    {
        tempVect = new Vector3(a, 0, 0);
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
    private void Move_With_Mouse()
    {
        mp = Input.mousePosition.x; // Get the mouse position //
        screen_width = Screen.width; // Get the screen width of the device //

        if (Input.GetMouseButton(0)) // if the touched surface is left side of the device go left //
        {
            if (mp < (screen_width / 2))
            {
                Movement(-1f);
            }
            else // if not go right //
            {
                Movement(1f);
            }
        }
    }
}
