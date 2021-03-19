using UnityEngine;

public class CameraController : MonoBehaviour
{
    public Transform Target;
    public Transform camTransform;
    public Vector3 Offset;
    public float SmoothTime = 0.150f;

    private Vector3 velocity = Vector3.zero;
    private Vector3 targetPosition;

    void Start()
    {
        //Offset = camTransform.position - Target.position;
    }

    void FixedUpdate()
    {
        targetPosition = Target.position + Offset;
        camTransform.position = Vector3.SmoothDamp(transform.position, targetPosition, ref velocity, SmoothTime);
        transform.LookAt(camTransform);
    }
}
