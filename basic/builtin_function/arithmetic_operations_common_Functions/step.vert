#version 460

in float edge1;
in float input_v1;
out float result1;

in vec2 edge2;
in vec2 input_v2;
out vec2 result2;

in vec3 edge3;
in vec3 input_v3;
out vec4 result3;

in vec4 edge4;
in vec4 input_v4;
out vec4 result4;

in float edge5;
in vec2 input_v5;
out vec2 result5;

in float edge6;
in vec3 input_v6;
out vec3 result6;

in float edge7;
in vec4 input_v7;
out vec4 result7;

in double edge8;
in double input_v8;
out double result8;

in double edge9;
in dvec3 input_v9;
out dvec3 result9;

in dvec2 edge10;
in dvec2 input_v10;
out dvec2 result10;

void main()
{

#if 0
   	result1 = step(edge1, input_v1);
	result2 = step(edge2, input_v2);
	result3.xyz = step(edge3, input_v3);
	result4 = step(edge4, input_v4);
	result5 = step(edge5, input_v5);
    result6.xyz = step(edge6, input_v6);
	result7 = step(edge7, input_v7);
#endif
	
	
	result8 = step(edge8, input_v8);
	result9 = step(edge9, input_v9);
	result10 = step(edge10, input_v10);	

}









