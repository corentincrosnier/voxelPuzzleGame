//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D tex;

void main()
{
    gl_FragColor = v_vColour+texture2D( gm_BaseTexture, v_vTexcoord );
    //gl_FragColor = v_vColour;
}
