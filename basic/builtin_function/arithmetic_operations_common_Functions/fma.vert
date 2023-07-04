#version 460

in float input_v1;
in float input_v11;
in float input_v111;
out float result1;

in vec2 input_v2;
in vec2 input_v22;
in vec2 input_v222;
out vec2 result2;

in vec3 input_v3;
in vec3 input_v33;
in vec3 input_v333;
out vec3 result3;

in vec4 input_v4;
in vec4 input_v44;
in vec4 input_v444;
out vec4 result4;



in double a12;
in double b12;
in double c12;
out double result12;

in dvec2 a22;
in dvec2 b22;
in dvec2 c22;
out dvec2 result22;

in dvec3 a32;
in dvec3 b32;
in dvec3 c32;
out dvec4 result32;

in dvec4 a42;
in dvec4 b42;
in dvec4 c42;
out dvec4 result42;


void main()
{
#if 0
   	result1 = fma(input_v1, input_v11, input_v111);
	result2 = fma(input_v2, input_v22, input_v222);
	result3.xyz = fma(input_v3, input_v33, input_v333);
	result4 = fma(input_v4, input_v44, input_v444);
	
#endif

   	result12 = fma(a12, b12, c12);
	//result22 = fma(a22, b22, c22);
	result32.xyz = fma(a32, b32, c32);
	//result42 = fma(a42, b42, c42);


}