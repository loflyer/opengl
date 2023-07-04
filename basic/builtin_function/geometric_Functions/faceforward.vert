#version 460 core

in float input_v1;
in float input_v11;
in float input_v111;
out float output_v1;

in vec2 input_v2;
in vec2 input_v22;
in vec2 input_v222;
out vec2 output_v2;


in dvec3 input_v3;
in dvec3 input_v33;
in dvec3 input_v333;
out dvec3 output_v3;


in vec4 input_v4;
in vec4 input_v44;
in vec4 input_v444;
out vec4 output_v4;

void main() {
  //output_v1 = faceforward(input_v1, input_v11, input_v111);
  //output_v2 = faceforward(input_v2, input_v22, input_v222);
  output_v3 = faceforward(input_v3, input_v33, input_v333);
  //output_v4 = faceforward(input_v4, input_v44, input_v444);
}
