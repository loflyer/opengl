#version 460

in mat2 input_v4;
out dmat2 output_v4;

in mat3 input_v5;
out dmat3 output_v5;

in mat4 input_v6;
out dmat4 output_v6; 

void main()
{
   output_v4 = input_v4;
   output_v5 = input_v5;
   output_v6 = input_v6;
}