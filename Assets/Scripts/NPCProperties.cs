using UnityEngine;
using System.Collections;

public class NPCProperties : MonoBehaviour {

	public bool isDead = false;

    // NPCSpawner sets these, other logic will use these to identify this NPC
    public string npcName;

    public int skinColorNumber;
    public Color skinColor;

    public int hairNumber;
    public int hairColorNumber;
    public Color hairColor;

    public int suitColorNumber;
    public Color suitColor;
    public string suitColorName;

    public int tieColorNumber;
    public Color tieColor;
    public string tieColorName;

    public int hatNumber;
    public string hatName; // hatColorName + ' ' + hatName
    public int hatColorNumber;
    public Color hatColor;
    public string hatColorName;

    void Start() {

    }

    void Update() {

    }
}
