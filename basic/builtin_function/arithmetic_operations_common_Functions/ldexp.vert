#version 460

out float output_v1;
in float man1;
in int exp1;

out vec2 output_v2;
in vec2 man2;
in ivec2 exp2;

out vec3 output_v3;
in vec3 man3;
in ivec3 exp3;

out vec4 output_v4;
in vec4 man4;
in ivec4 exp4;

void main()
{
   	output_v1 = ldexp(man1, exp1);
	//output_v2 = ldexp(man2, exp2);
	//output_v3 = ldexp(man3, exp3);
	//output_v4 = ldexp(man4, exp4);
}









