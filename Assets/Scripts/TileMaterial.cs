using UnityEngine;
using System.Collections;

// Tile this object's _MainTex material proportionally based on its transform's localScale
// set proportionalScale to manually set tiling numbers, independent of localScale
public class TileMaterial : MonoBehaviour {

    public float xScaleMultipler = 1;
    public float yScaleMultipler = 1;
    public bool proportionalScale = true;

	void Start () {
        float scaleX, scaleY;
        if (proportionalScale) {
            scaleX = transform.localScale.x * xScaleMultipler;
            scaleY = transform.localScale.z * yScaleMultipler;
        } else {
            scaleX = xScaleMultipler;
            scaleY = yScaleMultipler;
        }

        renderer.material.SetTextureScale("_MainTex", new Vector2(scaleX, scaleY));
	}

}
