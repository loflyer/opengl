#version 460

in  uint input_v1;
out vec2 output_v1;

void main()
{
   	output_v1 = unpackSnorm2x16(input_v1);
}









