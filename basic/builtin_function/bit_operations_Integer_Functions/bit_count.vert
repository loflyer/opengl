#version 460

#if 0
in uvec3 input_v1;
out uvec3 output_v1;
#endif

#if 1
in ivec3 input_v1;
out ivec3 output_v1;
#endif


void main()
{
    output_v1 = bitCount(input_v1);
}