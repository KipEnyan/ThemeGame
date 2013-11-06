using UnityEngine;
using System.Collections;

public class MenuScreens : MonoBehaviour {

	private bool paused;
	private bool not_menu;
	private GameObject player;
	private string state = "mainmenu";
	private GameVariables gameVariables;
	public Texture grass_bg;
	public Texture menu_bg;
	public Texture win_bg;
	public Texture lose_bg;
	public GUIStyle mainmenu_text;
	public GUIStyle paused_text;
	private AudioSource crowdSoundSrc;
	
	void Awake ()
	{
		/* setup crap */
		paused = false;
		not_menu = false;
		player = GameObject.FindWithTag("Player");
        GameObject gameController = GameObject.FindGameObjectWithTag("GameController");
		gameVariables = gameController.GetComponent<GameVariables>();
		crowdSoundSrc = gameController.GetComponent<AudioSource>();
		
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
		if(Input.GetKeyUp ("p") && not_menu)
			flipPause();
		
		/* quit game if escape is hit (at the pause screen, or win/loss screen) */
		if(Input.GetKeyUp (KeyCode.Escape) && (paused || state == "win" || state == "lose"))
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
		crowdSoundSrc.mute = paused;
		
	}
	
	void endGame()
	{
		state = "mainmenu";
		flipPause();
	}
	
	/* draw GUI elements of the different states */
	void OnGUI()
	{
		
		/* draw mainmenu */
		if(state == "mainmenu")
		{
			grass_bg.wrapMode = TextureWrapMode.Repeat;
			GUI.DrawTextureWithTexCoords(new Rect(0,0,Screen.width,Screen.height), grass_bg, new Rect(0, 0, Screen.width / grass_bg.width, Screen.height / grass_bg.height));
			
			GUI.DrawTexture (new Rect(Screen.width/2-menu_bg.width/2, Screen.height/2-menu_bg.height/2, menu_bg.width,menu_bg.height), menu_bg);
			
			/* play button */
			if(GUI.Button(new Rect((Screen.width/2)-120, (Screen.height/2)+50, 100, 50), "Play", mainmenu_text))
			{
				state = "playing";
				not_menu = true;
				flipPause();
			}
			
			/* exit button */
			if(GUI.Button(new Rect((Screen.width/2)+115, (Screen.height/2)+115, 100, 50), "Exit", mainmenu_text))
				Application.Quit();
		}
		
		if(gameVariables.gameOver){
			/* draw win or lose screens if we get to that state */
			if(gameVariables.win && !gameVariables.lose)
			{
				GUI.Label (new Rect(Screen.width/2, Screen.height/2, 0, 0), "YOU KILLED YOUR TARGET\nAND GOT AWAY!", paused_text);
				endGame();
			}
			else if(gameVariables.win && gameVariables.lose)
			{
				GUI.DrawTexture (new Rect(0,0,Screen.width,Screen.height), lose_bg);
				GUI.Label (new Rect(Screen.width/2, Screen.height/2, 0, 0), "YOU KILLED YOUR TARGET\nBUT GOT CAUGHT!", paused_text);
				endGame();
			}
			else if(!gameVariables.win && gameVariables.lose)
			{
				GUI.DrawTexture (new Rect(0,0,Screen.width,Screen.height), lose_bg);
				GUI.Label (new Rect(Screen.width/2, Screen.height/2, 0, 0), "YOU KILLED THE WRONG PERSON!", paused_text);
				endGame();
			}
			else if(!gameVariables.win && !gameVariables.lose)
			{
				GUI.DrawTexture (new Rect(0,0,Screen.width,Screen.height), lose_bg);
				GUI.Label (new Rect(Screen.width/2, Screen.height/2, 0, 0), "YOU KILLED THE WRONG PERSON\nBUT GOT AWAY!", paused_text);
				endGame();
			}
		}
		
		/* draw pause screen */
		if(paused && not_menu){
			GUI.Label (new Rect(Screen.width/2, Screen.height/2, 0, 0), "PAUSED", paused_text);
		}
	}
	
}
