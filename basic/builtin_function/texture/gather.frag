#version 460 core
layout(location = 0) in vec4 coord;
layout(location = 1) in flat ivec4 icoord;

layout(location = 0) out vec4 color;
layout(location = 1) out ivec4 colori;
layout(location = 2) out uvec4 coloru;
layout(location = 3) out float color1;

layout(location = 4) out int color2;
layout(location = 5) out float color3;
layout(location = 6) out vec2 color4;

layout(binding=0) uniform sampler1D tex0;
layout(binding=1) uniform sampler2D tex1;
layout(binding=2) uniform sampler3D tex2;
layout(binding=3) uniform samplerCube tex3;
layout(binding=4) uniform sampler1DShadow tex4;
layout(binding=5) uniform sampler2DShadow tex5;
layout(binding=6) uniform sampler2D tex6[6];


layout(location=0) uniform vec4 u;
layout(location=1) uniform int index;

void main()
{
  const ivec4 c = {0, 1, 2, 3};
  const ivec2 offsets[4] = {{0, 1}, {2, 3}, {4, 5}, {6, 7}};
  color = textureGather(tex1, coord.xy, c.z);
  color += textureGatherOffsets(tex1, coord.xy, offsets, c.z);
  color += textureGatherOffsets(tex5, coord.xy, coord.w, offsets);
color += textureGatherOffsets(tex6[index], coord.xy, offsets, c.z);
}

