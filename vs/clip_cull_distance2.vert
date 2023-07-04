#version 450


in float clipdistance_data[1];
in float culldistance_data[8];
in vec2  position;


out float gl_CullDistance[8];

#define ASSIGN_CLIP_DISTANCE(IDX) gl_ClipDistance[IDX] = clipdistance_data[IDX]
#define ASSIGN_CULL_DISTANCE(IDX) gl_CullDistance[IDX] = culldistance_data[IDX]

/* Vertex shader main function */
void main()
{
    /* Clipdistance and culldistance array setters */
    {
        

        ASSIGN_CULL_DISTANCE(0);
        ASSIGN_CULL_DISTANCE(1);
        ASSIGN_CULL_DISTANCE(2);
        ASSIGN_CULL_DISTANCE(3);
        ASSIGN_CULL_DISTANCE(4);
        ASSIGN_CULL_DISTANCE(5);
        ASSIGN_CULL_DISTANCE(6);
        ASSIGN_CULL_DISTANCE(7);

    }
    gl_Position = vec4(2.0 * position.x - 1.0, 2.0 * position.y - 1.0, 0.0, 1.0);
}
