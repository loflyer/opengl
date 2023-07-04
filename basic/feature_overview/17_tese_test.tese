#version 450
layout(triangles, ccw) in;

void main (void)
{
	gl_Position = vec4(gl_TessCoord.xy, 0.0, 1.0);
}
