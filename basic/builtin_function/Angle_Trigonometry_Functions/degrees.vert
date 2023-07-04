#version 460

in vec2 input_v1;
out vec2 output_v1;

void main()
{
   output_v1 = degrees(input_v1);
}