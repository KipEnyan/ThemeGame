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
	
	void Start()
	{
		speechBubble = (GameObject)Instantiate(speechBubble, transform.position + transform.up*2.4f, transform.rotation);
		speechBubble.transform.parent = transform;
		speech = (speechScript)speechBubble.GetComponent("speechScript");
	}
	
	void Awake()
	{
		nav = GetComponent<NavMeshAgent>();
		nav.ResetPath();
		sight = GetComponent<NPCSight>();
		player = GameObject.FindWithTag("Player");
		npcSound = GetComponent<AudioSource>();
	}
	
	void Update()
	{
		/* basic dialogue system test */
		speech.updateState("misc");
		
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
		transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(player.transform.position - transform.position), Time.deltaTime);
		npcSound.clip = screamSound;
		npcSound.Play();
		isPanicked = true;
	}
	
	void Flee()
	{
		
	}
}
