#version 450 core

in ivec4 icoord;
in vec4 coord;

out float opt;

buffer myBuffer {
  uint m;
  float f;
} buf0[2];

buffer myBuffer1 {
  float databuf1;
};

layout(binding = 1, rgba32f) uniform image2DRect img8[2];
layout(binding = 3, rgba32f) uniform image2DRect img9[2];
layout(binding=1, offset=0) uniform atomic_uint ac;

void main()
{
    vec4 tmp = imageLoad(img8[1], icoord.zw) + imageLoad(img9[1], icoord.zw);
    opt = buf0[1].f + tmp.x + databuf1;
    opt += float(atomicCounter(ac));
}
