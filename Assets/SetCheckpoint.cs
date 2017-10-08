using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetCheckpoint : MonoBehaviour {

    public int checkpointNumber;
	// Use this for initialization
	void OnTriggerEnter(Collider col)
    {
        if (col.tag.Contains("Player"))
        {
            CheckPointManager.Singleton.CheckpointNumber = checkpointNumber;
        }
    }
}
