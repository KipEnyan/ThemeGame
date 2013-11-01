using UnityEngine;
using System.Collections;

public class speechScript : MonoBehaviour {
	
	public Camera cameraToLookAt;
	public float dialogSwitchTime = 3.0f;
	private float dialogTimer;
	
	public string[] dialog = {"Hey! How are you this fine evening?",
							"Scotch? I'm more of a whisky kinda guy."};
	
	// Use this for initialization
	void Start () {
		dialogTimer = dialogSwitchTime;
	}
	
	
	void Update () {
	
		//Track speech billboard towards player in the XY direction
		transform.LookAt( cameraToLookAt.transform.position );
		transform.Rotate(0, 180, 0);
		
		//Switch dialog text after some amount of time
		dialogTimer -= Time.deltaTime;
		if(dialogTimer <= 0){
			TextMesh temp = (TextMesh)gameObject.GetComponent(typeof(TextMesh));
			temp.text = dialog[Random.Range(0, dialog.Length)];
			dialogTimer = dialogSwitchTime;
		}
		
	}
}
