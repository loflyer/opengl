#version 460 core

in float input_v1;
out float output_v1;


in dvec2 input_v2;
out dvec2 output_v2;


in vec3 input_v3;
out vec3 output_v3;


in vec4 input_v4;
out vec4 output_v4;

void main() {
  output_v1 = normalize(input_v1);
  output_v2 = normalize(input_v2);
  output_v3 = normalize(input_v3);
  output_v4 = normalize(input_v4);
}
