using UnityEngine;

public class MovementController : MonoBehaviour
{
    public float speed = 15f;
    public float maxvelocity = 50f;
    public Camera cam;

    private Collider col;
    private Rigidbody rb;
    private Vector3 tempVect;
    private float mp;
    private float player_pos;
    private float screen_width;
    void Awake()
    {
        rb = GetComponent<Rigidbody>();
        col = GetComponent<Collider>();
    }
    void FixedUpdate()
    {
        LimitVelocity();
        MoveSphere();
    }
    void Update()
    {
        
    }
    private void LimitVelocity()
    {
        rb.velocity = Vector3.ClampMagnitude(rb.velocity, maxvelocity);

        if (rb.velocity.x != 0)
        {
            rb.velocity = new Vector3(0, rb.velocity.y);
        }
    }
    private void MoveSphere()
    {
        Move_With_Mouse();
        //Move_To_Mouse_Position();
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
    private void Move_To_Mouse_Position() // Call in from update //
    {
        if (Input.GetMouseButton(0)) // if the touched surface is left side of the device go left //
        {
            Vector3 mousePos = cam.ScreenToWorldPoint(Input.mousePosition);
            mousePos = new Vector3(mousePos.x, transform.position.y);
            transform.Translate(Vector3.Lerp(transform.position, mousePos, speed * Time.fixedDeltaTime));
        }
    }

    private void OnCollisionEnter(Collision other_object)
    {
        if (other_object.gameObject.CompareTag("Cube_target"))
        {
            Vector3 bounce = new Vector3(0, -(rb.velocity.y / 3));
            rb.AddForce(bounce, ForceMode.Impulse);
        }
    }
}
