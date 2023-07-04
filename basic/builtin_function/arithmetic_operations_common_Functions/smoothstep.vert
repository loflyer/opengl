#version 460

in float edge10;
in float edge11;
in float input_v1;
out float result1;

in vec2 edge20;
in vec2 edge21;
in vec2 input_v2;
out vec2 result2;

in vec3 edge30;
in vec3 edge31;
in vec3 input_v3;
out vec4 result3;

in vec4 edge40;
in vec4 edge41;
in vec4 input_v4;
out vec4 result4;

in float edge50;
in float edge51;
in vec2 input_v5;
out vec2 result5;

in float edge60;
in float edge61;
in vec3 input_v6;
out vec4 result6;

in float edge70;
in float edge71;
in vec4 input_v7;
out vec4 result7;


in double edge80;
in double edge81;
in double input_v8;
out double result8;


in double edge90;
in double edge91;
in dvec3 input_v9;
out dvec3 result9;



void main()
{
   	//result1 = smoothstep(edge10, edge11, input_v1);
	
	#if 0
	result2 = smoothstep(edge20, edge21, input_v2);
	result3.xyz = smoothstep(edge30, edge31, input_v3);
	result4 = smoothstep(edge40, edge41, input_v4);
	result5 = smoothstep(edge50, edge51, input_v5);
    result6.xyz = smoothstep(edge60, edge61, input_v6);
	#endif
	
	//result7 = smoothstep(edge70, edge71, input_v7);
	
	//result8 = smoothstep(edge80, edge81, input_v8);
	result9 = smoothstep(edge90, edge91, input_v9);
}









