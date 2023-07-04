#version 460

layout(location = 0)in mat4 input_v1;

layout(location = 4)in dmat4 input_dv1;

layout(location = 0)out float output_v1;

void main()
{
    output_v1 = determinant(input_v1);
	
	//output_v1 = determinant(input_dv1);
}