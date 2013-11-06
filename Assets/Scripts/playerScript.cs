using UnityEngine;
using System.Collections;

public class playerScript : MonoBehaviour {

	public float meleeDistance = 1;
	public Material bloodyMaterial;
	public bool makingNoise = false;

	private GameObject playerComponent;
	private GameObject playerMesh;
    private Animator animator;
    private bool isStabbing = false;
	
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

    void Start () {
		playerComponent = transform.FindChild("Main Camera/player").gameObject;

        animator = playerComponent.GetComponent<Animator>();

		playerMesh = playerComponent.transform.FindChild("player_mesh").gameObject;
    }
	
	// Update is called once per frame
	void Update () {
		
		makingNoise = false;
        // animation code
		if(Input.GetMouseButtonDown(0)){
            animator.SetBool("isStabbing", true);
            animator.SetBool("isWalking", false);
            animator.SetBool("isIdle", false);
            isStabbing = true;
        }

        if(Input.GetMouseButtonUp(0)){
            animator.SetBool("isStabbing", false);
            animator.SetBool("isWalking", true);
            animator.SetBool("isIdle", false);
            isStabbing = false;
        }

        // collision code
        if (isStabbing) {
            Collider meleeVic = raycastForward(meleeDistance).collider;

            if (meleeVic) {
                if (meleeVic.CompareTag("NPC")) {
                    GameObject npc = meleeVic.gameObject;
                    NPCAI npcAI = (NPCAI)npc.GetComponent("NPCAI");

					print ("meleed an NPC");

					playerMesh.renderer.material = bloodyMaterial;

					//playerComponent

                    if (!npcAI.isDead) 
					{
                       //print("Killed an NPC");
						makingNoise = true;
                    	npcAI.isDying = true;
                    }
                }
            }
        }

	}
}
