#version 450

layout(location=0)in uint data;
layout(location=1)in int index;
layout(location=0)out flat uint opt;
layout(location=1)out flat uint r_m;
layout(binding = 0)buffer myBuffer {
  uint m;
  uint m1;
} buf[5];

void main()
{
  atomicMin(buf[index].m1, data);
  r_m = buf[index].m;
}