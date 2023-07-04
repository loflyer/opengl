#version 440


layout (quads, point_mode, equal_spacing) in;

out vec2 result_tess_level_inner;
out vec4 result_tess_level_outer;

void main()
{
    vec4 p1 = mix(gl_in[0].gl_Position, gl_in[1].gl_Position, gl_TessCoord.x);
    vec4 p2 = mix(gl_in[2].gl_Position,gl_in[3].gl_Position,gl_TessCoord.x);
    gl_Position = mix(p1, p2, gl_TessCoord.y);

    result_tess_level_inner = vec2(gl_TessLevelInner[0],
                                   gl_TessLevelInner[1]);
    result_tess_level_outer = vec4(gl_TessLevelOuter[0],
                                   gl_TessLevelOuter[1],
                                   gl_TessLevelOuter[2],
                                   gl_TessLevelOuter[3]);
}