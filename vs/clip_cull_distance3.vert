#version 450


float f(int i)
{
    return 0.0;
}

in vec4 position;

out float gl_CullDistance[5];

void main()
{
    gl_ClipDistance[0] = 0.0;
    gl_ClipDistance[1] = 1.0;

    gl_CullDistance[0] = 0.0;
    gl_CullDistance[1] = 1.0;
    gl_CullDistance[4] = 5.0;

    gl_Position  = position;
}
