#version 460

layout(location = 0)in mat4 input_v1;
layout(location = 4)in mat4 input_v2;
layout(location = 0)out mat4 output_v1;

void main()
{
    output_v1 = matrixCompMult(input_v1,input_v2);
}