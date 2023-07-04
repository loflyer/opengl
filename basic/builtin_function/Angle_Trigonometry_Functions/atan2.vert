#version 460

in vec2 input_v1;
in vec2 input_v2;
out vec2 output_v1;


void main()
{
   output_v1 = atan(input_v1,input_v2);
}