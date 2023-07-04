#version 460

in float input_v1;
out float out1;

in vec2 input_v2;
out float out2;

in vec3 input_v3;
out float out3;

in vec4 input_v4;
out float out4;

in double input_v5;
out float out5;

in 	vec3 input_v6;
out float out6;

void main()
{
/*
   	bool res1 = isnan(input_v1);
	if(res1)
	   out1 = 1.0;
	else
	   out1 = 0.0;
  
	bvec2 res2 = isnan(input_v2);
	if(res2.x)
	   out2 = 1.0;
	else 
	   out2 = 2.0;
	   
    bvec3 res3 = isnan(input_v3);
	if(res3.x)
	   out3 = 2.0;
	else
	   out3 = 3.0;
*/

	bvec4 res4 = isnan(input_v4);
	if(res4.x || res4.y)
	   out4 = 4.0;
	else
	   out4 = 5.0;
	   


/*
	bool res5 = isnan(input_v5);
	if(res5)
	   out5 = 6.0;
	else
	   out5 = 7.0;
*/
 
/* 
	bvec3 res6 = isnan(input_v6);
	if(res6.x)
	   out6 = 8.0;
	else
	   out6 = 9.0;
  */ 
   
}