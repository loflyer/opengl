#version 460

in vec4 input_v1;
out  uint  output_v1;

void main()
{
   	output_v1 = packUnorm4x8(input_v1);
}









