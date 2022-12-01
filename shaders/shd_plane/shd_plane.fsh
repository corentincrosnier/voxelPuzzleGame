//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D tex;

void main()
{
	vec4 C=texture2D( gm_BaseTexture, v_vTexcoord );
	if(C.a>0.9)
		gl_FragColor=C;
	else
		gl_FragColor=v_vColour;
    //gl_FragColor = v_vColour+ texture2D( gm_BaseTexture, v_vTexcoord );
    //gl_FragColor = v_vColour;
}
