//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
//attribute vec2 in_TextureCoord;              // (u,v)

//varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform mat4 objectTransform;


void main()
{
	vec3 lightDir=normalize(vec3(2.0,-1.0,1.0));
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position =  gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * objectTransform * object_space_pos;
    
    v_vColour =vec4( in_Colour.xyz*max(dot(in_Normal,lightDir),0.0)+in_Colour.xyz*0.2,0.1);
    //v_vTexcoord = in_TextureCoord;
}
