//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D addTex;
uniform float lightMultiplier;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord ) + texture2D(addTex,v_vTexcoord) * lightMultiplier;
}
