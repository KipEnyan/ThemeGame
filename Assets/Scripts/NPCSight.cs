using UnityEngine;
using System.Collections;

public class NPCSight : MonoBehaviour {
	
	public float FOV = 90f;
	public bool playerInSight;
	public Vector3 lastKnownPosition;
	
	private NavMeshAgent nav;
	private BoxCollider col;
	private Animator anim;
	private GameObject player;
	
	void Awake()
	{
		nav = GetComponent<NavMeshAgent>();
		col = GetComponent<BoxCollider>();
		anim = GetComponent<Animator>();
		player = GameObject.FindGameObjectWithTag("Player");
	}
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
