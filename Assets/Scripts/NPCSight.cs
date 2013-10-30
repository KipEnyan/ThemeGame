using UnityEngine;
using System.Collections;

public class NPCSight : MonoBehaviour 
{
	public float FOV = 90f;
	public bool playerInSight;
	public Vector3 lastKnownPosition;
	
	private NavMeshAgent nav;
	private SphereCollider col;
	private Animator anim;
	private GameObject player;
	
	void Awake()
	{
		//nav = GetComponent<NavMeshAgent>();
		col = GetComponent<SphereCollider>();
		//anim = GetComponent<Animator>();
		player = GameObject.FindWithTag("Player");
	}
	
	
	void OnTriggerStay (Collider other)
	{
		if(other.gameObject == player)
		{
			//print ("Player detected.");
			playerInSight = false;
			
			Vector3 direction = other.transform.position - (transform.position + transform.up + transform.forward);
			float angle = Vector3.Angle(direction, transform.forward);
			
			if (angle < FOV * 0.5f)
			{
				//print ("Player in FOV.");
				RaycastHit hit;
				Debug.DrawRay(transform.position + transform.up + transform.forward, direction);
				
				if (Physics.Raycast(transform.position + transform.up + transform.forward, direction.normalized, out hit, col.radius))
				{
					//Debug.DrawLine(transform.position + transform.up + transform.forward, other.transform.position);
					if (hit.collider.gameObject == player)
					{
						//print ("Raycast hit player.");
						playerInSight = true;
					}
				}
			}
		}
	}
}
