using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class NPCSpawner : MonoBehaviour {
    
    public int numberToSpawn = 3;

    // spawnOrigins and spawnAreas should be of the same size
    public List<Vector3> spawnOrigins;
    public List<Vector3> spawnAreas;

    public GameObject npcPrefab;

    public List<Color> skinColors;

    public List<Color> costumeColors;
    public List<string> costumeColorNames;


    //public List<Color> suitColors;
    //public List<Color> tieColors;

    public List<GameObject> hatChoices;
    public List<string> hatChoiceNames;

    void Start() {
        Spawn();
    }

    void Spawn() {
        GameObject gameController;
        gameController = GameObject.FindGameObjectWithTag("GameController");

        for (int i = 0; i < numberToSpawn; ++i) {
            // ------------------------------------------------------
            // Instantiate NPC and place it in the scene
            int numSpawns = Mathf.Min(spawnOrigins.Count, spawnAreas.Count);
            int randomSpawnIndex = Random.Range(0, numSpawns);
            Vector3 spawnOrigin = spawnOrigins[randomSpawnIndex];
            Vector3 spawnArea = spawnAreas[randomSpawnIndex];

            Vector3 npcPos = new Vector3(Random.Range(-0.5f, 0.5f),
                                         Random.Range(-0.5f, 0.5f),
                                         Random.Range(-0.5f, 0.5f));
            Vector3 npcRotation = new Vector3(0, Random.Range(0,360), 0);
            npcPos.Scale(spawnArea);
            GameObject npc = (GameObject)Instantiate(npcPrefab);
            NPCProperties npcProperties = (NPCProperties)npc.GetComponent("NPCProperties");

            npc.transform.position = npcPos + transform.position + spawnOrigin;
            npc.transform.Rotate(npcRotation);
            npc.transform.parent = transform;
            // ------------------------------------------------------

            // ------------------------------------------------------
            // Replace materials with tinted materials
            Material[] replacementMaterials = npc.renderer.materials;

            // Tint skin
            int randomSkinColor = Random.Range(0, skinColors.Count);
            Color skinColor = skinColors[randomSkinColor];
            npcProperties.skinColorNumber = randomSkinColor;
            npcProperties.skinColor = skinColor;
            Material skinCopy = new Material(npc.renderer.materials[0]);
            skinCopy.SetColor("_Color", skinColor);
            replacementMaterials[0] = skinCopy;

            // Tint suit (clothes1)
            int randomSuitColor = Random.Range(0, costumeColors.Count);
            Color suitColor = costumeColors[randomSuitColor];
            npcProperties.suitColorNumber = randomSuitColor;
            npcProperties.suitColorName = costumeColorNames[randomSuitColor];
            npcProperties.suitColor = suitColor;
            Material suitCopy = new Material(npc.renderer.materials[3]);
            suitCopy.SetColor("_Color", suitColor);
            replacementMaterials[3] = suitCopy;

            // Tint tie (clothes2)
            int randomTieColor = Random.Range(0, costumeColors.Count);
            Color tieColor = costumeColors[randomTieColor];
            npcProperties.tieColorNumber = randomTieColor;
            npcProperties.tieColorName = costumeColorNames[randomTieColor];
            npcProperties.tieColor = tieColor;
            Material tieCopy = new Material(npc.renderer.materials[4]);
            tieCopy.SetColor("_Color", tieColor);
            replacementMaterials[4] = tieCopy;

            npc.renderer.materials = replacementMaterials;
            // ------------------------------------------------------

            // ------------------------------------------------------
            // Add a hat at random from hatChoices
            /*
            Vector3 hatPos = new Vector3(0, 1.7f, 0);
            
            int randomHat = Random.Range(0, hatChoices.Count);
            npcProperties.hatNumber = randomHat;
            GameObject hat = (GameObject)Instantiate(hatChoices[randomHat]);

            hat.transform.position = hatPos + npc.transform.position;
            hat.transform.Rotate(npcRotation);
            hat.transform.parent = npc.transform;
            */
            // ------------------------------------------------------
        }
    }

    void Update() {
        
    }
}
