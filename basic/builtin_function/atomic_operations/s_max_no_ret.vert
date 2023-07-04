#version 450

layout(location=0)in int data;
layout(location=1)in int index;
layout(location=0)out flat int opt;
layout(location=1)out flat int r_m;
layout(binding = 0)buffer myBuffer {
  int m;
  int m1;
} buf[5];

void main()
{
  atomicMax(buf[index].m1, data);
  r_m = buf[index].m;
}