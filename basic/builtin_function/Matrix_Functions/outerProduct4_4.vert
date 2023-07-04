#version 460

layout(location = 0)in vec4 input_v1;
layout(location = 1)in vec4 input_v2;
layout(location = 2)in vec2 input_v3;
layout(location = 3)in vec2 input_v4;
layout(location = 4)in dvec3 input_v5;
layout(location = 5)in dvec3 input_v6;

layout(location = 0)out mat4 output_v1;
layout(location = 4)out mat2 output_v2;
layout(location = 6)out dmat3 output_v3;

void main()
{
    //output_v1 = outerProduct(input_v1,input_v2);
	    
	//output_v2 = outerProduct(input_v3,input_v4);

    output_v3 = outerProduct(input_v5,input_v6);

}