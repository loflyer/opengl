#version 460

in int input_v1;
in uint input_v11;
out float out1;
out float out11;

in ivec2 input_v2;
in uvec2 input_v22;
out vec2 out2;
out vec2 out22;

in ivec3 input_v3;
in uvec3 input_v33;
out vec3 out3;
out vec3 out33;

in ivec4 input_v4;
in uvec4 input_v44;
out vec4 out4;
out vec4 out44;


in  float inv1;
in  float inv2;
out int outv1;
out uint outv2;

in  vec3 inv3;
in  vec3 inv4;
out ivec3 outv3;
out uvec3 outv4;


void main()
{
#if 0
//int --> float
   out1 = intBitsToFloat(input_v1);
   out2 = intBitsToFloat(input_v2);
   out3 = intBitsToFloat(input_v3);
   out4 = intBitsToFloat(input_v4);
 #endif
 
 #if 0
 //uint --> float
   out11 = uintBitsToFloat(input_v11);
   out22 = uintBitsToFloat(input_v22);
   out33 = uintBitsToFloat(input_v33);
   out44 = uintBitsToFloat(input_v44);
 #endif
 
 
 #if 0
 //float --> int
   outv1 = floatBitsToInt(inv1);
   outv3 = floatBitsToInt(inv3);
#endif 
   
 #if 1
 // float --> uint
   outv2 = floatBitsToUint(inv2);
   outv4 = floatBitsToUint(inv4);
 #endif 
}