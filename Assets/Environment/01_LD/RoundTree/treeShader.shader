// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.25 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.25;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|diff-4806-RGB,clip-7579-R,voffset-5540-OUT;n:type:ShaderForge.SFN_Tex2d,id:4806,x:31861,y:32864,ptovrint:False,ptlb:node_4806,ptin:_node_4806,varname:node_4806,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:854deaaf973d0bf4ab65219820fa597e,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7579,x:32095,y:32981,ptovrint:False,ptlb:node_7579,ptin:_node_7579,varname:node_7579,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:fee5a88f9f1c66f48890adc9fbbeac15,ntxv:2,isnm:False;n:type:ShaderForge.SFN_TexCoord,id:5750,x:31364,y:33362,varname:node_5750,prsc:2,uv:0;n:type:ShaderForge.SFN_Sin,id:9135,x:32095,y:33197,varname:node_9135,prsc:2|IN-826-OUT;n:type:ShaderForge.SFN_Time,id:2264,x:31380,y:33179,varname:node_2264,prsc:2;n:type:ShaderForge.SFN_Add,id:826,x:31870,y:33223,varname:node_826,prsc:2|A-1026-OUT,B-5931-OUT;n:type:ShaderForge.SFN_Multiply,id:5540,x:32336,y:33211,varname:node_5540,prsc:2|A-9135-OUT,B-7395-OUT;n:type:ShaderForge.SFN_Slider,id:7395,x:31961,y:33408,ptovrint:False,ptlb:amplitude,ptin:_amplitude,varname:node_7395,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.009427897,max:0.1;n:type:ShaderForge.SFN_Multiply,id:5931,x:31723,y:33387,varname:node_5931,prsc:2|A-5750-U,B-1896-OUT;n:type:ShaderForge.SFN_Slider,id:1896,x:31252,y:33547,ptovrint:False,ptlb:taille des vagues,ptin:_tailledesvagues,varname:node_1896,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:5,max:5;n:type:ShaderForge.SFN_Slider,id:9614,x:31291,y:33077,ptovrint:False,ptlb:temps,ptin:_temps,varname:node_9614,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.468058,max:5;n:type:ShaderForge.SFN_Multiply,id:1026,x:31704,y:33140,varname:node_1026,prsc:2|A-9614-OUT,B-2264-T;proporder:4806-7579-7395-1896-9614;pass:END;sub:END;*/

Shader "Shader Forge/2016_11_10_bush" {
    Properties {
        _node_4806 ("node_4806", 2D) = "white" {}
        _node_7579 ("node_7579", 2D) = "black" {}
        _amplitude ("amplitude", Range(0, 0.1)) = 0.009427897
        _tailledesvagues ("taille des vagues", Range(1, 5)) = 5
        _temps ("temps", Range(0, 5)) = 1.468058
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _node_4806; uniform float4 _node_4806_ST;
            uniform sampler2D _node_7579; uniform float4 _node_7579_ST;
            uniform float _amplitude;
            uniform float _tailledesvagues;
            uniform float _temps;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_2264 = _Time + _TimeEditor;
                float node_5540 = (sin(((_temps*node_2264.g)+(o.uv0.r*_tailledesvagues)))*_amplitude);
                v.vertex.xyz += float3(node_5540,node_5540,node_5540);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float4 _node_7579_var = tex2D(_node_7579,TRANSFORM_TEX(i.uv0, _node_7579));
                clip(_node_7579_var.r - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _node_4806_var = tex2D(_node_4806,TRANSFORM_TEX(i.uv0, _node_4806));
                float3 diffuseColor = _node_4806_var.rgb;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _node_4806; uniform float4 _node_4806_ST;
            uniform sampler2D _node_7579; uniform float4 _node_7579_ST;
            uniform float _amplitude;
            uniform float _tailledesvagues;
            uniform float _temps;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_2264 = _Time + _TimeEditor;
                float node_5540 = (sin(((_temps*node_2264.g)+(o.uv0.r*_tailledesvagues)))*_amplitude);
                v.vertex.xyz += float3(node_5540,node_5540,node_5540);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float4 _node_7579_var = tex2D(_node_7579,TRANSFORM_TEX(i.uv0, _node_7579));
                clip(_node_7579_var.r - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _node_4806_var = tex2D(_node_4806,TRANSFORM_TEX(i.uv0, _node_4806));
                float3 diffuseColor = _node_4806_var.rgb;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _node_7579; uniform float4 _node_7579_ST;
            uniform float _amplitude;
            uniform float _tailledesvagues;
            uniform float _temps;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 node_2264 = _Time + _TimeEditor;
                float node_5540 = (sin(((_temps*node_2264.g)+(o.uv0.r*_tailledesvagues)))*_amplitude);
                v.vertex.xyz += float3(node_5540,node_5540,node_5540);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _node_7579_var = tex2D(_node_7579,TRANSFORM_TEX(i.uv0, _node_7579));
                clip(_node_7579_var.r - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
