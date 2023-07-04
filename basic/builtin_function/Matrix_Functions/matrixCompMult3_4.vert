#version 460

layout(location = 0)in mat4x3 input_v1;
layout(location = 4)in mat4x3 input_v2;
//in mat4x3 input_v3;
//in mat4x3 input_v4;
//in mat4x3 input_v5;
layout(location = 0)out mat4x3 output_v1;

void main()
{
    output_v1 = matrixCompMult(input_v1,input_v2);
	//output_v1 = matrixCompMult(output_v1,input_v3);
	//output_v1 = matrixCompMult(output_v1,input_v4);
	//output_v1 = matrixCompMult(output_v1,input_v5);
}