using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MasikiSpawn : MonoBehaviour
{
	public GameObject Manager;

	public GameObject Masiki;
	public Transform[] TransformsMasikis;

	public GameObject MEvent;
	public Transform[] TransformsMEvent;

	public GameObject MHammer;
	public Transform[] TransformsMHammer;

	public GameObject MBazooka;
	public Transform[] TransformsMBazooka;

	public bool ActiveRespawn;

	// Use this for initialization
	void Start ()
	{
		Respawn ();
	}
	
	// Update is called once per frame
	void Update ()
	{
		if (Input.GetKeyDown ("space")) {
			Respawn ();
		}

		
	}

	void Respawn ()
	{
		Destroy ();
		SpawnMasikis ();
		SpawnMHammer ();
		SpawnMBazooka ();
		SpawnMEvent ();
	}

	void SpawnMasikis ()
	{
		foreach (Transform transformm in TransformsMasikis) {
			var masikiNew1 = Instantiate (Masiki, transformm.position, transformm.rotation, Manager.transform);
			masikiNew1.SetActive (true);
		}	
	}

	void SpawnMEvent ()
	{
		foreach (Transform transformm in TransformsMEvent) {
			var masikiNew2 = Instantiate (MEvent, transformm.position, transformm.rotation, Manager.transform);
			masikiNew2.SetActive (true);
		}	
	}

	void SpawnMHammer ()
	{
		foreach (Transform transformm in TransformsMHammer) {
			var masikiNew = Instantiate (MHammer, transformm.position, transformm.rotation, Manager.transform);
			masikiNew.SetActive (true);
		}
	}

	void SpawnMBazooka ()
	{
		foreach (Transform transformm in TransformsMBazooka) {
			var masikiNew = Instantiate (MBazooka, transformm.position, transformm.rotation, Manager.transform);
			masikiNew.SetActive (true);
		}
	}

	void Destroy ()
	{
		foreach (Transform child in Manager.transform) {
			GameObject.Destroy (child.gameObject);
		}
	}
}
