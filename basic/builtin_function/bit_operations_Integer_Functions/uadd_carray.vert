#version 460

in  uint input_v1;
in  uint input_v2;
out uint code_condition;
out uint output_v1;

in uvec4 input_v3;
in uvec4 input_v4;
out uvec4 code_condition2;
out uvec4 output_v2;

void main()
{
    output_v1 = uaddCarry(input_v1, input_v2, code_condition);
	
	output_v2 = uaddCarry(input_v3, input_v4, code_condition2);
}