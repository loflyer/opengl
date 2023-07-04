#version 460

in mat2x3 input_v1;
out dmat2x3 output_v1;

in mat2x4 input_v2;
out dmat2x4 output_v2;

in mat3x2 input_v3;
out dmat3x2 output_v3;

in mat3x4 input_v4;
out dmat3x4 output_v4;

in mat4x2 input_v5;
out dmat4x2 output_v5;

in mat4x3 input_v6;
out dmat4x3 output_v6;

void main()
{
   output_v1 = input_v1;
   output_v2 = input_v2;
   output_v3 = input_v3;
   output_v4 = input_v4;
   output_v5 = input_v5;
   //output_v6 = input_v6;
}
