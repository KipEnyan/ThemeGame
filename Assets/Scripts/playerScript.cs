using UnityEngine;
using System.Collections;

public class playerScript : MonoBehaviour {
	
	public float meleeDistance = 1;
	
	//Given a distance, check if there's an object
	//infront of our player. Returns collider
	RaycastHit raycastForward(float distance){
		Vector3 fwdRay = transform.TransformDirection(Vector3.forward);
		RaycastHit hit = new RaycastHit();
		
		if(Physics.Raycast(transform.position, fwdRay, out hit, distance)){
			Debug.DrawLine(transform.position, hit.point);
		}

		return hit;
	}
	
	
	// Update is called once per frame
	void Update () {
		
		//process melee
		if(Input.GetMouseButtonDown(0)){
			Collider meleeVic = raycastForward(meleeDistance).collider;
			
			//do relevant collision stuff here
			if(meleeVic){				
				print("Hit " + meleeVic.name);
				if(meleeVic.name == "dummy_man")
					Destroy(meleeVic.gameObject);
				
			}
		}
		
		
		
	}
}
