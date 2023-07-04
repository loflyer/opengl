#version 460 core


layout(vertices = 1) out;

in  InOutBlock {
    float inout_variable;
} inout_block[];
in   vec4  icp[gl_MaxPatchVertices][4];
layout(location=4) out float result[];
out vec4 result2[][4];
out vec4 result1[][4];

layout(xfb_buffer = 3, xfb_offset = 12) patch out float p1[4];
void main()
{
    result2[gl_InvocationID][1] = icp[gl_InvocationID][1];
    result[gl_InvocationID] = 1.0;//inout_block[gl_InvocationID].inout_variable;
    result1[gl_InvocationID][0] = icp[gl_InvocationID][0];
    result1[gl_InvocationID][1] = icp[gl_InvocationID][1];

    gl_TessLevelOuter[0] = 1.0;
    gl_TessLevelOuter[1] = 1.0;
    gl_TessLevelOuter[2] = 1.0;
    gl_TessLevelOuter[3] = 1.0;
    gl_TessLevelInner[0] = 1.0;
    gl_TessLevelInner[1] = 1.0;
    p1[0] = 4.0;
    p1[1] = 5.0;
}