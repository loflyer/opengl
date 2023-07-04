#version 460 core

in float input_v1;
out float output_v1;
in vec2 input_v2;
out vec2 output_v2;

in int input_v3;
out int output_v3;
in ivec3 input_v4;
out ivec3 output_v4;

in double input_vd4;
out double output_v5;
in dvec4 input_v6;
out dvec4 output_v6;

#if 0
in vec3 input_v3;
in vec4 input_v4;
in ivec2 input_v6;
in ivec4 input_v8;
in dvec2 input_v10;
in dvec3 input_v11;

out vec3 output_v3;
out vec4 output_v4;
out ivec2 output_v6;
out ivec4 output_v8;
out dvec2 output_v10;
out dvec3 output_v11;
#endif

void main() {
  output_v1 = abs(input_v1);
  output_v2 = abs(input_v2);
  output_v3 = abs(input_v3);
  output_v4 = abs(input_v4);
  output_v5 = abs(input_vd4);
  output_v6 = abs(input_v6);
  
  #if 0
  output_v7 = abs(input_v7);
  output_v8 = abs(input_v8);
  output_v9 = abs(input_v9);
  output_v10 = abs(input_v10);
  output_v11 = abs(input_v11);
  output_v12 = abs(input_v12);
  #endif
}
