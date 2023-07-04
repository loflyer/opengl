#version 460 core

#if 1
in float input_v1;
out float output_v1;

in vec3 input_v3;
out float output_v3;
#endif


#if 1
in dvec2 input_v2;
out double output_v2;
#endif 

#if 1
in dvec4 input_v4;
out double output_v4;
#endif

in double input_v5;
out double output_v5;

void main() {
  output_v1 = length(input_v1);
  output_v3 = length(input_v3);
  
  output_v2 = length(input_v2);
  output_v4 = length(input_v4);
  
  output_v5 = length(input_v5);
}
