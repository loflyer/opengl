#version 460

in vec2 input_v1;
out  uint  output_v1;

void main()
{
   	output_v1 = packSnorm2x16(input_v1);
}









