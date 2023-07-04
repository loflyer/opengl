#version 460 core

in vec3 input_v3;
in vec3 input_v33;
out vec3 output_v3;

in dvec3 input_v4;
in dvec3 input_v44;
out dvec3 output_v4;

void main() {
  output_v3 = cross(input_v3, input_v33);
  
  output_v4 = cross(input_v4, input_v44);
  
}
