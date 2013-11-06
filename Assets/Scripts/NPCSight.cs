using UnityEngine;
using System.Collections;

public class NPCSight : MonoBehaviour
{
	public float FOV = 90f;
	private NavMeshAgent nav;
	private SphereCollider col;
	private GameObject player;
	private LayerMask playerMask;
	private NPCAI ai;
	
	void Awake ()
	{
		ai = GetComponent<NPCAI>();
		nav = GetComponent<NavMeshAgent> ();
		col = GetComponentInChildren<SphereCollider> ();
		player = GameObject.FindWithTag ("Player");
	}
	
	void LateUpdate()
	{
		ai.npcInSight = false;	
	}
	
	void OnTriggerStay (Collider other)
	{
		if (other.gameObject == player)
		{
			ai.playerInSight = false;
			//print ("Player detected.");
			
			Vector3 direction = other.transform.position - (transform.position + transform.up * 1.75f + transform.forward * 0.5f);
			float angle = Vector3.Angle (direction, transform.forward);
			
			if (angle < FOV * 0.5f)
			{
				//print ("Player in FOV.");
				RaycastHit hit;
				//Debug.DrawRay(transform.position + transform.up * 1.75f + transform.forward * 0.5f, direction);

				
				if (Physics.Raycast (transform.position + transform.up * 1.75f + transform.forward * 0.5f, direction.normalized, out hit, col.radius))
				{	
					//print (hit.collider.gameObject.transform.root);
					//Debug.DrawLine(transform.position + transform.up + transform.forward, other.transform.position);
					if (hit.collider.gameObject.transform.root.gameObject == player)
					{
						//print ("Raycast hit player.");
						ai.playerInSight = true;
					}
				}
			}
			
			if (CalculatePathLength (player.transform.position) <= col.radius)
			{
				ai.playerIsHeard = true;
				
				//print ("I can hear you.");
			}
			else{
				ai.playerIsHeard = false;	
			}
		} 
		
		if (other.gameObject.CompareTag("NPC")) 
		{
		
			Vector3 direction = other.transform.position + other.transform.up - (transform.position + transform.up * 1.75f + transform.forward * 0.5f);
			float angle = Vector3.Angle (direction, transform.forward);
		
			if (angle < FOV * 0.5f)
			{
				RaycastHit hit;
				//Debug.DrawRay(transform.position + transform.up * 1.75f + transform.forward * 0.5f, direction);
				if (Physics.Raycast (transform.position + transform.up * 1.75f + transform.forward * 0.5f, direction.normalized, out hit, col.radius))
				{
					//Debug.DrawRay(transform.position + transform.up * 1.75f + transform.forward * 0.5f, direction);
					//print (hit.collider.gameObject.name);
					if (hit.collider.gameObject.CompareTag("NPC"))
					{
						ai.npcInSight = true;
						ai.lastNPCSeen = hit.collider.gameObject;
					}
				}
			}
		}	
	}
	
	float CalculatePathLength (Vector3 targetPosition)
	{
		NavMeshPath path = new NavMeshPath ();
		if (nav.enabled)
			nav.CalculatePath (targetPosition, path);
        
		Vector3[] allWayPoints = new Vector3[path.corners.Length + 2];
		allWayPoints [0] = transform.position;
		allWayPoints [allWayPoints.Length - 1] = targetPosition;
        
		for (int i = 0; i < path.corners.Length; i++)
		{
			allWayPoints [i + 1] = path.corners [i];
		}
        
		float pathLength = 0;
        
		for (int i = 0; i < allWayPoints.Length - 1; i++)
		{
			pathLength += Vector3.Distance (allWayPoints [i], allWayPoints [i + 1]);
		}
        
		return pathLength;
	}
}
