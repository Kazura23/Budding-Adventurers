// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.25 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.25;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|diff-6433-OUT;n:type:ShaderForge.SFN_Panner,id:3117,x:30733,y:32116,varname:node_3117,prsc:2,spu:0,spv:0.1|UVIN-6218-OUT;n:type:ShaderForge.SFN_Tex2d,id:8023,x:31037,y:32114,ptovrint:False,ptlb:water1,ptin:_water1,varname:node_8023,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:cc57be46fc7df2644b7c598b9d637a03,ntxv:0,isnm:False|UVIN-3117-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:8833,x:30976,y:32335,ptovrint:False,ptlb:water2,ptin:_water2,varname:node_8833,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:72dc54d3fa24f1f4888583ca796b7ee6,ntxv:0,isnm:False|UVIN-6441-UVOUT;n:type:ShaderForge.SFN_Panner,id:8081,x:30601,y:32326,varname:node_8081,prsc:2,spu:0,spv:0.2|UVIN-6218-OUT;n:type:ShaderForge.SFN_Add,id:2205,x:31775,y:32248,varname:node_2205,prsc:2|A-8023-RGB,B-8833-A;n:type:ShaderForge.SFN_Tex2d,id:7465,x:30670,y:33715,ptovrint:False,ptlb:noise,ptin:_noise,varname:node_7465,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-2675-OUT;n:type:ShaderForge.SFN_Tex2d,id:1108,x:31086,y:32975,ptovrint:False,ptlb:water3,ptin:_water3,varname:node_1108,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6a7401b932cc9af4b809d0e0c33b7628,ntxv:0,isnm:False|UVIN-7613-OUT;n:type:ShaderForge.SFN_Lerp,id:2215,x:31786,y:32889,varname:node_2215,prsc:2|A-8023-RGB,B-9745-OUT,T-9639-OUT;n:type:ShaderForge.SFN_Panner,id:8643,x:30184,y:33139,varname:node_8643,prsc:2,spu:0,spv:-0.2|UVIN-2331-OUT;n:type:ShaderForge.SFN_Power,id:9639,x:31020,y:33738,varname:node_9639,prsc:2|VAL-7465-RGB,EXP-7631-OUT;n:type:ShaderForge.SFN_Slider,id:7631,x:30367,y:33992,ptovrint:False,ptlb:opacite poisson,ptin:_opacitepoisson,varname:node_7631,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.356775,max:10;n:type:ShaderForge.SFN_Lerp,id:3052,x:31392,y:32972,varname:node_3052,prsc:2|A-8023-RGB,B-1108-RGB,T-1108-A;n:type:ShaderForge.SFN_Blend,id:6433,x:32028,y:32754,varname:node_6433,prsc:2,blmd:12,clmp:True|SRC-2205-OUT,DST-2215-OUT;n:type:ShaderForge.SFN_TexCoord,id:8379,x:27928,y:32454,varname:node_8379,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:2675,x:30123,y:33783,varname:node_2675,prsc:2|A-6218-OUT,B-8509-OUT;n:type:ShaderForge.SFN_Vector1,id:8509,x:29914,y:33926,varname:node_8509,prsc:2,v1:-4;n:type:ShaderForge.SFN_Rotator,id:6441,x:30794,y:32377,varname:node_6441,prsc:2|UVIN-8081-UVOUT,ANG-21-OUT;n:type:ShaderForge.SFN_Slider,id:21,x:30658,y:32528,ptovrint:False,ptlb:eau superieure,ptin:_eausuperieure,varname:node_21,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.353139,max:1;n:type:ShaderForge.SFN_Sin,id:566,x:29310,y:33157,varname:node_566,prsc:2|IN-2514-OUT;n:type:ShaderForge.SFN_Multiply,id:2514,x:29133,y:33135,varname:node_2514,prsc:2|A-7406-OUT,B-6218-G;n:type:ShaderForge.SFN_Add,id:712,x:29754,y:33177,varname:node_712,prsc:2|A-7928-OUT,B-6218-R;n:type:ShaderForge.SFN_Multiply,id:7928,x:29531,y:33088,varname:node_7928,prsc:2|A-8716-OUT,B-566-OUT;n:type:ShaderForge.SFN_Slider,id:8716,x:29133,y:33029,ptovrint:False,ptlb:courbe,ptin:_courbe,varname:node_8716,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1574997,max:1;n:type:ShaderForge.SFN_Append,id:2331,x:29981,y:33101,varname:node_2331,prsc:2|A-712-OUT,B-6218-G;n:type:ShaderForge.SFN_Slider,id:7406,x:28735,y:33007,ptovrint:False,ptlb:amplitude courbe,ptin:_amplitudecourbe,varname:node_7406,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.54552,max:20;n:type:ShaderForge.SFN_Multiply,id:7613,x:30687,y:33035,varname:node_7613,prsc:2|A-8643-UVOUT,B-8068-OUT;n:type:ShaderForge.SFN_Slider,id:8068,x:30472,y:33219,ptovrint:False,ptlb:taille poissons,ptin:_taillepoissons,varname:node_8068,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.5105,max:20;n:type:ShaderForge.SFN_Lerp,id:9745,x:31588,y:33120,varname:node_9745,prsc:2|A-3052-OUT,B-4780-RGB,T-4780-A;n:type:ShaderForge.SFN_Tex2d,id:4780,x:30914,y:33360,ptovrint:False,ptlb:node_4780,ptin:_node_4780,varname:node_4780,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6a7401b932cc9af4b809d0e0c33b7628,ntxv:0,isnm:False|UVIN-5182-UVOUT;n:type:ShaderForge.SFN_Multiply,id:9930,x:29119,y:33400,varname:node_9930,prsc:2|A-9776-OUT,B-6218-G;n:type:ShaderForge.SFN_Slider,id:9776,x:28683,y:33517,ptovrint:False,ptlb:amplitude courbe 2,ptin:_amplitudecourbe2,varname:node_9776,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.291663,max:20;n:type:ShaderForge.SFN_Sin,id:3549,x:29366,y:33400,varname:node_3549,prsc:2|IN-9930-OUT;n:type:ShaderForge.SFN_Multiply,id:9264,x:29573,y:33400,varname:node_9264,prsc:2|A-9652-OUT,B-3549-OUT;n:type:ShaderForge.SFN_Slider,id:9652,x:29231,y:33330,ptovrint:False,ptlb:courbe2,ptin:_courbe2,varname:node_9652,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1137283,max:1;n:type:ShaderForge.SFN_Add,id:1576,x:29810,y:33473,varname:node_1576,prsc:2|A-9264-OUT,B-6218-R;n:type:ShaderForge.SFN_Append,id:2347,x:30059,y:33407,varname:node_2347,prsc:2|A-1576-OUT,B-6218-G;n:type:ShaderForge.SFN_Panner,id:691,x:30234,y:33407,varname:node_691,prsc:2,spu:0,spv:-0.1|UVIN-2347-OUT;n:type:ShaderForge.SFN_Multiply,id:988,x:30550,y:33383,varname:node_988,prsc:2|A-691-UVOUT,B-1127-OUT;n:type:ShaderForge.SFN_Slider,id:1127,x:30309,y:33572,ptovrint:False,ptlb:taille poisson 2,ptin:_taillepoisson2,varname:node_1127,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.12693,max:20;n:type:ShaderForge.SFN_Rotator,id:5182,x:30762,y:33549,varname:node_5182,prsc:2|UVIN-988-OUT,ANG-2272-OUT;n:type:ShaderForge.SFN_Slider,id:2272,x:30309,y:33654,ptovrint:False,ptlb:deplacement banc2,ptin:_deplacementbanc2,varname:node_2272,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.05395456,max:1;n:type:ShaderForge.SFN_Multiply,id:3558,x:28230,y:32701,varname:node_3558,prsc:2|A-8379-UVOUT,B-8171-OUT;n:type:ShaderForge.SFN_Slider,id:8171,x:27836,y:32700,ptovrint:False,ptlb:scale,ptin:_scale,varname:node_8171,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_ComponentMask,id:6218,x:28386,y:32671,varname:node_6218,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3558-OUT;proporder:8023-8833-7465-1108-7631-21-8716-7406-8068-4780-9776-9652-1127-2272-8171;pass:END;sub:END;*/

Shader "Shader Forge/WaterShader" {
    Properties {
        _water1 ("water1", 2D) = "white" {}
        _water2 ("water2", 2D) = "white" {}
        _noise ("noise", 2D) = "white" {}
        _water3 ("water3", 2D) = "white" {}
        _opacitepoisson ("opacite poisson", Range(0, 10)) = 2.356775
        _eausuperieure ("eau superieure", Range(0, 1)) = 0.353139
        _courbe ("courbe", Range(0, 1)) = 0.1574997
        _amplitudecourbe ("amplitude courbe", Range(0, 20)) = 2.54552
        _taillepoissons ("taille poissons", Range(0, 20)) = 1.5105
        _node_4780 ("node_4780", 2D) = "white" {}
        _amplitudecourbe2 ("amplitude courbe 2", Range(0, 20)) = 2.291663
        _courbe2 ("courbe2", Range(0, 1)) = 0.1137283
        _taillepoisson2 ("taille poisson 2", Range(0, 20)) = 2.12693
        _deplacementbanc2 ("deplacement banc2", Range(0, 1)) = 0.05395456
        _scale ("scale", Range(0, 10)) = 1
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
            uniform float4 _TimeEditor;
            uniform sampler2D _water1; uniform float4 _water1_ST;
            uniform sampler2D _water2; uniform float4 _water2_ST;
            uniform sampler2D _noise; uniform float4 _noise_ST;
            uniform sampler2D _water3; uniform float4 _water3_ST;
            uniform float _opacitepoisson;
            uniform float _eausuperieure;
            uniform float _courbe;
            uniform float _amplitudecourbe;
            uniform float _taillepoissons;
            uniform sampler2D _node_4780; uniform float4 _node_4780_ST;
            uniform float _amplitudecourbe2;
            uniform float _courbe2;
            uniform float _taillepoisson2;
            uniform float _deplacementbanc2;
            uniform float _scale;
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
                float4 node_5429 = _Time + _TimeEditor;
                float2 node_6218 = (i.uv0*_scale).rg;
                float2 node_3117 = (node_6218+node_5429.g*float2(0,0.1));
                float4 _water1_var = tex2D(_water1,TRANSFORM_TEX(node_3117, _water1));
                float node_6441_ang = _eausuperieure;
                float node_6441_spd = 1.0;
                float node_6441_cos = cos(node_6441_spd*node_6441_ang);
                float node_6441_sin = sin(node_6441_spd*node_6441_ang);
                float2 node_6441_piv = float2(0.5,0.5);
                float2 node_6441 = (mul((node_6218+node_5429.g*float2(0,0.2))-node_6441_piv,float2x2( node_6441_cos, -node_6441_sin, node_6441_sin, node_6441_cos))+node_6441_piv);
                float4 _water2_var = tex2D(_water2,TRANSFORM_TEX(node_6441, _water2));
                float2 node_7613 = ((float2(((_courbe*sin((_amplitudecourbe*node_6218.g)))+node_6218.r),node_6218.g)+node_5429.g*float2(0,-0.2))*_taillepoissons);
                float4 _water3_var = tex2D(_water3,TRANSFORM_TEX(node_7613, _water3));
                float node_5182_ang = _deplacementbanc2;
                float node_5182_spd = 1.0;
                float node_5182_cos = cos(node_5182_spd*node_5182_ang);
                float node_5182_sin = sin(node_5182_spd*node_5182_ang);
                float2 node_5182_piv = float2(0.5,0.5);
                float2 node_5182 = (mul(((float2(((_courbe2*sin((_amplitudecourbe2*node_6218.g)))+node_6218.r),node_6218.g)+node_5429.g*float2(0,-0.1))*_taillepoisson2)-node_5182_piv,float2x2( node_5182_cos, -node_5182_sin, node_5182_sin, node_5182_cos))+node_5182_piv);
                float4 _node_4780_var = tex2D(_node_4780,TRANSFORM_TEX(node_5182, _node_4780));
                float2 node_2675 = (node_6218*(-4.0));
                float4 _noise_var = tex2D(_noise,TRANSFORM_TEX(node_2675, _noise));
                float3 diffuseColor = saturate(((_water1_var.rgb+_water2_var.a) > 0.5 ?  (1.0-(1.0-2.0*((_water1_var.rgb+_water2_var.a)-0.5))*(1.0-lerp(_water1_var.rgb,lerp(lerp(_water1_var.rgb,_water3_var.rgb,_water3_var.a),_node_4780_var.rgb,_node_4780_var.a),pow(_noise_var.rgb,_opacitepoisson)))) : (2.0*(_water1_var.rgb+_water2_var.a)*lerp(_water1_var.rgb,lerp(lerp(_water1_var.rgb,_water3_var.rgb,_water3_var.a),_node_4780_var.rgb,_node_4780_var.a),pow(_noise_var.rgb,_opacitepoisson)))) );
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
            uniform sampler2D _water1; uniform float4 _water1_ST;
            uniform sampler2D _water2; uniform float4 _water2_ST;
            uniform sampler2D _noise; uniform float4 _noise_ST;
            uniform sampler2D _water3; uniform float4 _water3_ST;
            uniform float _opacitepoisson;
            uniform float _eausuperieure;
            uniform float _courbe;
            uniform float _amplitudecourbe;
            uniform float _taillepoissons;
            uniform sampler2D _node_4780; uniform float4 _node_4780_ST;
            uniform float _amplitudecourbe2;
            uniform float _courbe2;
            uniform float _taillepoisson2;
            uniform float _deplacementbanc2;
            uniform float _scale;
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
                float4 node_532 = _Time + _TimeEditor;
                float2 node_6218 = (i.uv0*_scale).rg;
                float2 node_3117 = (node_6218+node_532.g*float2(0,0.1));
                float4 _water1_var = tex2D(_water1,TRANSFORM_TEX(node_3117, _water1));
                float node_6441_ang = _eausuperieure;
                float node_6441_spd = 1.0;
                float node_6441_cos = cos(node_6441_spd*node_6441_ang);
                float node_6441_sin = sin(node_6441_spd*node_6441_ang);
                float2 node_6441_piv = float2(0.5,0.5);
                float2 node_6441 = (mul((node_6218+node_532.g*float2(0,0.2))-node_6441_piv,float2x2( node_6441_cos, -node_6441_sin, node_6441_sin, node_6441_cos))+node_6441_piv);
                float4 _water2_var = tex2D(_water2,TRANSFORM_TEX(node_6441, _water2));
                float2 node_7613 = ((float2(((_courbe*sin((_amplitudecourbe*node_6218.g)))+node_6218.r),node_6218.g)+node_532.g*float2(0,-0.2))*_taillepoissons);
                float4 _water3_var = tex2D(_water3,TRANSFORM_TEX(node_7613, _water3));
                float node_5182_ang = _deplacementbanc2;
                float node_5182_spd = 1.0;
                float node_5182_cos = cos(node_5182_spd*node_5182_ang);
                float node_5182_sin = sin(node_5182_spd*node_5182_ang);
                float2 node_5182_piv = float2(0.5,0.5);
                float2 node_5182 = (mul(((float2(((_courbe2*sin((_amplitudecourbe2*node_6218.g)))+node_6218.r),node_6218.g)+node_532.g*float2(0,-0.1))*_taillepoisson2)-node_5182_piv,float2x2( node_5182_cos, -node_5182_sin, node_5182_sin, node_5182_cos))+node_5182_piv);
                float4 _node_4780_var = tex2D(_node_4780,TRANSFORM_TEX(node_5182, _node_4780));
                float2 node_2675 = (node_6218*(-4.0));
                float4 _noise_var = tex2D(_noise,TRANSFORM_TEX(node_2675, _noise));
                float3 diffuseColor = saturate(((_water1_var.rgb+_water2_var.a) > 0.5 ?  (1.0-(1.0-2.0*((_water1_var.rgb+_water2_var.a)-0.5))*(1.0-lerp(_water1_var.rgb,lerp(lerp(_water1_var.rgb,_water3_var.rgb,_water3_var.a),_node_4780_var.rgb,_node_4780_var.a),pow(_noise_var.rgb,_opacitepoisson)))) : (2.0*(_water1_var.rgb+_water2_var.a)*lerp(_water1_var.rgb,lerp(lerp(_water1_var.rgb,_water3_var.rgb,_water3_var.a),_node_4780_var.rgb,_node_4780_var.a),pow(_noise_var.rgb,_opacitepoisson)))) );
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
