#version 430 core


layout(vertices = 2) out;

in  InOutBlock {
    float inout_variable;
} inout_block[][3][2];
out float result[];

void main()
{
    result[gl_InvocationID] = inout_block[gl_InvocationID][1][0].inout_variable;
    gl_TessLevelOuter[0] = 1.0;
    gl_TessLevelOuter[1] = 1.0;
    gl_TessLevelOuter[2] = 1.0;
    gl_TessLevelOuter[3] = 1.0;
    gl_TessLevelInner[0] = 1.0;
    gl_TessLevelInner[1] = 1.0;
}