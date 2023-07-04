#version 460

layout(location = 0)in dmat4x3 input_v1;
layout(location = 4)in dmat4x3 input_v2;
layout(location = 0)out dmat4x3 output_v1;

void main()
{
    output_v1 = matrixCompMult(input_v1,input_v2);
}