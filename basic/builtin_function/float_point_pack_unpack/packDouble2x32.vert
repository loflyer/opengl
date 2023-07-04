#version 460

in uvec2 input_v1;
out double output_v1;


void main()
{
   	output_v1 = packDouble2x32(input_v1);
}
