#version 460

in vec2 input_v1;
out vec2 output_v1;

in float input_v2;
out float output_v2;

void main()
{
   output_v1 = atanh(input_v1);
   
   output_v2 = atanh(input_v2);

}