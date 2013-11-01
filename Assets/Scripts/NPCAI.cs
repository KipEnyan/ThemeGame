using UnityEngine;
using System.Collections;

public class NPCAI : MonoBehaviour 
{
	public bool suspiciousSound = false;
	public float xBound1 = 0f;
	public float xBound2 = 50f;
	public float zBound1 = 0f;
	public float zBound2 = 50f;
	private NavMeshAgent nav;
	private NPCSight sight;
	private GameObject player;
	
	void Awake()
	{
		nav = GetComponent<NavMeshAgent>();
		nav.ResetPath();
		sight = GetComponent<NPCSight>();
		player = GameObject.FindWithTag("Player");
	}
	
	void Update()
	{
		if (sight.playerIsHeard && suspiciousSound)
		{
			Investigate();
		}
		else
		{
			Wander ();
		}
	}
	
	void Investigate()
	{
		nav.ResetPath();
		nav.SetDestination(player.transform.position);
	}
	
	void Wander()
	{
		if (!nav.hasPath)
		{
			Vector3 dest = new Vector3(Random.Range(xBound1, xBound2), 0, Random.Range(zBound1, zBound2));
			nav.SetDestination(dest);
		}
	}
	
	void Converse()
	{
	}
}
