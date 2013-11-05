﻿using UnityEngine;
using System.Collections;

public class speechScript : MonoBehaviour {
	
	public Camera cameraToLookAt;
	private dialogueManager dialogueMgr;
	private float dialogueReset;
	private float dialogueTimer;
	public string npcState = "";
	

	// Use this for initialization
	void Start () {
        GameObject gameController;
        gameController = GameObject.FindGameObjectWithTag("GameController");
		dialogueMgr = (dialogueManager)gameController.GetComponent("dialogueManager");
		cameraToLookAt = Camera.main;
		dialogueReset = Random.Range(3.0f,6.5f);
		dialogueTimer = dialogueReset;
	}
	
	void Update () {
	
		/* Track speech billboard towards player in the XY direction */
		transform.LookAt( cameraToLookAt.transform.position );
		transform.Rotate(0, 180, 0);
		
		/* update billboard text */
		dialogueTimer -= Time.deltaTime;
		if(dialogueTimer <= 0){
			TextMesh temp = (TextMesh)gameObject.GetComponent(typeof(TextMesh));
			
			if(npcState == "")
				temp.text = "";
			else
				temp.text = dialogueMgr.getDialogue(npcState);
			
			dialogueReset = Random.Range(3.0f,6.5f);
			dialogueTimer = dialogueReset;
		}
	}
	
	/* update speech state... */
	public void updateState(string someState){
		npcState = someState;
		return;
	}
}
