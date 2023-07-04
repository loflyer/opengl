#version 430 core

layout (location = 0) in mat2x3 mx23;
layout (location = 2) in mat2x3 my23;
layout (location = 0) out mat2x3 mo23;

layout (location = 4) in mat3 mx3Arr[2];
layout (location = 10) in mat3 my3Arr[2];
layout (location = 2) out mat3 mo3Arr[2];

void main()
{

  mo23 = mx23 + my23;
  mo3Arr[0] = mx3Arr[0] + my3Arr[0];
}
