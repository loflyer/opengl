#version 450 core

in float data;
out float opt;

uniform int x;
uniform int y;
buffer myBuffer {
  uint m[20];
  float f[10];
} buf[4];

buffer myBuffer2 {
  uint data1[20];
  float data2[10];
};


void main()
{
  opt =  data + data2[1] + buf[x].f[y];
  buf[x].f[y] = 0.4;

}
