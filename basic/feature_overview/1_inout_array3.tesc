#version 460 core


layout(vertices = 1) out;

in  vec4 icp[gl_MaxPatchVertices][2];
out vec4 result2[][3];
out vec4 result1[][4];

void main()
{
    result1[gl_InvocationID][0] = icp[gl_InvocationID][0];
    result2[gl_InvocationID][1] = icp[gl_InvocationID][1];
}