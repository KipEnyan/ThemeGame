using UnityEngine;
using System.Collections;

public class NPCSight : MonoBehaviour
{
	public float FOV = 90f;
	public bool availableNPCNearby;
	public bool playerInSight;
	public bool playerIsHeard;
	public bool deadNPCInSight;
	private NavMeshAgent nav;
	private SphereCollider col;
	private GameObject player;
	
	void Awake ()
	{
		nav = GetComponent<NavMeshAgent> ();
		col = GetComponent<SphereCollider> ();
		player = GameObject.FindWithTag ("Player");
	}
	
	void OnTriggerStay (Collider other)
	{
		if (other.gameObject == player) {
			//print ("Player detected.");
			playerInSight = false;
			
			Vector3 direction = other.transform.position - (transform.position + transform.up + transform.forward);
			float angle = Vector3.Angle (direction, transform.forward);
			
			if (angle < FOV * 0.5f) {
				//print ("Player in FOV.");
				RaycastHit hit;
				//Debug.DrawRay(transform.position + transform.up + transform.forward, direction);
				
				if (Physics.Raycast (transform.position + transform.up + transform.forward, direction.normalized, out hit, col.radius)) {
					//Debug.DrawLine(transform.position + transform.up + transform.forward, other.transform.position);
					if (hit.collider.gameObject == player) {
						//print ("Raycast hit player.");
						playerInSight = true;
					}
				}
			}
			
			if (CalculatePathLength (player.transform.position) <= col.radius) {
				playerIsHeard = true;
				//print ("I can hear you.");
			} else {
				playerIsHeard = false;	
			}
		} else if (other.gameObject.GetComponent<NPCProperties>() != null) 
		{
			if (other.gameObject.GetComponent<NPCProperties>().isDead) 
			{
				deadNPCInSight = false;
			
				Vector3 direction = other.transform.position - (transform.position + transform.up + transform.forward);
				float angle = Vector3.Angle (direction, transform.forward);
			
				if (angle < FOV * 0.5f)
				{
					//print ("Dead NPC in FOV.");
					RaycastHit hit;
					//Debug.DrawRay(transform.position + transform.up + transform.forward, direction);
				
					if (Physics.Raycast (transform.position + transform.up + transform.forward, direction.normalized, out hit, col.radius)) {
						//Debug.DrawLine(transform.position + transform.up + transform.forward, other.transform.position);
						if (hit.collider.gameObject.GetComponent<NPCProperties>().isDead)
						{
							//print ("Raycast hit dead NPC.");
							deadNPCInSight = true;
						}
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
        
		for (int i = 0; i < path.corners.Length; i++) {
			allWayPoints [i + 1] = path.corners [i];
		}
        
		float pathLength = 0;
        
		for (int i = 0; i < allWayPoints.Length - 1; i++) {
			pathLength += Vector3.Distance (allWayPoints [i], allWayPoints [i + 1]);
		}
        
		return pathLength;
	}
}
