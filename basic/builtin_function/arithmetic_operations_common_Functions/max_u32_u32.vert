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
   	output_v1 = max(input_v1, input_v11);
	output_v2 = max(input_v2, input_v22);
	output_v3 = max(input_v3, input_v33);
	output_v4 = max(input_v4, input_v44);
	output_v5 = max(input_v5, input_v55);
	output_v6 = max(input_v6, input_v66);
	output_v7 = max(input_v7, input_v77);
}