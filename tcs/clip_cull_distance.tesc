#version 450


layout(vertices = 2) out;

out gl_PerVertex {

float gl_CullDistance[8];
vec4 gl_Position;
} gl_out[];

#define ASSIGN_CLIP_DISTANCE(IDX) gl_out[gl_InvocationID].gl_ClipDistance[IDX] = gl_in[gl_InvocationID].gl_ClipDistance[IDX]
#define ASSIGN_CULL_DISTANCE(IDX) gl_out[gl_InvocationID].gl_CullDistance[IDX] = gl_in[gl_InvocationID].gl_CullDistance[IDX]

/* Tesselation control shader main function */
void main()
{
    gl_TessLevelInner[0] = 1.0;
    gl_TessLevelInner[1] = 1.0;
    gl_TessLevelOuter[0] = 1.0;
    gl_TessLevelOuter[1] = 1.0;
    gl_TessLevelOuter[2] = 1.0;
    gl_TessLevelOuter[3] = 1.0;
    /* Clipdistance and culldistance array setters */
    {
        ASSIGN_CULL_DISTANCE(1);
        ASSIGN_CULL_DISTANCE(7);

    }
    gl_out[gl_InvocationID].gl_Position = gl_in[gl_InvocationID].gl_Position;
}
