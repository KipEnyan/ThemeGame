﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class NPCSpawner : MonoBehaviour {
    
    public int numberToSpawn = 3;

    // spawnOrigins and spawnAreas should be of the same size
    public List<Vector3> spawnOrigins;
    public List<Vector3> spawnAreas;

    public GameObject npcPrefab;

    public List<Color> skinColors;
    public List<GameObject> hairChoices;
    public List<Color> hairColors;

    public List<Color> costumeColors;
    public List<string> costumeColorNames;

    public List<GameObject> hatChoices;
    public List<string> hatChoiceNames;

    private int currentName = 0;
    private string [] nameChoices;

    void Start() {
        LoadNames();
        Spawn();
    }

    void LoadNames() {
        nameChoices = ((TextAsset)Resources.Load("names", typeof(TextAsset))).text.Split('\n');

        ShuffleArray(nameChoices);
    }

    void ShuffleArray(string [] arr) {
        for (int i = arr.Length - 1; i > 0; --i) {
            int shuffleTarget = Random.Range(0, i);
            string temp = arr[i];
            arr[i] = arr[shuffleTarget];
            arr[shuffleTarget] = temp;
        }
    }

    void Spawn() {
        GameObject gameController;
        gameController = GameObject.FindGameObjectWithTag("GameController");

        List<GameObject> npcs = new List<GameObject>();

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
            npcs.Add(npc);
            NPCProperties npcProperties = (NPCProperties)npc.GetComponent("NPCProperties");

            npc.transform.position = npcPos + transform.position + spawnOrigin;
            npc.transform.Rotate(npcRotation);
            npc.transform.parent = transform;
            // ------------------------------------------------------

            npcProperties.npcName = nameChoices[currentName];
            currentName++;
            if (currentName >= nameChoices.Length) {
                print ("Warning: not enough names, there will be duplicates.");
                currentName = 0;
            }

            // ------------------------------------------------------
            // Replace base mesh materials with tinted materials
			GameObject base_mesh = npc.transform.FindChild("base_mesh").gameObject;
            Material[] replacementMaterials = base_mesh.renderer.materials;

            // Tint skin
            int randomSkinColor = Random.Range(0, skinColors.Count);
            Color skinColor = skinColors[randomSkinColor];
            npcProperties.skinColorNumber = randomSkinColor;
            npcProperties.skinColor = skinColor;
            Material skinCopy = new Material(base_mesh.renderer.materials[0]);
            skinCopy.SetColor("_Color", skinColor);
            replacementMaterials[0] = skinCopy;

            // Tint suit (clothes1)
            int randomSuitColor = Random.Range(0, costumeColors.Count);
            Color suitColor = costumeColors[randomSuitColor];
            npcProperties.suitColorNumber = randomSuitColor;
            npcProperties.suitColorName = costumeColorNames[randomSuitColor];
            npcProperties.suitColor = suitColor;
            Material suitCopy = new Material(base_mesh.renderer.materials[3]);
            suitCopy.SetColor("_Color", suitColor);
            replacementMaterials[3] = suitCopy;

            // Tint tie (clothes2)
            int randomTieColor = Random.Range(0, costumeColors.Count);
            Color tieColor = costumeColors[randomTieColor];
            npcProperties.tieColorNumber = randomTieColor;
            npcProperties.tieColorName = costumeColorNames[randomTieColor];
            npcProperties.tieColor = tieColor;
            Material tieCopy = new Material(base_mesh.renderer.materials[4]);
            tieCopy.SetColor("_Color", tieColor);
            replacementMaterials[4] = tieCopy;

            base_mesh.renderer.materials = replacementMaterials;
            // ------------------------------------------------------

            // Pick random hair, tint it, and attach it
            int randomHair = Random.Range(0, hairChoices.Count);
            npcProperties.hairNumber = randomHair;
            GameObject hair = (GameObject)Instantiate(hairChoices[randomHair]);
            int randomHairColor = Random.Range(0, hairColors.Count);
            Color hairColor = hairColors[randomHairColor];
            npcProperties.hairColorNumber = randomHairColor;
            npcProperties.hairColor = hairColor;
            Material hairMaterial = new Material(hair.renderer.material);
            hairMaterial.SetColor("_Color", hairColor);
            hair.renderer.material = hairMaterial;
            Transform head = npc.transform.Find("Rig/hips/upper_hip/spine/chest/neck/head");
            hair.transform.parent = head.transform;
            hair.transform.localPosition = new Vector3(1.47f, 0, 0);
            hair.transform.forward = npc.transform.forward;

            // ------------------------------------------------------
            // Add a hat at random from hatChoices
            int randomHat = Random.Range(0, hatChoices.Count);
            npcProperties.hatNumber = randomHat;
            npcProperties.hatName = hatChoiceNames[randomHat];
            // TODO (when hats are ready): instantiate and parent to bone

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

        GameVariables gameVariables = (GameVariables)gameController.GetComponent("GameVariables");
        gameVariables.npcs = npcs;

        int targetNumber = Random.Range(0, npcs.Count);
        gameVariables.targetNumber = targetNumber;
        gameVariables.target = npcs[targetNumber];
    }

    void Update() {
        
    }
}
