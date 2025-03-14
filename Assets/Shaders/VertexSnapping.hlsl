void ApplyScreenSpaceVertexSnapping_float(in float4 IN_positionSS, out float3 OUT_positionSS)
{
    float3 positionSS = float3(IN_positionSS.xy / IN_positionSS.w, IN_positionSS.z);
    float2 resolution = _ScreenParams.xy * rcp(_ScreenSpaceQuantizationFactor);

    positionSS.xy = floor(positionSS.xy * resolution) * rcp(resolution);

    OUT_positionSS = positionSS;
}
