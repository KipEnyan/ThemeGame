using UnityEngine;
using System.Collections;

public class AvatarControl : MonoBehaviour {

	protected Animator animator;

	void Start ()
	{
		animator = GetComponent<Animator>();
	}

	void Update ()
	{
		if(animator)
		{
			if(Input.GetButton("Fire1")) {
				animator.SetBool("isStabbing", true);
			} else {
				animator.SetBool("isStabbing", false);
			}
		}
	}
}