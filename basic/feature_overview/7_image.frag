#version 450 core
in vec4 coord;
in flat ivec4 icoord;

in flat int index;
in flat int index1;
in flat int index2;
in flat int index3;
in flat int index4;
in flat int index5;

layout(location = 0) out vec4 color;
//layout(location = 1) out ivec4 colori;
layout(location = 2) out uvec4 coloru;
layout(location = 3) out float color1;

layout(location = 4) out int color2;
layout(location = 5) out float color3;
layout(location = 6) out vec2 color4;

layout(rgba32f) uniform image1D img0[2];
layout(r32f) uniform imageBuffer img7[2];
layout(rgba32f) uniform image2DRect img8;
layout(rgba32f) uniform image2DMS img9[2];


uniform ivec4 u;

void main()
{

  ivec4 colori = ivec4(imageSize(img0[index]), imageSize(img7[index1]), imageSize(img9[index2]));

  color = imageLoad(img8, icoord.zw);
  imageStore(img8, icoord.xy, coord);

  imageStore(img7[1], icoord.x, coord);

}

