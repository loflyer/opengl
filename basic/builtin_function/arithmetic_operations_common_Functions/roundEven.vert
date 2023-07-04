#version 460 core

in float input_v1;
in dvec2 input_v2;
in vec3 input_v3;
in vec4 input_v4;

out float output_v1;
out dvec2 output_v2;
out vec3 output_v3;
out vec4 output_v4;

void main() {
  output_v1 = roundEven(input_v1);
  output_v2 = roundEven(input_v2);
  //output_v3 = roundEven(input_v3);
 // output_v4 = roundEven(input_v4);
}
