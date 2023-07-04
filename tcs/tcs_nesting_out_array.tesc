#version 430 core


layout(vertices = 2) out;

in  InOutBlock {
    vec4 inout_variable;
} inout_block[][3][2];

out vec4 result[][3][2];

void main()
{
    result[gl_InvocationID][0][0] = inout_block[gl_InvocationID][0][0].inout_variable;
    result[gl_InvocationID][1][0] = inout_block[gl_InvocationID][1][0].inout_variable;
    result[gl_InvocationID][2][1] = inout_block[gl_InvocationID][2][1].inout_variable;

    gl_TessLevelOuter[0] = 1.0;
    gl_TessLevelOuter[1] = 1.0;
    gl_TessLevelOuter[2] = 1.0;
    gl_TessLevelOuter[3] = 1.0;
    gl_TessLevelInner[0] = 1.0;
    gl_TessLevelInner[1] = 1.0;
}