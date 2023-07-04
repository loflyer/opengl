#version 460

layout(location = 0)in dvec3 input_62;
layout(location = 4)in double min_62;
layout(location = 6)in double max_62;
layout(location = 0)out dvec3 result62;

layout(location = 8)in dvec4 input_72;
layout(location = 12)in double min_72;
layout(location = 14)in double max_72;
layout(location = 4)out dvec4 result72;


void main()
{
	result62 = clamp(input_62, min_62, max_62);
	result72 = clamp(input_72, min_72, max_72);
}
