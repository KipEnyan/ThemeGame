using UnityEngine;
using System.Collections;

public class NPCProperties : MonoBehaviour {

    // NPCSpawner sets these, other logic will use these to identify this NPC
	public bool isDead = false;
    public int hatNumber;

    public int skinColorNumber;
    public Color skinColor;

    public int suitColorNumber;
    public Color suitColor;
    public string suitColorName;

    public int tieColorNumber;
    public Color tieColor;
    public string tieColorName;

    void Start() {

    }

    void Update() {

    }
}
