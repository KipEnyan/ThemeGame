using UnityEngine;
using System.Collections;

public class PlayerCollider : MonoBehaviour {

	void Start () {
	
	}

	void Update () {
	
	}

    void OnControllerColliderHit(ControllerColliderHit hit) {
        /*
        if (hit.collider.gameObject.tag == "NPC") {
            GameObject npc = hit.collider.gameObject;
            NPCProperties npcProperties = (NPCProperties)npc.GetComponent("NPCProperties");

            // Testing referencing variables from npcProperties in this script
            Debug.Log("Collided, materialNumber: " + npcProperties.materialNumber +
                      ", hatNumber: " + npcProperties.hatNumber);
            Destroy(npc);
        }
        */
    }
}
