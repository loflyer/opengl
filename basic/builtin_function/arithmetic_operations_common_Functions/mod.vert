#version 460 core

#if 0
in float input_v1;
in vec2 input_v2;
in dvec3 input_v3;
in dvec4 input_v4;

in float input_v11;
in vec2 input_v22;
in dvec3 input_v33;
in dvec4 input_v44;

out float output_v1;
out vec2 output_v2;
out dvec3 output_v3;
out dvec4 output_v4;
#endif


in float input_v1;
in float input_v11;
out float output_v1;

void main() {
#if 0
  output_v1 = mod(input_v1, input_v11);
  output_v2 = mod(input_v2, input_v22);
  output_v2 = mod(input_v2, input_v11);
  output_v3 = mod(input_v3, input_v33);
  output_v4 = mod(input_v4, input_v44);
#endif
	
  output_v1 = mod(input_v1, input_v11);

}
