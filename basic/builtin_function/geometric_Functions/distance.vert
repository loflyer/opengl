#version 460 core

# if 0
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

void main() {
  output_v1 = distance(input_v1, input_v11);
  output_v2 = distance(input_v2, input_v22);
  output_v3 = distance(input_v3, input_v33);
  output_v4 = distance(input_v4, input_v44);
}

#endif

#if 1
in dvec3 input_v3;
in dvec3 input_v33;
out double output_v3;

void main() {

  output_v3 = distance(input_v3, input_v33);

}
#endif