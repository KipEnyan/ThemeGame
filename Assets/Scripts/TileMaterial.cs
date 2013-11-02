using UnityEngine;
using System.Collections;

// Tile this object's _MainTex material proportionally based on its transform's localScale
public class TileMaterial : MonoBehaviour {

    public float xScaleMultipler = 1;
    public float yScaleMultipler = 1;

	void Start () {
        float scaleX = transform.localScale.x * xScaleMultipler;
        float scaleY = transform.localScale.z * yScaleMultipler;

        renderer.material.SetTextureScale("_MainTex", new Vector2(scaleX, scaleY));
	}

}
