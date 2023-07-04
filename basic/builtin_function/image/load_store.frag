#version 460 core
layout(location=0)in vec4 coord;
layout(location=1)in flat ivec4 icoord;
layout(location =2) flat in ivec2 icoord2;
layout(location = 3) in flat uvec4 icoordu;
layout(location = 4) flat in int p;

layout(location = 0) out ivec4 colori;
layout(location = 1) out vec4 color;
layout(location = 2) out vec4 color0;
layout(location = 3) out vec4 color1;

layout(location = 4) out int color2;
layout(location = 5) out ivec3 color3;
//layout(location = 6) out vec2 color4;
layout(location = 7) out int color20;

layout(binding = 1, rgba32f) uniform image1D img0;
layout(binding = 2, r32i) uniform iimage1D img01;

layout(binding = 3, rgba32f) uniform image3D img2;

layout(binding = 9, r32i) uniform iimage2DMS img9;
layout(binding = 4, r32i) uniform iimage2DMSArray img10;

layout(binding = 5, r32i) uniform iimage1D img0a;
layout(binding =0, r32ui) uniform uimage1D img0b;
layout(binding = 6, r32ui) uniform uimage2DMSArray img11;
layout(binding=7, r32i) uniform iimage2D img1a;
layout(binding = 8, rgba32f) uniform image2DMSArray img12;

void main()
{ 
  color = imageLoad(img0, icoord.x);
  color0 = imageLoad(img2, icoord.xyz);
  color1 = imageLoad(img12, icoord.xyz, p);
  imageStore(img01, 0, colori);
}