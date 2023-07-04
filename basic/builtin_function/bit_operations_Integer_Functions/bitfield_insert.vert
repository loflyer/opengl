#version 460

#if 0
in uvec4 input_v1;
in uvec4 insert;
in int offset;
in int bits;
out uvec4 output_v1;
#endif 

in int offset;
in int bits;
in uint input_v2;
in uint insert2;
out uint output_v2;

void main()
{
    //output_v1 = bitfieldInsert(input_v1, insert, 4, 4);
	output_v2 = bitfieldInsert(input_v2, insert2, offset, bits);

}

#if 0
in vec4 input_v1;
in vec4 insert;
in int offset;
in int bits;
out vec4 output_v1;

in int input_v2;
in int insert2;
out int output_v2;

void main()
{
    output_v1 = bitfieldInsert(input_v1, insert, 4, 4);
	output_v2 = bitfieldInsert(input_v2, insert2, offset, bits);

}
#endif