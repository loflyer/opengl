#version 460

#if 1
in uvec3 input_v1;
out uvec3 output_v1;

in ivec3 input_v2;
out ivec3 output_v2;

#endif

#if 0
in uint input_v1;
out uint output_v1;

in int input_v2;
out int output_v2;
#endif



void main()
{
   output_v1 = findMSB(input_v1);
   
   //output_v2 = findMSB(input_v2);
}