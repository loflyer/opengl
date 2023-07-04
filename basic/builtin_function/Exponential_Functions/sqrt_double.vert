#version 460

in  dvec2 input_v1;
out dvec2 output_v1;

void main()
{
   output_v1 = sqrt(input_v1);
}