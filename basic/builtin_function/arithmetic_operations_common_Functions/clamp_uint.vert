#version 460

#if 0
in uint input_1;
in uint min_1;
in uint max_1;
out uint result1;

in uvec2 input_2;
in uvec2 min_2;
in uvec2 max_2;
out uvec2 result2;

in uvec3 input_3;
in uvec3 min_3;
in uvec3 max_3;
out uvec4 result3;

in uvec4 input_4;
in uvec4 min_4;
in uvec4 max_4;
out uvec4 result4;
#endif

#if 1
in uvec2 input_5;
in uint min_5;
in uint max_5;
out uvec2 result5;

in uvec3 input_6;
in uint min_6;
in uint max_6;
out uvec4 result6;

in uvec4 input_7;
in uint min_7;
in uint max_7;
out uvec4 result7;
#endif

void main()
{
	#if 0
   	result1 = clamp(input_1, min_1, max_1);
	result2 = clamp(input_2, min_2, max_2);
	result3.xyz = clamp(input_3, min_3, max_3);
	result4 = clamp(input_4, min_4, max_4);
	#endif
	
	#if 1
	result5 = clamp(input_5, min_5, max_5);
    result6.xyz = clamp(input_6, min_6, max_6);
	result7 = clamp(input_7, min_7, max_7);
	#endif
}