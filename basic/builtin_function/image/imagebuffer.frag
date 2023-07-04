#version 450 core
layout(location = 0)in vec4 coord;
layout(location = 1)in flat ivec4 icoord;

layout(location = 1) out ivec4 colori;
layout(location = 0) out vec4 color;
layout(location = 2) out vec4 color0;
layout(location = 3) out vec4 color1;
layout(location = 4) out uint coloru;

layout(binding = 0, rgba32f) uniform image1D img0;
layout(binding = 1, r32f) uniform imageBuffer img7;
layout(binding = 2, r32i) uniform iimageBuffer img8;

void main()
{
  imageStore(img7, 2, coord);
  //color1.x = imageSize(img7);
  color = imageLoad(img7, 2);
  coloru = imageAtomicOr(img8, 5, 3);
}

