using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CheckPointManager : MonoBehaviour {

    public static CheckPointManager Singleton;

    public Transform[] Checkpoints;
    public int CheckpointNumber;
	// Use this for initialization
	void Awake () {
		if(Singleton == null)
        {
            Singleton = this;
        } else
        {
            Destroy(this);
        }
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
