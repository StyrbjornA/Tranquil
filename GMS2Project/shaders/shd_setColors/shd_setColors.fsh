//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float darkR;
uniform float darkG;
uniform float darkB;
uniform float lightR;
uniform float lightG;
uniform float lightB;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	float brightness = gl_FragColor.r;
	
	if (brightness < 0.5){
		gl_FragColor.r = darkR;
		gl_FragColor.g = darkG;
		gl_FragColor.b = darkB;
	} else{
		gl_FragColor.r = lightR;
		gl_FragColor.g = lightG;
		gl_FragColor.b = lightB;
	}
}
