#version 460 core

in float input_v1;
in float input_v11;
out float output_v1;


in vec2 input_v2;
in vec2 input_v22;
out float output_v2;

in vec3 input_v3;
in vec3 input_v33;
out float output_v3;

in vec4 input_v4;
in vec4 input_v44;
out float output_v4;

in dvec4 input_v5;
in dvec4 input_v55;
out double output_v5;

void main() {
  //output_v1 = dot(input_v1, input_v11);
  //output_v2 = dot(input_v2, input_v22);
  //output_v3 = dot(input_v3, input_v33);
  //output_v4 = dot(input_v4, input_v44);
  
  output_v5 = dot(input_v5, input_v55);
}
