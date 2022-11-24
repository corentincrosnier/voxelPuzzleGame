//
// Simple passthrough vertex shader
//

struct vs_input{
	float3 position: POSITION;
	float2 uv: TEXCOORD0;
	float4 color: COLOR0;
	//float3 normal: NORMAL;
};

struct vs_output{
	float4 position: SV_POSITION;
	float2 uv: TEXCOORD;
	float4 color: COLOR;
};
/*
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)
*/
/*
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
*/
vs_output main(vs_input input){
    float4 object_space_pos = float4( input.position, 1.0);
    float4 finalPosition = mul(gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION],object_space_pos);
	float4 finalColor=input.color;
	float2 finalUV=input.uv;
	
	vs_output output;
	output.position=finalPosition;
	output.uv=finalUV;
	output.color=finalColor;
	
	return output;
}

/*
void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}
*/