#version 430 core

in mat3 mx3Arr[2];
in mat3 my3Arr[2];
out mat3 mo3Arr[2];

uniform int index_u;

void main()
{
    mo3Arr[index_u*2] = mx3Arr[index_u+1] + my3Arr[0];
}
