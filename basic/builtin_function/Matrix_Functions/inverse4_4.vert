#version 460

layout(location = 0)in mat4 input_v1;
layout(location = 4)in  dmat4 input_d_v1;

layout(location = 0)out mat4 output_v1;
layout(location = 4)out dmat4 output_d_v1;

void main()
{
    output_v1 = inverse(input_v1);
	
	//output_d_v1 = inverse(input_d_v1);

}