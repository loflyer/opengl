#version 460

in ivec2 input_v3;
out dvec2 output_v3;

in uvec2 input_v4;
out dvec2 output_v4;

in vec2 input_v5;
out dvec2 output_v5;

in ivec3 input_v6;
out dvec3 output_v6;

in uvec3 input_v7;
out dvec3 output_v7;

in vec3 input_v8;
out dvec3 output_v8;

in ivec4 input_v9;
out dvec4 output_v9;

in uvec4 input_v10;
out dvec4 output_v10;


in vec4 input_v11;
out dvec4 output_v11;

void main()
{
   output_v3 = input_v3;
   output_v4 = input_v4;
   output_v5 = input_v5;
   output_v6 = input_v6;
   output_v7 = input_v7;
   output_v8 = input_v8;
   output_v9 = input_v9;
   output_v10 = input_v10;
   output_v11 = input_v11;

}