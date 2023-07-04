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

layout(location = 4) out ivec4 color2i;


layout(binding=1) uniform sampler2D tex1[2];
layout(binding=2) uniform sampler1DArray tex2[2];
layout(binding=3) uniform sampler2DArrayShadow tex3[2];
layout(binding=4) uniform sampler2DMS tex4[2];
layout(binding=5) uniform sampler2DMSArray tex5[2];

layout(rgba32f) uniform readonly image1D img;
uniform vec4 u;

void main()
{
  color.xyzw = ivec4(textureSize(tex2[index], icoord.x), 1, 1) * 1.0;
  color2i = ivec4(textureSize(tex4[index1]), textureQueryLevels(tex1[index2]), textureSamples(tex5[index3]));
  
  color += vec4(textureQueryLod(tex1[index4], coord.xy), textureQueryLod(tex3[index5], coord.xy));
}
