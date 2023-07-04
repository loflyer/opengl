#version 460

//in vec4 input_v1;
//in vec3 input_v2;
//out mat3x4 output_v1;

layout(location = 0)in dvec4 input_v1;
layout(location = 4)in dvec3 input_v2;
layout(location = 0)out dmat3x4 output_v1;

//in vec2 input_v3
//out mat2x4 output_v2;

void main()
{
    output_v1 = outerProduct(input_v1,input_v2);
	
	//output_v2 = outerProduct(input_v1,input_v3);
}