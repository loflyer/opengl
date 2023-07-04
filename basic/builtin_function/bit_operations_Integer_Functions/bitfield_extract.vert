#version 460

#if 0
in uvec4 input_v1;
in int offset;
in int bits;
out uvec4 output_v1;
#endif

#if 1
in ivec4 input_v1;
in int offset;
in int bits;
out ivec4 output_v1;
#endif

void main()
{
   output_v1 = bitfieldExtract(input_v1, offset, bits);
}