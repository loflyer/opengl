#version 460
layout(triangles) in;
layout(max_vertices = 4, triangle_strip) out;

out float gl_ClipDistance[2];
out float gl_CullDistance[6];

layout(location = 0) out vec4 _28;
layout(location = 0) in vec4 _31[3];

void main()
{
    gl_Position = gl_in[0].gl_Position;
    _28 = _31[0];
    gl_ClipDistance[0] = gl_in[0].gl_ClipDistance[0];
    gl_ClipDistance[1] = gl_in[0].gl_ClipDistance[1];
    float _50;
    if (gl_in[0].gl_CullDistance[0] == 0.100000001490116119384765625)
    {
        _50 = (gl_in[0].gl_Position.y < 0.0) ? (-0.5) : 0.5;
    }
    else
    {
        _50 = 0.4000000059604644775390625;
    }
	gl_CullDistance[0] = _50;
    EmitVertex();
}

