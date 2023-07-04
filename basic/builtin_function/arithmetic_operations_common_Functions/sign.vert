#version 460 core

#if 0
in float input_v1;
in vec2 input_v2;
in vec3 input_v3;
in vec4 input_v4;

out float output_v1;
out vec2 output_v2;
out vec3 output_v3;
out vec4 output_v4;
#endif

#if 1
in int input_v4;
in ivec2 input_v6;
in ivec3 input_v7;
in ivec4 input_v8;

out int output_v5;
out ivec2 output_v6;
out ivec3 output_v7;
out ivec4 output_v8;
#endif

#if 1
in double input_v9;
in dvec2 input_v10;
in dvec3 input_v11;
in dvec4 input_v12;

out double output_v9;
out dvec2 output_v10;
out dvec3 output_v11;
out dvec4 output_v12;
#endif


void main() {

#if 0
  output_v1 = sign(input_v1);
  output_v2 = sign(input_v2);
  output_v3 = sign(input_v3);
  output_v4 = sign(input_v4);
#endif

 #if 0
  output_v5 = sign(input_v4);
  output_v6 = sign(input_v6);
  output_v7 = sign(input_v7);
  output_v8 = sign(input_v8);
 #endif
 
 #if 1
  output_v9 = sign(input_v9);
  output_v10 = sign(input_v10);
  output_v11 = abs(input_v11);
 output_v12 = abs(input_v12);
 #endif
}
