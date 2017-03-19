using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Button : MonoBehaviour {
	public void clicked() {
		print ("# Button clicked.");

		PluginWrapper wrapper = new PluginWrapper ();
		wrapper.showNativeDialog ();
	}
}
