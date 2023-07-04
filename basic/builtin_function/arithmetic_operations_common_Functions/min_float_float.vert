#version 460

in float input_v1;
in float input_v11;
out float output_v1;

in vec2 input_v2;
in vec2 input_v22;
out vec2 output_v2;

in vec3 input_v3;
in vec3 input_v33;
out vec3 output_v3;

in vec4 input_v4;
in vec4 input_v44;
out vec4 output_v4;

in vec2 input_v5;
in float input_v55;
out vec2 output_v5;

in vec3 input_v6;
in float input_v66;
out vec3 output_v6;

in vec4 input_v7;
in float input_v77;
out vec4 output_v7;

void main()
{
   	output_v1 = min(input_v1, input_v11);
	output_v2 = min(input_v2, input_v22);
	output_v3 = min(input_v3, input_v33);
	output_v4 = min(input_v4, input_v44);
	output_v5 = min(input_v5, input_v55);
	output_v6 = min(input_v6, input_v66);
	output_v7 = min(input_v7, input_v77);
}