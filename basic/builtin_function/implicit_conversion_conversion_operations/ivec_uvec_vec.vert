#version 460

in ivec2 input_v1;
out uvec2 output_v1;

in ivec3 input_v2;
out uvec3 output_v2;

in ivec4 input_v3;
out uvec4 output_v3;

in ivec2 input_v4;
out vec2 output_v4;

in uvec2 input_v5;
out vec2 output_v5;

in ivec3 input_v6;
out vec3 output_v6;

in uvec3 input_v7;
out vec3 output_v7;

in ivec4 input_v8;
out vec4 output_v8;

in uvec4 input_v9;
out vec4 output_v9;

void main()
{
   output_v1 = input_v1;
   output_v2 = input_v2;
   output_v3 = input_v3;
   output_v4 = input_v4;
   output_v5 = input_v5;
   output_v6 = input_v6;
   output_v7 = input_v7;
   output_v8 = input_v8;
   output_v9 = input_v9;
}