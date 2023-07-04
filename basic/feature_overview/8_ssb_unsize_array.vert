#version 450 core

in float data;
out flat float opt;

uniform int x;
uniform int y;
buffer myBuffer {
  float f;
  float dynamic[];
} buf;


uniform float a[5];

//float a[5];
float b[] = a; // b is explicitly size 5
//float b[5] = a; // means the same thing
//float b[] = float[](1,2,3,4,5); // also explicitly sizes to 5


void main()
{
  int length    = buf.dynamic.length();
  //float b[]   = a; // b is explicitly size 5
  //buf.f       = 0.4 + data + float(length);
  buf.dynamic[4]= 0.5 + data;
}