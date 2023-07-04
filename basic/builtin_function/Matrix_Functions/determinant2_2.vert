#version 460

layout(location = 0)in mat2 input_v1;

layout(location = 2)in dmat2 input_d_v1;

layout(location = 0)out float output_v1;

void main()
{
   output_v1 = determinant(input_v1);
	//output_v1 = determinant(input_d_v1);
}