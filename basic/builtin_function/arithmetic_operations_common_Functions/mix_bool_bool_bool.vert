#version 460

#if 0
in float input_v1;
in float input_v2;
in float input_v3;
in float input_v11;
in float input_v22;
in float input_v33;
out float result;

in vec2 x1v2;
in vec2 x2v2;
in vec2 x3v2;
in vec2 y1v2;
in vec2 y2v2;
in vec2 y3v2;
out float result_v2;
#endif

in vec3 x1v3;
in vec3 x2v3;
in vec3 x3v3;
in vec3 y1v3;
in vec3 y2v3;
in vec3 y3v3;
out float result_v3;

void main()
{   
#if 0
    bool b_x1 = input_v1 > input_v11;
    bool b_y1 = input_v2 > input_v22;
    bool b_a1 = input_v3 > input_v33;	
    bool tmp_res = mix(b_x1, b_y1, b_a1);
	if(tmp_res)
	   result = 5.4f;
	   
	bvec2 b_x1_v2;
	bvec2 b_y1_v2;
	bvec2 b_a1_v2;
    b_x1_v2.x = x1v2.x > y1v2.x;
    b_x1_v2.y = x1v2.y > y1v2.y;
	b_y1_v2.x = x2v2.x > y2v2.x;
    b_y1_v2.y = x2v2.y > y2v2.y;
	b_a1_v2.x = x2v2.x > y2v2.x;
    b_a1_v2.y = x2v2.y > y2v2.y;
	bvec2 tmp_res_v2 = mix(b_x1_v2, b_y1_v2, b_a1_v2);
	if(tmp_res_v2.x)
	    result_v2 = 6.4f;
	
#endif

	
    bvec3 b_x1_v3;
	bvec3 b_y1_v3;
	bvec3 b_a1_v3;
    b_x1_v3.x = x1v3.x > y1v3.x;
    b_x1_v3.y = x1v3.y > y1v3.y;
	b_x1_v3.z = x1v3.z > y1v3.z;
	b_y1_v3.x = x2v3.x > y2v3.x;
    b_y1_v3.y = x2v3.y > y2v3.y;
	b_y1_v3.z = x2v3.z > y1v3.z;
	b_a1_v3.x = x3v3.x > y3v3.x;
    b_a1_v3.y = x3v3.y > y3v3.y;
	b_a1_v3.z = x3v3.z > y3v3.z;
	bvec3 tmp_res_v3 = mix(b_x1_v3, b_y1_v3, b_a1_v3);
	if(tmp_res_v3.x)
	    result_v3 = 7.4f;
	
    	
}









