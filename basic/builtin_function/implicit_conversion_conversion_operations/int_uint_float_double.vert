#version 460

in int input_v1;
out uint output_v1;

in int input_v2;
out float output_v2;

in uint input_v3;
out float output_v3;

in int input_v4;
out double output_v4;

in uint input_v5;
out double output_v5;

in float input_v6;
out double output_v6;

void main()
{
   output_v1 = input_v1;
   output_v2 = input_v2;
   output_v3 = input_v3;
   output_v4 = input_v4;
   output_v5 = input_v5;
   output_v6 = input_v6;
}