using UnityEngine;
using System.Collections;

public class MenuScreens : MonoBehaviour {

	private bool paused;
	private bool not_menu;
	private GameObject player;
	private string state = "mainmenu";
	public Texture menu_bg;
	public GUIStyle mainmenu_text;
	public GUIStyle paused_text;
	
	void Awake ()
	{
		paused = false;
		not_menu = false;
		player = GameObject.FindWithTag("Player");
		
		/* use the main menu font as a base for the pause text */
		paused_text = new GUIStyle(mainmenu_text);
		paused_text.fontSize = 80;
		
		/* pause game at start (we're at the mainmenu) */
		flipPause();
	}
	
	/* update loop */
	void Update ()
	{
		/* pause/unpase the game */
		if(Input.GetKeyDown ("p") && not_menu)
			flipPause();
		
		/* quit game if paused and escape is hit */
		if(Input.GetKeyDown (KeyCode.Escape) && paused)
			Application.Quit();
	}
	
	/* pause or upauses the game */
	void flipPause()
	{
		if(Time.timeScale == 1.0f)
			Time.timeScale = 0.0f;
		else
			Time.timeScale = 1.0f;
		
		paused = !paused;
		
		player.transform.GetComponent<CharacterMotor>().enabled = !paused;
    	player.transform.GetComponent<MouseLook>().enabled = !paused;
		Camera.main.GetComponent<MouseLook>().enabled = !paused;
		Screen.lockCursor = !paused;
		
	}
	
	/* draw GUI elements of the different states */
	void OnGUI()
	{
		
		/* draw mainmenu */
		if(state == "mainmenu")
		{
			GUI.DrawTexture (new Rect(0,0,Screen.width,Screen.height), menu_bg);
			
			/* play button */
			if(GUI.Button(new Rect((Screen.width/2)-50, (Screen.height/2)-25, 100, 50), "Play", mainmenu_text))
			{
				state = "playing";
				not_menu = true;
				flipPause();
			}
			
			/* exit button */
			if(GUI.Button(new Rect((Screen.width/2)-50, (Screen.height/2 + 75)-25, 100, 50), "Exit", mainmenu_text))
				Application.Quit();
		}
		
		/* draw pause screen */
		if(paused && not_menu){
			GUI.Label (new Rect(Screen.width/2, Screen.height/2, 0, 0), "PAUSED", paused_text);
		}
	}
	
}
