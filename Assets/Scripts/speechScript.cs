using UnityEngine;
using System.Collections;

public class speechScript : MonoBehaviour {
	
	public Camera cameraToLookAt;
	private dialogueManager dialogueMgr;

	// Use this for initialization
	void Start () {
		dialogueMgr = GameObject.Find("dialogueMgrObj").GetComponent<dialogueManager>();
	}
	
	void Update () {
	
		/* Track speech billboard towards player in the XY direction */
		transform.LookAt( cameraToLookAt.transform.position );
		transform.Rotate(0, 180, 0);
		
	}
	
	/* update speech text based on state */
	public void updateSpeech(string player_state){
		TextMesh temp = (TextMesh)gameObject.GetComponent(typeof(TextMesh));
		
		if(player_state == "")
			temp.text = "";
		else
			temp.text = dialogueMgr.getDialogue(player_state);
	}
}
