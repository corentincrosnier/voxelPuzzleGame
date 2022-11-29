//
// Simple passthrough fragment shader
//

#extension GL_OES_standard_derivatives : enable

//varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	//float cx=dFdx(v_vColour.r);
	//float cy=dFdx(v_vColour.r);
	//vec4 fw=fwidth(v_vColour);
    gl_FragColor = v_vColour;
    //gl_FragColor = fw;
}
