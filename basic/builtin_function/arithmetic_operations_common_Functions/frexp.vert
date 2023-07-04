#version 460

in float input_v1;
out float man1;
out int exp1;

in vec2 input_v2;
out vec2 man2;
out ivec2 exp2;

in vec3 input_v3;
out vec3 man3;
out ivec3 exp3;

in vec4 input_v4;
out vec4 man4;
out ivec4 exp4;


in double input_v12;
out double man12;
out int exp11;

in dvec2 x22;
out dvec2 man22;


in dvec3 x32;
out dvec3 man32;


in dvec4 x42;
out dvec4 man42;



void main()
{
#if 0
   	man1 = frexp(input_v1, exp1);
	man2 = frexp(input_v2, exp2);
	man3 = frexp(input_v3, exp3);
	man4 = frexp(input_v4, exp4);
#endif

	man12 = frexp(input_v12, exp11);
	man22 = frexp(x22, exp2);
	man32 = frexp(x32, exp3);
	man42 = frexp(x42, exp4);
}









