Shader "Custom/Diffuse"
{
    Properties
    {
        _Albedo("Albedo color", color) = (1, 1, 1, 1)
    }

    SubShader
    {
        Tags
        {
            "Queue" = "Geometry"
            "RenderType" = "Opaque"
        }

        CGPROGRAM
        #pragma surface surf Lambert
        
        float4 _Albedo;

        struct Input
        {
            float2 uv_Maintex;
        };

        void surf(Input IN, inout SurfaceOutput o)
        {
            o.Albedo = _Albedo;
        }

        ENDCG
    }
}

    