#version 460

layout(location = 0) in int index;

layout(location = 0) out float result;
layout(location = 1) out float result1;



void main()
{
    if(index >0)
	   result = 1.0;
	else
	   result = 0.0;
	   
	switch(index)
	{
	   case 0:
	     result1 = 1.5;
		 break;
	   case 1:
	     result1 = 3.0;
		 break;
	   case 2:
	     result = 4.0;
		 break;
	   default:
	     result = 2.0;
		 break;
	}
}