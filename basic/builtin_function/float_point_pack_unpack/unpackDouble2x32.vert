#version 460

in  double input_v1;
out uvec2 output_v1;


void main()
{
   	output_v1 = unpackDouble2x32(input_v1);
}









