using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class NPCSpawner : MonoBehaviour {
    
    public int numberToSpawn = 3;
    public Vector3 spawnArea = new Vector3(9f, 0f, 9f);
    public GameObject npcPrefab;
    public List<Material> materialChoices;
    public List<GameObject> hatChoices;

    void Start() {
        Spawn();
    }

    void Spawn() {
        for (int i = 0; i < numberToSpawn; ++i) {
            // ------------------------------------------------------
            // Instantiate NPC and place it in the scene
            Vector3 npcPos = new Vector3(Random.Range(-0.5f, 0.5f),
                                         Random.Range(-0.5f, 0.5f),
                                         Random.Range(-0.5f, 0.5f));
            Vector3 npcRotation = new Vector3(0, Random.Range(0,360), 0);
            npcPos.Scale(spawnArea);
            GameObject npc = (GameObject)Instantiate(npcPrefab);
            NPCProperties npcProperties = (NPCProperties)npc.GetComponent("NPCProperties");

            npc.transform.position = npcPos + transform.position;
            npc.transform.Rotate(npcRotation);

            npc.transform.parent = transform;
            // ------------------------------------------------------

            // ------------------------------------------------------
            // Replace second material with a random material from materialChoices
            int randomMaterial = Random.Range(0, materialChoices.Count);
            npcProperties.materialNumber = randomMaterial;
            Material materialCopy = new Material(materialChoices[randomMaterial]);

            Color tintColor = new Color(Random.value, Random.value, Random.value, 1);
            npcProperties.tintColor = tintColor;
            materialCopy.SetColor("_Color", tintColor);
            
            Material[] replacementMaterials = npc.renderer.materials;
            replacementMaterials[1] = materialCopy;
            npc.renderer.materials = replacementMaterials;
            // ------------------------------------------------------

            // ------------------------------------------------------
            // Add a hat at random from hatChoices
            Vector3 hatPos = new Vector3(0, 1.7f, 0);
            
            int randomHat = Random.Range(0, hatChoices.Count);
            npcProperties.hatNumber = randomHat;
            GameObject hat = (GameObject)Instantiate(hatChoices[randomHat]);

            hat.transform.position = hatPos + npc.transform.position;
            hat.transform.Rotate(npcRotation);
            hat.transform.parent = npc.transform;
            // ------------------------------------------------------
        }
    }

    void Update() {
        
    }
}
