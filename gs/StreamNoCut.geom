#version 460 compatibility
layout(points) in;
layout (points, max_vertices = 1) out;

layout (stream = 0) out vec4 Fstream_position;
layout (stream = 1) out vec4 Sstream_position;

void main()
{
	if ((gl_in[0].gl_Position.x > 0.0) && (gl_in[0].gl_Position.y > 0.0))
	{
		Fstream_position = gl_in[0].gl_Position - vec4(0.1, 0.1, 0.0, 0.0);
		EmitStreamVertex(0);
		EndStreamPrimitive(0);
	}
	else
	{
		Sstream_position = gl_in[0].gl_Position + vec4(0.1, 0.3, 0.0, 0.0);
		EmitStreamVertex(1);
		//EndStreamPrimitive(1);
	}
};