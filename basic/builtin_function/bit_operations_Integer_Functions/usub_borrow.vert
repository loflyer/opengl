#version 460

#if 1
in uvec4 input_v1;
in uvec4 input_v2;
out uvec4 code_condition;
out uvec4 output_v1;
#endif

#if 0
in  uint input_v1;
in  uint input_v2;
out uint code_condition;
out uint output_v1;
#endif


void main()
{
    output_v1 = usubBorrow(input_v1, input_v2, code_condition);
}