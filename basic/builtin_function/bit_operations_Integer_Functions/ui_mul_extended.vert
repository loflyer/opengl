#version 460

#if 0
in uvec4 input_v1;
in uvec4 input_v2;
out uvec4 high;
out uvec4 low;
#endif

#if 0
in uint input_v1;
in uint input_v2;
out uint high;
out uint low;
#endif

#if 1
in   int input_v1;
in   int input_v2;
out  int high;
out  int low;
#endif

void main()
{
   //umulExtended(input_v1, input_v2, high, low);
   
   imulExtended(input_v1, input_v2, high, low);
}