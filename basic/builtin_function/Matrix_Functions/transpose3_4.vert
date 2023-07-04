#version 460

layout(location = 0)in mat4x3 input_v1;
layout(location = 4)in dmat4x3 input_d_v1;

layout(location = 0)out mat3x4 output_v1;
layout(location = 3)out dmat3x4 output_d_v1;


void main()
{
    //output_v1 = transpose(input_v1);
	
	output_d_v1 = transpose(input_d_v1);
}