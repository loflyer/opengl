#version 430 core

in mat3 mx3Arr[2];
in mat3 my3Arr[2];
out mat3 mo3Arr[2];

uniform int index_u;

void main()
{
    float tempArray[8*16];

    for (int i = 0; i < 8*16; i++) {
        tempArray[i] = index_u + i;
    }

    float result = 0;
    for (int i = 0; i < 8*16; i++) {
        result += tempArray[i];
    }


    mo3Arr[index_u*2] = mx3Arr[index_u+1] + my3Arr[0];
    mo3Arr[1][2].x += result;
}
