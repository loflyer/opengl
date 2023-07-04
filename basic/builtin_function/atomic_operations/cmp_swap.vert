#version 450

layout(location = 0)in int data;
layout(location = 1)in int index;
layout(location = 2)in int cmp;

layout(location = 0)out int opt;
layout(location = 1)out int r_m;
layout(binding = 0)buffer myBuffer {
  int m;
  int m1;
} buf[5];

void main()
{
  opt = atomicCompSwap(buf[index].m1, cmp, data);
  r_m = buf[index].m;
}