#version 460

in int input_v1;
in int input_v11;
in float condition_x1;
in float condition_y1;
out int result1;

in ivec2 input_v2;
in ivec2 input_v22;
in vec2 condition_x2;
in vec2 condition_y2;
out ivec2 result2;

in ivec3 input_v3;
in ivec3 input_v33;
in vec3 condition_x3;
in vec3 condition_y3;
out ivec3 result3;

in ivec4 input_v4;
in ivec4 input_v44;
in vec4 condition_x4;
in vec4 condition_y4;
out ivec4 result4;

void main()
{
    bool a1 = condition_x1 > condition_y1;
   	result1 = mix(input_v1, input_v11, a1);
	
	bvec2 a2;
	a2.x = condition_x2.x > condition_y2.x;
	a2.y = condition_x2.y > condition_y2.y;
	result2 = mix(input_v2, input_v22, a2);
	
	bvec3 a3;
	a3.x = condition_x3.x > condition_y3.x;
	a3.y = condition_x3.y > condition_y3.y;
	a3.z = condition_x3.z > condition_y3.z;
	result3 = mix(input_v3, input_v33, a3);
	
	bvec4 a4;
	a4.x = condition_x4.x > condition_y4.x;
	a4.y = condition_x4.y > condition_y4.y;
	a4.z = condition_x4.z > condition_y4.z;
	a4.w = condition_x4.w > condition_y4.w;
	result4 = mix(input_v4, input_v44, a4);
}






