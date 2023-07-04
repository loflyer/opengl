#version 460

in  uint input_v1;
out vec4 output_v1;

void main()
{
   	output_v1 = unpackSnorm4x8(input_v1);
}









