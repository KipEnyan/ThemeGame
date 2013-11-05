using UnityEngine;
using System.Collections;

public class dialogueManager : MonoBehaviour {
	
	private string[] greetings;
	private string[] hints;
	private string[] misc;
	private string[] farewells;
	private string[] panic;
	private int line_len = 40;
	private GameVariables NPCInfo;
	

	void Start () {
	
		/* load dialogue from file and break up accordingly */
		greetings = ((TextAsset)Resources.Load("greetings", typeof(TextAsset))).text.Split('\n');
		hints = ((TextAsset)Resources.Load("hints", typeof(TextAsset))).text.Split('\n');
		misc = ((TextAsset)Resources.Load("misc", typeof(TextAsset))).text.Split('\n');
		farewells = ((TextAsset)Resources.Load("farewells", typeof(TextAsset))).text.Split('\n');
		panic = ((TextAsset)Resources.Load("panic", typeof(TextAsset))).text.Split('\n');
		
		/* cache the NPCInfo object from the GameVars */
		NPCInfo = GameObject.Find("GameController").GetComponent<GameVariables>();
	}
	
	
	/* swap out npc properties in selected dialogue,
	   break up dialogue into multiple lines, etc */
	string processDialogue(string to_process, string speech_state){
		string return_str = "";
		
		/* dynamically tweak sentences to keep things interesting */
		
		NPCProperties npc_props;
		if(speech_state == "hint")
			npc_props = (NPCProperties)NPCInfo.target.GetComponent("NPCProperties");
		else
			npc_props = (NPCProperties)NPCInfo.npcs[Random.Range(0, NPCInfo.npcs.Count - 1)].GetComponent("NPCProperties");
		
		to_process = to_process.Replace("{hat}", npc_props.hatName);
		to_process = to_process.Replace("{suit-color}", npc_props.suitColorName);
		to_process = to_process.Replace("{tie-color}", npc_props.tieColorName);
		to_process = to_process.Replace("{npc-name}", npc_props.npcName);
		//to_process = to_process.Replace("{hair-color}", npc_props.hairColor);
		
		
		/* make sure our dialogue isn't one super huge line */
		if(to_process.Length > line_len){
			int linebreak_index = to_process.IndexOf (' ', line_len);
			if(linebreak_index > 0){
				char[] array = to_process.ToCharArray();
				array[linebreak_index] = '\n';
				return_str = new string(array);
			}
		}
		
		if(return_str.Length == 0)
			return_str = to_process;
		
		return return_str;
		
	}
	
	
	/* given a speech state, getDialogue will return relevant dialogue */
	public string getDialogue(string speech_state){
		string some_dialogue;
		
		/* select dialogue for corresponding conversation state */
		switch(speech_state)
		{
			case "greeting":
				some_dialogue = greetings[Random.Range (0, greetings.Length-1)]; break;
			case "hint":
				some_dialogue = hints[Random.Range (0, hints.Length-1)]; break;
			case "misc":
				some_dialogue = misc[Random.Range (0, misc.Length-1)]; break;
			case "farewell":
				some_dialogue = farewells[Random.Range (0, farewells.Length-1)]; break;
			case "panic":
				some_dialogue = panic[Random.Range (0, panic.Length-1)]; break;
			default:
				return "";
		}
		
		/* finalize dialogue for display */
		some_dialogue = processDialogue(some_dialogue, speech_state);
		return some_dialogue;
	}
}
