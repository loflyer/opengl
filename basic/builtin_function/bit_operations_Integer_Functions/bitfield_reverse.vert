#version 460

in uvec3 input_v1;
out uvec3 output_v1;

void main()
{
    output_v1 = bitfieldReverse(input_v1);
}