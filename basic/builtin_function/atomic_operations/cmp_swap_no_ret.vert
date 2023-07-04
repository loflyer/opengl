#version 450

layout(location = 0)in uint data;
layout(location = 1)in int index;
layout(location = 2)in uint cmp;

layout(location = 0)out uint opt;
layout(location = 1)out uint r_m;
layout(binding = 0)buffer myBuffer {
  uint m;
  uint m1;
} buf[5];

void main()
{
  atomicCompSwap(buf[index].m1, cmp, data);
  r_m = buf[index].m;
}