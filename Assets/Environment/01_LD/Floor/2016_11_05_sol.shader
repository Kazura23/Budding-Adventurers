// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.25 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.25;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|diff-6739-OUT;n:type:ShaderForge.SFN_Tex2d,id:6493,x:31816,y:32832,ptovrint:False,ptlb:horizontal,ptin:_horizontal,varname:node_6493,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4b3116ea36b17834fb3f1f3dcbb21fa7,ntxv:0,isnm:False|UVIN-1140-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:7423,x:31816,y:33029,ptovrint:False,ptlb:vertical,ptin:_vertical,varname:node_7423,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:8e4e05d213ce8434292c770d395cd544,ntxv:0,isnm:False|UVIN-4000-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:8788,x:30897,y:33319,ptovrint:False,ptlb:noise,ptin:_noise,varname:node_8788,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:6739,x:32262,y:32987,varname:node_6739,prsc:2|A-6493-RGB,B-7423-RGB,T-7662-OUT;n:type:ShaderForge.SFN_TexCoord,id:1340,x:30862,y:32987,varname:node_1340,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRange,id:1014,x:31079,y:32968,varname:node_1014,prsc:2,frmn:0,frmx:1,tomn:-5,tomx:1|IN-1340-UVOUT;n:type:ShaderForge.SFN_Rotator,id:1140,x:31483,y:32737,varname:node_1140,prsc:2|UVIN-1014-OUT,ANG-4795-OUT;n:type:ShaderForge.SFN_Slider,id:4795,x:30974,y:32805,ptovrint:False,ptlb:rotation horizontale,ptin:_rotationhorizontale,varname:node_4795,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.105143,max:1;n:type:ShaderForge.SFN_Slider,id:80,x:31624,y:33442,ptovrint:False,ptlb:saturation,ptin:_saturation,varname:node_80,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:10;n:type:ShaderForge.SFN_Power,id:5766,x:31524,y:33300,varname:node_5766,prsc:2|VAL-8788-RGB,EXP-8999-OUT;n:type:ShaderForge.SFN_Slider,id:8999,x:31060,y:33378,ptovrint:False,ptlb:texture,ptin:_texture,varname:node_8999,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:4.7044,max:7;n:type:ShaderForge.SFN_Multiply,id:9514,x:31840,y:33229,varname:node_9514,prsc:2|A-5766-OUT,B-80-OUT;n:type:ShaderForge.SFN_Clamp01,id:7662,x:32001,y:33160,varname:node_7662,prsc:2|IN-9514-OUT;n:type:ShaderForge.SFN_Slider,id:4260,x:31001,y:33167,ptovrint:False,ptlb:rotation verticale,ptin:_rotationverticale,varname:node_4260,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:-0.6447347,max:-1;n:type:ShaderForge.SFN_Rotator,id:4000,x:31427,y:33093,varname:node_4000,prsc:2|UVIN-1014-OUT,ANG-4260-OUT;proporder:6493-7423-8788-4795-80-8999-4260;pass:END;sub:END;*/

Shader "Shader Forge/2016_11_05_sol" {
    Properties {
        _horizontal ("horizontal", 2D) = "white" {}
        _vertical ("vertical", 2D) = "white" {}
        _noise ("noise", 2D) = "white" {}
        _rotationhorizontale ("rotation horizontale", Range(0, 1)) = 0.105143
        _saturation ("saturation", Range(0, 10)) = 10
        _texture ("texture", Range(0, 7)) = 4.7044
        _rotationverticale ("rotation verticale", Range(0, -1)) = -0.6447347
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
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
            uniform sampler2D _horizontal; uniform float4 _horizontal_ST;
            uniform sampler2D _vertical; uniform float4 _vertical_ST;
            uniform sampler2D _noise; uniform float4 _noise_ST;
            uniform float _rotationhorizontale;
            uniform float _saturation;
            uniform float _texture;
            uniform float _rotationverticale;
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
                float node_1140_ang = _rotationhorizontale;
                float node_1140_spd = 1.0;
                float node_1140_cos = cos(node_1140_spd*node_1140_ang);
                float node_1140_sin = sin(node_1140_spd*node_1140_ang);
                float2 node_1140_piv = float2(0.5,0.5);
                float2 node_1014 = (i.uv0*6.0+-5.0);
                float2 node_1140 = (mul(node_1014-node_1140_piv,float2x2( node_1140_cos, -node_1140_sin, node_1140_sin, node_1140_cos))+node_1140_piv);
                float4 _horizontal_var = tex2D(_horizontal,TRANSFORM_TEX(node_1140, _horizontal));
                float node_4000_ang = _rotationverticale;
                float node_4000_spd = 1.0;
                float node_4000_cos = cos(node_4000_spd*node_4000_ang);
                float node_4000_sin = sin(node_4000_spd*node_4000_ang);
                float2 node_4000_piv = float2(0.5,0.5);
                float2 node_4000 = (mul(node_1014-node_4000_piv,float2x2( node_4000_cos, -node_4000_sin, node_4000_sin, node_4000_cos))+node_4000_piv);
                float4 _vertical_var = tex2D(_vertical,TRANSFORM_TEX(node_4000, _vertical));
                float4 _noise_var = tex2D(_noise,TRANSFORM_TEX(i.uv0, _noise));
                float3 diffuseColor = lerp(_horizontal_var.rgb,_vertical_var.rgb,saturate((pow(_noise_var.rgb,_texture)*_saturation)));
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
            uniform sampler2D _horizontal; uniform float4 _horizontal_ST;
            uniform sampler2D _vertical; uniform float4 _vertical_ST;
            uniform sampler2D _noise; uniform float4 _noise_ST;
            uniform float _rotationhorizontale;
            uniform float _saturation;
            uniform float _texture;
            uniform float _rotationverticale;
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
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float node_1140_ang = _rotationhorizontale;
                float node_1140_spd = 1.0;
                float node_1140_cos = cos(node_1140_spd*node_1140_ang);
                float node_1140_sin = sin(node_1140_spd*node_1140_ang);
                float2 node_1140_piv = float2(0.5,0.5);
                float2 node_1014 = (i.uv0*6.0+-5.0);
                float2 node_1140 = (mul(node_1014-node_1140_piv,float2x2( node_1140_cos, -node_1140_sin, node_1140_sin, node_1140_cos))+node_1140_piv);
                float4 _horizontal_var = tex2D(_horizontal,TRANSFORM_TEX(node_1140, _horizontal));
                float node_4000_ang = _rotationverticale;
                float node_4000_spd = 1.0;
                float node_4000_cos = cos(node_4000_spd*node_4000_ang);
                float node_4000_sin = sin(node_4000_spd*node_4000_ang);
                float2 node_4000_piv = float2(0.5,0.5);
                float2 node_4000 = (mul(node_1014-node_4000_piv,float2x2( node_4000_cos, -node_4000_sin, node_4000_sin, node_4000_cos))+node_4000_piv);
                float4 _vertical_var = tex2D(_vertical,TRANSFORM_TEX(node_4000, _vertical));
                float4 _noise_var = tex2D(_noise,TRANSFORM_TEX(i.uv0, _noise));
                float3 diffuseColor = lerp(_horizontal_var.rgb,_vertical_var.rgb,saturate((pow(_noise_var.rgb,_texture)*_saturation)));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
