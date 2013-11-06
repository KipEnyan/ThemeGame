using UnityEngine;
using System.Collections;

public class NPCAI : MonoBehaviour 
{
	public bool conversationAvailable = false;
	public bool deadNPCInSight = false;
	public bool playerIsHeard = false;
	public bool playerInSight = false;
	public bool npcInSight = false;
	public bool isDead = false;
	public bool isDying = false;
	public bool isBusy = false;
	public bool isPanicked = false;
	public bool isConversing = false;
	public bool heardSuspiciousSound = false;
	public float timeSpeaking = 0f;
	public float timeConversing = 0f;
	public float conversationLength = 0f;
	public float xBound1 = 0f;
	public float xBound2 = 50f;
	public float zBound1 = 0f;
	public float zBound2 = 50f;
	public AudioClip screamSound;
	public AudioClip dieSound;
	public AudioClip leaveSound;
	public GameObject lastNPCSeen;
	public GameObject conversationPartner;
	public GameObject speechBubble;
	private speechScript speech;
	private AudioSource npcSound;
	private NavMeshAgent nav;
	private GameObject player;
	private GameObject exit;
	private Animator animator;
	private GameObject gameController;
	
	void Awake()
	{
		nav = GetComponent<NavMeshAgent>();
		nav.ResetPath();
		player = GameObject.FindWithTag("Player");
		npcSound = GetComponent<AudioSource>();
		speechBubble = (GameObject)Instantiate(speechBubble, transform.position + transform.up*2.4f, transform.rotation);
		speechBubble.transform.parent = transform;
		speech = speechBubble.GetComponent<speechScript>();
		exit = GameObject.FindWithTag("Exit");
		animator = GetComponent<Animator>();
		lastNPCSeen = gameObject;
		gameController = GameObject.FindWithTag("GameController");
	}
	
	void Update()
	{
		if (!isDead)
		{
			if (isDying)
			{
				Die();
			}
			else if(isPanicked)
			{
				Flee();
			}
			else if (DeadNPCInSight())
			{
				Scream();
			}
			else if (HeardSuspiciousSound())
			{
				Investigate();
			}
			else if (ConversationAvailable())
			{
				InitiateConversation();	
			}
			else if (isConversing)
			{
				Converse ();
			}
			else
			{
				Wander();
			}
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
			animator.SetBool("isWalking", true);
			Vector3 dest = new Vector3(Random.Range(xBound1, xBound2), 0, Random.Range(zBound1, zBound2));
			nav.SetDestination(dest);
		}
	}
	
	void Converse()
	{
		//transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(lastNPCSeen.transform.position - transform.position), Time.deltaTime);
		//transform.LookAt(lastNPCSeen.transform.position);
	
		if ((transform.position - conversationPartner.transform.position).magnitude < 1)
		{
			nav.updatePosition = false;
			animator.SetBool("isWalking", false);
		}
		if (timeConversing < conversationLength && !conversationPartner.GetComponent<NPCAI>().isDead)
		{
			nav.SetDestination(conversationPartner.transform.position);
		}
		else
		{
			nav.updatePosition = true;
			nav.ResetPath();
			isConversing = false;
			speech.updateState("idle");
			animator.SetBool("isTalking", false);
		}
		if (speech.npcState == "converse")
		{
			timeSpeaking += Time.deltaTime;
			if (timeSpeaking >= 5f)
			{
				conversationPartner.GetComponent<NPCAI>().speech.updateState("converse");
				speech.updateState("idle");
				conversationPartner.GetComponent<Animator>().SetBool("isTalking", true);
				animator.SetBool("isTalking", false);
				timeSpeaking = 0f;
			}
		}
		timeConversing += Time.deltaTime;
	}
	
	void Scream()
	{
		nav.ResetPath();
		//transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(player.transform.position - transform.position), Time.deltaTime);
		npcSound.clip = screamSound;
		npcSound.Play();
		isPanicked = true;
		animator.SetBool("isTalking", false);
		if (playerInSight)
		{
			gameController.GetComponent<GameVariables>().lose = true;
			print ("Busted.");
		}
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
			
			animator.SetBool("isWalking", true);
			Vector3 dest = new Vector3(Random.Range(xBound1, xBound2), 0, Random.Range(zBound1, zBound2));
			nav.SetDestination(dest);
		}
	}
	
	void Die()
	{
		nav.Stop();
		nav.ResetPath();
		animator.SetBool("isDying", true);
		animator.SetBool("isWalking", false);
		animator.SetBool("isTalking", false);
		speech.updateState("idle");
		npcSound.clip = dieSound;
		npcSound.Play();
		isDying = false;
		isDead = true;
		if (gameController.GetComponent<GameVariables>().target == gameObject)
		{
			gameController.GetComponent<GameVariables>().win = true;
		}
	}
	
	bool DeadNPCInSight()
	{
		deadNPCInSight = npcInSight && lastNPCSeen.GetComponent<NPCAI>().isDead;
		return deadNPCInSight;
	}
	
	bool HeardSuspiciousSound()
	{
		heardSuspiciousSound = playerIsHeard && player.GetComponent<playerScript>().makingNoise;
		return heardSuspiciousSound;
	}
	
	bool ConversationAvailable()
	{
		conversationAvailable = !nav.hasPath && !isConversing && npcInSight && !lastNPCSeen.GetComponent<NPCAI>().isConversing;
		return conversationAvailable;
	}
	
	void InitiateConversation()
	{
		conversationAvailable = false;
		NPCAI partner = lastNPCSeen.GetComponent<NPCAI>();
		speech.setText("Hey! What's up?");
		//partner.nav.Stop();
		//partner.nav.updateRotation = false;
		//nav.updateRotation = false;
		//lastNPCSeen.transform.rotation = Quaternion.Slerp(lastNPCSeen.transform.rotation, Quaternion.LookRotation(transform.position - lastNPCSeen.transform.position), Time.deltaTime);
		//transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(lastNPCSeen.transform.position - transform.position), Time.deltaTime);
		if(partner.isPanicked)
		{
			partner.speech.setText("Run for your life!");
			isPanicked = true;
			//partner.nav.Resume();
		}
		else
		{
			conversationLength = Random.Range(5f,30f);
			partner.conversationLength = conversationLength;
			partner.isConversing = true;
			isConversing = true;
			//partner.nav.updateRotation = false;
			//partner.nav.updateRotation = false;
			//partner.nav.updatePosition = false;
			//partner.transform.LookAt(transform.position);
			partner.conversationPartner = gameObject;
			conversationPartner = lastNPCSeen;
			//nav.updateRotation = false;
			//transform.LookAt(lastNPCSeen.transform.position);
			//nav.SetDestination(lastNPCSeen.transform.position);
			speech.updateState("converse");
			//partner.speech.updateState("converse");
			timeConversing = 0f;
			partner.timeConversing = 0f;
			animator.SetBool("isTalking", true);
			//animator.SetBool("isWalking", false);
			partner.animator.SetBool("isTalking", true);
			//partner.animator.SetBool("isWalking", false);
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
