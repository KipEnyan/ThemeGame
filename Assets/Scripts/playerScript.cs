using UnityEngine;
using System.Collections;

public class playerScript : MonoBehaviour {

	public float meleeDistance = 1.8f;
	public Material bloodyMaterial;
	public bool makingNoise = false;

	private GameObject gameController;
	private GameObject playerComponent;
	private GameObject playerMesh;
    private Animator animator;
	
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
        gameController = GameObject.FindGameObjectWithTag("GameController");

		playerComponent = transform.FindChild("Main Camera/player").gameObject;

        animator = playerComponent.GetComponent<Animator>();

		playerMesh = playerComponent.transform.FindChild("player_mesh").gameObject;
    }

	// adapted from http://forum.unity3d.com/threads/165093-How-to-play-an-animation-only-once-using-Mecanim
    IEnumerator PlayOneShot (string boolName) {
        animator.SetBool(boolName, true);
		// runs the code above the yield then exits (this function needs to be called within StartCoroutine())
        yield return null;
		// re-enters the function on the next frame at this location (once the animation has started playing)
        animator.SetBool(boolName, false);
    }

	// Update is called once per frame
	void Update () {
		makingNoise = false;
        // animation code
		if(Input.GetMouseButtonDown(0)){
			StartCoroutine(PlayOneShot("isStabbing"));

            Collider meleeVic = raycastForward(meleeDistance).collider;

            if (meleeVic) {
				if (meleeVic.CompareTag("Exit")) {
					gameController.GetComponent<GameVariables>().gameOver = true;
				}

                if (meleeVic.CompareTag("NPC")) {
                    GameObject npc = meleeVic.gameObject;

					float distance = Vector3.Distance(npc.transform.position, transform.position);

                    NPCAI npcAI = (NPCAI)npc.GetComponent("NPCAI");

					if (distance < meleeDistance) {
						//Destroy(npc);
						playerMesh.renderer.material = bloodyMaterial;

						//playerComponent

	                    if (!npcAI.isDead) {
	                       //print("Killed an NPC");
	                    	npcAI.isDying = true;
							makingNoise = true;
	                    }
					}
				}
			}
        }
	}
}
