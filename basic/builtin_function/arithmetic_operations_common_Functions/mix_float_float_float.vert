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

//in vec2 input_v4;
//in vec2 input_v55;
//in float input_v555;
//out vec2 result5;
//
//in vec3 input_v6;
//in vec3 input_v66;
//in float input_v666;
//out vec4 result6;
//
//in vec4 input_v7;
//in vec4 input_v77;
//in float input_v7777;
//out vec4 result7;

void main()
{
   	result1 = mix(input_v1, input_v11, input_v111);
	result2 = mix(input_v2, input_v22, input_v222);
	result3 = mix(input_v3, input_v33, input_v333);
	result4 = mix(input_v4, input_v44, input_v444);
	//result5 = mix(input_v4, input_v55, input_v555);
    	//result6.xyz = mix(input_v6, input_v66, input_v666);
	//result7 = mix(input_v7, input_v77, input_v777);
}









