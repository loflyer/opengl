#version 460 core

in float input_v1;
in float input_v11;
out float output_v1;

in vec2 input_v2;
in vec2 input_v22;
out vec2 output_v2;

in dvec3 input_v3;
in dvec3 input_v33;
out dvec3 output_v3;

in vec4 input_v4;
in vec4 input_v44;
out vec4 output_v4;

void main() {
  //output_v1 = reflect(input_v1, input_v11);
  output_v2 = reflect(input_v2, input_v22);
  //output_v3 = reflect(input_v3, input_v33);
  //output_v4 = reflect(input_v4, input_v44);
}
