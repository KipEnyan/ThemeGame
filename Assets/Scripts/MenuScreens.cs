using UnityEngine;
using System.Collections;

public class MenuScreens : MonoBehaviour {

	private bool paused;
	private GameObject pause_text;
	private GameObject player;
	
	void Awake ()
	{
		paused = false;
		pause_text = GameObject.Find("guiPauseText");
		pause_text.SetActive (paused);
		player = GameObject.FindWithTag("Player");
		
	}
	
	void Update ()
	{
		
		/* pause/unpase the game */
		if(Input.GetKeyDown ("p"))
			flipPause();
		
	}
	
	void flipPause()
	{
		if(Time.timeScale == 1.0f)
			Time.timeScale = 0.0f;
		else
			Time.timeScale = 1.0f;
		
		paused = !paused;
		pause_text.SetActive(paused);
		
		player.transform.GetComponent<CharacterMotor>().enabled = !paused;
    	player.transform.GetComponent<MouseLook>().enabled = !paused;
		Camera.main.GetComponent<MouseLook>().enabled = !paused;	
	}
	
}
