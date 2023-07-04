#version 450


float f(int i)
{
    return 0.0;
}

in vec4 position;

void main()
{
    gl_ClipDistance[5] = 2.0;
    gl_ClipDistance[0] = 1.0;

    gl_Position  = position;
}
