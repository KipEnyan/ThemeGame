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

    public List<GameObject> hatChoices;
    public List<string> hatChoiceNames;

    private List<string> nameChoices;

    void Start() {
        LoadNames();
        Spawn();
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

            int randomName = Random.Range(0, nameChoices.Count);
            npcProperties.npcName = nameChoices[randomName];

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

    void LoadNames() {
        nameChoices = new List<string>();

        // Should be loaded from a file but apparently that isn't trivial in Unity/C#...
        nameChoices.Add("Jacob");
        nameChoices.Add("Mason");
        nameChoices.Add("Ethan");
        nameChoices.Add("Noah");
        nameChoices.Add("William");
        nameChoices.Add("Liam");
        nameChoices.Add("Jayden");
        nameChoices.Add("Michael");
        nameChoices.Add("Alexander");
        nameChoices.Add("Aiden");
        nameChoices.Add("Daniel");
        nameChoices.Add("Matthew");
        nameChoices.Add("Elijah");
        nameChoices.Add("James");
        nameChoices.Add("Anthony");
        nameChoices.Add("Benjamin");
        nameChoices.Add("Joshua");
        nameChoices.Add("Andrew");
        nameChoices.Add("David");
        nameChoices.Add("Joseph");
        nameChoices.Add("Logan");
        nameChoices.Add("Jackson");
        nameChoices.Add("Christopher");
        nameChoices.Add("Gabriel");
        nameChoices.Add("Samuel");
        nameChoices.Add("Ryan");
        nameChoices.Add("Lucas");
        nameChoices.Add("John");
        nameChoices.Add("Nathan");
        nameChoices.Add("Isaac");
        nameChoices.Add("Dylan");
        nameChoices.Add("Caleb");
        nameChoices.Add("Christian");
        nameChoices.Add("Landon");
        nameChoices.Add("Jonathan");
        nameChoices.Add("Carter");
        nameChoices.Add("Luke");
        nameChoices.Add("Owen");
        nameChoices.Add("Brayden");
        nameChoices.Add("Gavin");
        nameChoices.Add("Wyatt");
        nameChoices.Add("Isaiah");
        nameChoices.Add("Henry");
        nameChoices.Add("Eli");
        nameChoices.Add("Hunter");
        nameChoices.Add("Jack");
        nameChoices.Add("Evan");
        nameChoices.Add("Jordan");
        nameChoices.Add("Nicholas");
        nameChoices.Add("Tyler");
        nameChoices.Add("Aaron");
        nameChoices.Add("Jeremiah");
        nameChoices.Add("Julian");
        nameChoices.Add("Cameron");
        nameChoices.Add("Levi");
        nameChoices.Add("Brandon");
        nameChoices.Add("Angel");
        nameChoices.Add("Austin");
        nameChoices.Add("Connor");
        nameChoices.Add("Adrian");
        nameChoices.Add("Robert");
        nameChoices.Add("Charles");
        nameChoices.Add("Thomas");
        nameChoices.Add("Sebastian");
        nameChoices.Add("Colton");
        nameChoices.Add("Jaxon");
        nameChoices.Add("Kevin");
        nameChoices.Add("Zachary");
        nameChoices.Add("Ayden");
        nameChoices.Add("Dominic");
        nameChoices.Add("Blake");
        nameChoices.Add("Jose");
        nameChoices.Add("Oliver");
        nameChoices.Add("Justin");
        nameChoices.Add("Bentley");
        nameChoices.Add("Jason");
        nameChoices.Add("Chase");
        nameChoices.Add("Ian");
        nameChoices.Add("Josiah");
        nameChoices.Add("Parker");
        nameChoices.Add("Xavier");
        nameChoices.Add("Adam");
        nameChoices.Add("Cooper");
        nameChoices.Add("Nathaniel");
        nameChoices.Add("Grayson");
        nameChoices.Add("Jace");
        nameChoices.Add("Carson");
        nameChoices.Add("Nolan");
        nameChoices.Add("Tristan");
        nameChoices.Add("Luis");
        nameChoices.Add("Brody");
        nameChoices.Add("Juan");
        nameChoices.Add("Hudson");
        nameChoices.Add("Bryson");
        nameChoices.Add("Carlos");
        nameChoices.Add("Easton");
        nameChoices.Add("Damian");
        nameChoices.Add("Alex");
        nameChoices.Add("Kayden");
        nameChoices.Add("Ryder");
    }

    void Update() {
        
    }
}
