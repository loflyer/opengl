#version 460

//in uvec3 input_v1;
//out uvec3 output_v1;

in uint input_v1;
out uint output_v1;

in int input_v2;
out int output_v2;

void main()
{
    output_v1 = findLSB(input_v1);
	
	output_v2 = findLSB(input_v2);

}