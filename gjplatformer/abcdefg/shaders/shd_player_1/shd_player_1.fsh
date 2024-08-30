
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec3 color = v_vColour.rgb;
	vec2 uv = v_vTexcoord;
	
	color.r-=0.2;
	color.g-=0.2;
	
    gl_FragColor = vec4(color,1.0)*texture2D(gm_BaseTexture,uv);
}
