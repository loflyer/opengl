#version 460 core
layout(points) in;
layout(points, max_vertices=3) out;
void main(void)
{
	gl_PointSize = 5.0;
	gl_Position = gl_in[0].gl_Position;
	EmitVertex();
	gl_Position = gl_in[0].gl_Position + vec4(0.5, 0.5, 0.0, 0.0);
	EmitVertex();
	gl_Position = gl_in[0].gl_Position + vec4(-0.4, -0.4, 0.0, 0.0);
	EmitVertex();
	EndPrimitive();
}