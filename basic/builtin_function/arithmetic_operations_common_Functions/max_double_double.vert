#version 460

in double input_v1;
in double input_v11;
out double output_v1;

in dvec2 input_v2;
in dvec2 input_v22;
out dvec2 output_v2;

in dvec3 input_v3;
in dvec3 input_v33;
out dvec3 output_v3;

in dvec4 input_v4;
in dvec4 input_v44;
out dvec4 output_v4;

in dvec2 input_v5;
in double input_v55;
out dvec2 output_v5;

in dvec3 input_v6;
in double input_v66;
out dvec3 output_v6;

in dvec4 input_v7;
in double input_v77;
out dvec4 output_v7;

void main()
{
	#if 0
   	output_v1 = max(input_v1, input_v11);
    output_v2 = max(input_v2, input_v22);
	output_v3 = max(input_v3, input_v33);
	output_v4 = max(input_v4, input_v44);
	#endif
	
	#if 1
	output_v5 = max(input_v5, input_v55);
	output_v6 = max(input_v6, input_v66);
	output_v7 = max(input_v7, input_v77);
	#endif
}