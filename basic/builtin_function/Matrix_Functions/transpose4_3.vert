#version 460

layout(location = 0)in mat3x4 input_v1;
layout(location = 3)in dmat3x4 input_d_v1;

layout(location = 0)out mat4x3 output_v1;
layout(location = 4)out dmat4x3 output_d_v1;

void main()
{
    //output_v1 = transpose(input_v1);
	
	output_d_v1 = transpose(input_d_v1);
}