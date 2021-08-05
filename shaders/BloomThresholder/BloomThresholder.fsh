//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float threshold;
uniform float softKnee;


void main()
{
	vec4 col = texture2D( gm_BaseTexture, v_vTexcoord );
    gl_FragColor = v_vColour * col * smoothstep(threshold - softKnee, threshold, dot(col.xyz, vec3(0.299, 0.587,0.114)));
}
