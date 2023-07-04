#version 460

#if 0
in int input_1;
in int min_1;
in int max_1;
out int result1;

in ivec2 input_2;
in ivec2 min_2;
in ivec2 max_2;
out ivec2 result2;

in ivec3 input_3;
in ivec3 min_3;
in ivec3 max_3;
out ivec4 result3;

in ivec4 input_4;
in ivec4 min_4;
in ivec4 max_4;
out ivec4 result4;
#endif

#if 1
in ivec2 input_5;
in int min_5;
in int max_5;
out ivec2 result5;

in ivec3 input_6;
in int min_6;
in int max_6;
out ivec4 result6;

in ivec4 input_7;
in int min_7;
in int max_7;
out ivec4 result7;
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
