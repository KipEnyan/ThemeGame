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
	
	// Update is called once per frame
	void Update () {
		Vector3 v = cameraToLookAt.transform.position - transform.position;
		v.x = v.z = 0.0f;
		transform.LookAt( cameraToLookAt.transform.position - v );
		transform.Rotate(0, 180, 0);
		
		dialogTimer -= Time.deltaTime;
		if(dialogTimer <= 0){
			TextMesh temp = (TextMesh)gameObject.GetComponent(typeof(TextMesh));
			temp.text = dialog[Random.Range(0, dialog.Length)];
			dialogTimer = dialogSwitchTime;
		}
		
	}
}
