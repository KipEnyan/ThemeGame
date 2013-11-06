using UnityEngine;
using System.Collections;

public class NPCAI : MonoBehaviour 
{
	public bool isBusy = false;
	public bool isPanicked = false;
	public bool suspiciousSound = false;
	public float xBound1 = 0f;
	public float xBound2 = 50f;
	public float zBound1 = 0f;
	public float zBound2 = 50f;
	public AudioClip screamSound;
	public GameObject speechBubble;
	private speechScript speech;
	private AudioSource npcSound;
	private NavMeshAgent nav;
	private NPCSight sight;
	private GameObject player;
	private GameObject exit;
	
	void Awake()
	{
		nav = GetComponent<NavMeshAgent>();
		nav.ResetPath();
		sight = GetComponent<NPCSight>();
		player = GameObject.FindWithTag("Player");
		npcSound = GetComponent<AudioSource>();
		speechBubble = (GameObject)Instantiate(speechBubble, transform.position + transform.up*2.4f, transform.rotation);
		speechBubble.transform.parent = transform;
		speech = (speechScript)speechBubble.GetComponent("speechScript");
		exit = GameObject.FindWithTag("Exit");
	}
	
	void Update()
	{
		
		if(isPanicked)
		{
			Flee();
		}
		else if (sight.deadNPCInSight)
		{
			Scream();
		}
		else if (sight.playerIsHeard && suspiciousSound)
		{
			Investigate();
		}
		else if (sight.availableNPCNearby && !isBusy)
		{
			Converse ();	
		}
		else
		{
			Wander();
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
	
	void Scream()
	{
		nav.Stop();
		//transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(player.transform.position - transform.position), Time.deltaTime);
		npcSound.clip = screamSound;
		npcSound.Play();
		isPanicked = true;
	}
	
	void Flee()
	{
		speech.updateState("panic");
		if (!nav.hasPath)
		{
			if (transform.position.x < exit.transform.position.x)
			{
				xBound1 = transform.position.x;
			}
			else
			{
				xBound2 = transform.position.x;	
			}
			
			if (transform.position.z < exit.transform.position.z)
			{
				zBound1 = transform.position.z;
			}
			else
			{
				zBound2 = transform.position.z;
			}
			
			Vector3 dest = new Vector3(Random.Range(xBound1, xBound2), 0, Random.Range(zBound1, zBound2));
			nav.SetDestination(dest);
		}
	}
	
	void OnTriggerEnter(Collider other)
	{
		if (isPanicked)
		{
			if (other.gameObject.CompareTag("Exit"))
			{
				nav.ResetPath();
				nav.SetDestination(other.transform.position);
			}
		}
	}
	
	void OnTriggerStay(Collider other)
	{
		if (isPanicked)
		{
			if (other.gameObject.CompareTag("Exit"))
			{
				RaycastHit hit;
				Debug.DrawRay(transform.position + transform.up + transform.forward, transform.forward);
				if (Physics.Raycast (transform.position + transform.up + transform.forward, transform.forward, out hit))
				{
					if (hit.collider.CompareTag("Exit") && hit.distance < 1)
					{
						gameObject.SetActive(false);	
					}
				}
			}
		}
	}
}
