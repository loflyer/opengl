#version 460 core

in float input_v1;
in dvec2 input_v2;
in dvec3 input_v3;
in vec4 input_v4;

out float input_v11;
out dvec2 input_v22;
out dvec3 input_v33;
out vec4 input_v44;

out float output_v1;
out dvec2 output_v2;
out dvec3 output_v3;
out vec4 output_v4;

void main() {
  output_v1 = modf(input_v1, input_v11);
  output_v2 = modf(input_v2, input_v22);
  //output_v3 = modf(input_v3, input_v33);
 // output_v4 = modf(input_v4, input_v44);
}
