#version 460

layout(location = 0)in vec2 input_v1;
layout(location = 1)in vec4 input_v2;
layout(location = 2)in dvec2 input_d_v1;
layout(location = 3)in dvec4 input_d_v2;
layout(location = 4)in vec3 input_v3;

layout(location = 0)out mat4x2 output_v1;
layout(location = 4)out dmat4x2 output_d_v1;
layout(location = 8)out mat3x2 output_v2;
 
void main()
{ 
    //output_v1 = outerProduct(input_v1,input_v2);
	
	output_d_v1 = outerProduct(input_d_v1,input_d_v2);
	
	//output_v2 = outerProduct(input_v1,input_v3);
}