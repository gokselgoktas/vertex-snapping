using UnityEngine;

[ExecuteInEditMode]
public class VertexSnapping : MonoBehaviour
{
    [Range(1, 16)]
    public int ScreenSpaceQuantizationFactor = 4;

    public void OnValidate()
    {
        Shader.SetGlobalFloat("_ScreenSpaceQuantizationFactor", (float)ScreenSpaceQuantizationFactor);
    }
}
