#version 460

layout(location = 0)in mat3 input_v1;
layout(location = 3)in  dmat3 input_d_v1;

layout(location = 0 )out mat3 output_v1;
layout(location = 3)out dmat3 output_d_v1;

void main()
{
    output_v1 = inverse(input_v1);
	
	//output_d_v1 = inverse(input_d_v1);
}