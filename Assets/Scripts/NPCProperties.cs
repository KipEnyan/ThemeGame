using UnityEngine;
using System.Collections;

public class NPCProperties : MonoBehaviour {

	public bool isDead = false;

    // NPCSpawner sets these, other logic will use these to identify this NPC
    public string npcName;

    public int skinColorNumber;
    public Color skinColor;

    public int suitColorNumber;
    public Color suitColor;
    public string suitColorName;

    public int tieColorNumber;
    public Color tieColor;
    public string tieColorName;

    public int hatNumber;
    public string hatName;

    void Start() {

    }

    void Update() {

    }
}
