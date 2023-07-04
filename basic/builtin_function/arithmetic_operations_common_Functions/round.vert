#version 460 core

in float input_v1;
in vec2 input_v2;
in vec3 input_v3;
in dvec4 input_v4;

out float output_v1;
out vec2 output_v2;
out vec3 output_v3;
out dvec4 output_v4;

void main() {
  output_v1 = round(input_v1);
  output_v2 = round(input_v2);
  output_v3 = round(input_v3);
  output_v4 = round(input_v4);
}
