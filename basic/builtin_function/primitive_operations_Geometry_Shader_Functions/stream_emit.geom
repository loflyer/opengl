#version 460 core
layout(points) in;
layout(points, max_vertices=3) out;
void main(void)
{
	gl_PointSize = 5.0;
	gl_Position = gl_in[0].gl_Position;
	EmitStreamVertex(1);
	gl_Position = gl_in[0].gl_Position + vec4(0.5, 0.5, 0.0, 0.0);
	EmitStreamVertex(2);
	gl_Position = gl_in[0].gl_Position + vec4(-0.4, -0.4, 0.0, 0.0);
	EmitStreamVertex(3);
	EndStreamPrimitive(1);
	EndStreamPrimitive(2);
	EndStreamPrimitive(3);
}