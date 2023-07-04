#version 460

layout(location = 0) in int index;

layout(location = 0) out int result[5];
layout(location = 10) out int result1[5];

void main()
{
    int tmp;
	int tmp1;
    for(tmp = 0; tmp < 5; tmp ++)
	   result[tmp] = tmp + index;
	   
	tmp1 = 0;
	while(tmp1 < 5)
	{
		result1[tmp1] = index + tmp1;
		tmp1 ++;
	}
}