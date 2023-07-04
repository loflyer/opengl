
// for the last case, the (OpCode == DXIL_EXT_SAMPLE_CMP), in this situation, lod is also from smp_lod, need fp2fx
#version 450 core
in vec4 coord;
in flat ivec4 icoord;

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
layout(binding=10) uniform sampler2DArrayShadow tex10;
layout(binding=11) uniform samplerCubeArrayShadow tex11;
layout(binding=12) uniform sampler2DRect tex12;
layout(binding=13) uniform sampler2DRectShadow tex13;
layout(binding=14) uniform samplerCubeShadow tex14;
layout(binding=15) uniform sampler2DMS tex15;
layout(binding=16) uniform sampler2DMSArray tex16;
uniform ivec4 u;

void main()
{
  vec4 temp = vec4(0);
  float temp1 = 0;
  const ivec4 offset = {1, 2, 3, 4};
  
  //temp += textureLodOffset(tex0, coord.x, coord.w, offset.x);
  //temp += textureLodOffset(tex1, coord.xy, coord.w, offset.xy);
  //temp += textureLodOffset(tex2, coord.xyz, coord.w, offset.xyz);
  //temp += textureLodOffset(tex6, coord.xy, coord.w, offset.x);
  //temp += textureLodOffset(tex7, coord.xyz, coord.w, offset.xy);
  
  //temp1 += textureLodOffset(tex4, coord.xyz, coord.w, offset.x);
  //temp1 += textureLodOffset(tex5, coord.xyz, coord.w, offset.xy);
  temp1 += textureLodOffset(tex9, coord.xyz, coord.w, offset.x);
  
  color = temp;
  color1 = temp1;
}

