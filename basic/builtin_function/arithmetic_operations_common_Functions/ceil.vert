#version 460 core

in double input_v1;
in vec2 input_v2;
in dvec3 input_v3;
in vec4 input_v4;

out double output_v1;
out vec2 output_v2;
out dvec3 output_v3;
out vec4 output_v4;

void main() {
  output_v1 = ceil(input_v1);
  output_v2 = ceil(input_v2);
  output_v3 = ceil(input_v3);
  //output_v4 = ceil(input_v4);
}
