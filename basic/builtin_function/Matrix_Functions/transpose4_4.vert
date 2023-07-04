#version 460

layout(location = 0)in mat4 input_v1;
layout(location = 4)in mat2 input_v2;
layout(location = 6)in dmat3 input_v3;

layout(location = 0)out mat4 output_v1;
layout(location = 4)out mat2 output_v2;
layout(location = 6)out dmat3 output_v3;

void main()
{
    //output_v1 = transpose(input_v1);
	
	//output_v2 = transpose(input_v2);
	
	output_v3 = transpose(input_v3);
}