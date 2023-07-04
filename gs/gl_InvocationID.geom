#version 460 core
layout(lines) in;
layout(line_strip, max_vertices=2) out;

out vec4 gColor;
in VS_OUT {
      vec4 oColor;
} gs_in[];

void main(void)
{
	gl_Position = gl_in[gl_InvocationID].gl_Position;
	gColor = gs_in[gl_InvocationID].oColor;
	EmitVertex();

	gl_Position = gl_in[gl_InvocationID].gl_Position + vec4(-0.2, 0.0, 0.0, 0.0);
	gColor = gs_in[gl_InvocationID].oColor;
	EmitVertex();

	EndPrimitive();
}