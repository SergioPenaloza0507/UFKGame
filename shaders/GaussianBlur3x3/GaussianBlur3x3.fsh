

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float strength;
uniform vec2 texelSize;

//Convolute 3x3 kernel with pixel neighbourhood
vec4 filter3x3(sampler2D tex, vec2 uv, mat3 kernel, float offset){
	vec3 off = vec3(offset, -offset, 0.0) * vec3(texelSize, 0);
	
	vec4 m00 = texture2D(tex, uv + off.yx) * kernel[0][0];
	vec4 m01 = texture2D(tex, uv + off.zx) * kernel[1][0];
	vec4 m02 = texture2D(tex, uv + off.xx) * kernel[2][0];
	vec4 m10 = texture2D(tex, uv + off.yz) * kernel[0][1];
	vec4 m11 = texture2D(tex, uv + off.zz) * kernel[1][1];
	vec4 m12 = texture2D(tex, uv + off.zx) * kernel[2][1];
	vec4 m20 = texture2D(tex, uv + off.yy) * kernel[0][2];
	vec4 m21 = texture2D(tex, uv + off.zy) * kernel[1][2];
	vec4 m22 = texture2D(tex, uv + off.xy) * kernel[2][2];

	return m00 + m01 + m02 + m10 + m11 + m12 + m20 + m21 + m22;
}

void main()
{
	const mat3 gaussianBlur = mat3(
		0.0625, 0.125, 0.0625,
		0.125, 0.25, 0.125,
		0.0625, 0.125, 0.0625
	);
    gl_FragColor = v_vColour * filter3x3( gm_BaseTexture, v_vTexcoord,  gaussianBlur, strength);
}
