using UnityEngine;
using System.Collections;

public class NPCSight : MonoBehaviour {
	
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
	
	void Update()
	{
		if(playerInSight)
		{
			print ("Player seen.");	
		}
	}
	
	void OnTriggerStay (Collider other)
	{
		if(other.gameObject == player)
		{
			//print ("Player detected.");
			playerInSight = false;
			
			Vector3 direction = other.transform.position - transform.position;
			float angle = Vector3.Angle(direction, transform.forward);
			
			if (angle < FOV * 0.5f)
			{
				//print ("Player in FOV.");
				RaycastHit hit;
				
				if (Physics.Raycast(transform.position + transform.up, direction.normalized, out hit, col.radius))
				{
					print ("Raycast hit something.");
					if (hit.collider.gameObject == player)
					{
						print ("Player seen.");
						playerInSight = true;
					}
				}
			}
		}
	}
}
