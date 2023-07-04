#version 460

in uint input_v1;
in uint input_v11;
out uint output_v1;

in uvec2 input_v2;
in uvec2 input_v22;
out uvec2 output_v2;

in uvec3 input_v3;
in uvec3 input_v33;
out uvec3 output_v3;

in uvec4 input_v4;
in uvec4 input_v44;
out uvec4 output_v4;

in uvec2 input_v5;
in uint input_v55;
out uvec2 output_v5;

in uvec3 input_v6;
in uint input_v66;
out uvec3 output_v6;

in uvec4 input_v7;
in uint input_v77;
out uvec4 output_v7;

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