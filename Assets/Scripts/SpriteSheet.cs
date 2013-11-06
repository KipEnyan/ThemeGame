using UnityEngine;
using System.Collections;

// This script is modified from http://wiki.unity3d.com/index.php/Animating_Tiled_texture
public class SpriteSheet : MonoBehaviour
{
    public bool isTalking = false; // animating
    public int _columns = 1;
    public int _rows = 1;
    public float _fps = 10;
    public int _materialNumber = 0;

    private Vector2 _size;
    private Renderer _myRenderer;
    private int _lastIndex = -1;

	private Animator npcAnimator;

    void Start () {
		npcAnimator = gameObject.GetComponent<Animator>();

        _size = new Vector2 (1.0f / _columns, 1.0f / _rows);
        GameObject base_mesh = transform.FindChild("base_mesh").gameObject;
        _myRenderer = base_mesh.renderer;
        if (_myRenderer == null)
            enabled = false;
    }

    // Update is called once per frame
    void Update() {

		isTalking = npcAnimator.GetBool("isTalking");

        int index;
        if (isTalking) {
            index = (int)(Time.timeSinceLevelLoad * _fps) % (_columns * _rows);
        } else {
            index = 0;
        }
        if (index != _lastIndex) {
            // split into horizontal and vertical index
            int uIndex = index % _columns;
            int vIndex = index / _rows;

            // build offset
            // v coordinate is the bottom of the image in opengl so we need to invert.
            Vector2 offset = new Vector2 (uIndex * _size.x, 1.0f - _size.y - vIndex * _size.y);

            _myRenderer.materials[_materialNumber].SetTextureOffset("_MainTex", offset);
            _myRenderer.materials[_materialNumber].SetTextureScale("_MainTex", _size);

            _lastIndex = index;
        }

    }
}
