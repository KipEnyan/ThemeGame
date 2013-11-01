using UnityEngine;
using System.Collections;

public class NPCWander : MonoBehaviour 
{
	public bool isWandering = true;
	public float xBound1 = 0f;
	public float xBound2 = 50f;
	public float zBound1 = 0f;
	public float zBound2 = 50f;
	private NavMeshAgent nav;
	
	void Awake()
	{
		nav = GetComponent<NavMeshAgent>();
		nav.ResetPath();
	}
	
	void Update()
	{
		if(isWandering && !nav.hasPath)
		{
			Vector3 dest = new Vector3(Random.Range(xBound1, xBound2), 0, Random.Range(zBound1, zBound2));
			nav.SetDestination(dest);
		}
	}
}
