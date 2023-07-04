#version 460

in int input_v1;
in int input_v11;
out int output_v1;

in ivec2 input_v2;
in ivec2 input_v22;
out ivec2 output_v2;

in ivec3 input_v3;
in ivec3 input_v33;
out ivec3 output_v3;

in ivec4 input_v4;
in ivec4 input_v44;
out ivec4 output_v4;

in ivec2 input_v5;
in int input_v55;
out ivec2 output_v5;

in ivec3 input_v6;
in int input_v66;
out ivec3 output_v6;

in ivec4 input_v7;
in int input_v77;
out ivec4 output_v7;

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