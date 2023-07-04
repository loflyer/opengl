#version 460

layout(location = 0)in vec3 input_v1;
layout(location = 1)in vec4 input_v2;
layout(location = 2)in vec2 input_v3;
layout(location = 0)out mat4x3 output_v1;
layout(location = 4)out mat2x3 output_v2;


void main()
{
    output_v1 = outerProduct(input_v1,input_v2);
	
	output_v2 = outerProduct(input_v1,input_v3);

}