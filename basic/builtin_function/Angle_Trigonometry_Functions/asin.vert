#version 460

in vec2 input_v2;
out vec2 output_v2;

in float input_v1;
out float output_v1;

void main()
{
   output_v1 = asin(input_v1);
   
   output_v2 = asin(input_v2);

}