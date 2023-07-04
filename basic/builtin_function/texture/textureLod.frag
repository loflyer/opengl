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
layout(binding=6) uniform sampler1DArray tex6;
layout(binding=7) uniform sampler2DArray tex7;
layout(binding=8) uniform samplerCubeArray tex8;
layout(binding=9) uniform sampler1DArrayShadow tex9;
layout(binding=10) uniform sampler2D tex10[4];

layout(location = 0) uniform ivec4 u;
layout(location = 1) uniform int index;
void main()
{
  vec4 temp = vec4(0);
  float temp1 = 0;
  
  temp += textureLod(tex0, coord.x, coord.w);
  temp += textureLod(tex1, coord.xy, coord.w);
  temp += textureLod(tex2, coord.xyz, coord.w);
  temp += textureLod(tex3, coord.xyz, coord.w);
  temp += textureLod(tex6, coord.xy, coord.w);
  temp += textureLod(tex7, coord.xyz, coord.w);
  temp += textureLod(tex8, coord.xyzw, coord.w);
  temp += textureLod(tex10[index], coord.xy, coord.w);
  
  temp1 += textureLod(tex4, coord.xyz, coord.w);
  temp1 += textureLod(tex5, coord.xyz, coord.w);
  temp1 += textureLod(tex9, coord.xyz, coord.w);
  
  color = temp;
  color1 = temp1;
}

