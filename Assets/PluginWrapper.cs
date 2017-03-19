using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Runtime.InteropServices;

public class PluginWrapper {
	#if UNITY_IOS
		[DllImport("__Internal")]
		private static extern void showDialog ();
	#elif UNITY_ANDROID
		[DllImport("MethodName")]
		private static extern void showDialog ();
	#endif

	public void showNativeDialog() {
		showDialog ();
	}
}
