#version 460 core
layout(location = 0) in vec4 coord;
layout(location = 1) in flat ivec4 icoord;
layout(location = 2) in flat ivec4 icoord1;
layout(location = 3) in flat int index;
layout(location = 0) out vec4 color;

layout(binding=0) uniform sampler1D tex0;
layout(binding=1) uniform sampler2D tex1;
layout(binding=2) uniform sampler3D tex2;
layout(binding=3) uniform samplerCube tex3;
layout(binding=4) uniform sampler1DShadow tex4;
layout(binding=5) uniform sampler2DShadow tex5;
layout(binding=6) uniform sampler1DArray tex6;
layout(binding=7) uniform sampler2DArray tex7;
layout(binding=0) uniform sampler1D tex8[4];
layout(binding=12) uniform sampler2DRect tex12;
layout(binding=13) uniform sampler2DRectShadow tex13;
layout(binding=14) uniform samplerCubeShadow tex14;
layout(binding=15) uniform sampler2DMS tex15;
layout(binding=16) uniform sampler2DMSArray tex16;
layout(binding=17) uniform samplerBuffer tex17;

void main()
{
  
  vec4 temp = vec4(0);
  
  temp += texelFetch(tex0, icoord.x, icoord1.x);
  temp += texelFetch(tex1, icoord.xy, icoord1.x);
  temp += texelFetch(tex2, icoord.xyz, icoord1.x);
  temp += texelFetch(tex12, icoord.xy);
  temp += texelFetch(tex6, icoord.xy, icoord1.x);
  temp += texelFetch(tex7, icoord.xyz, icoord1.x);
  temp += texelFetch(tex17, icoord.x);
  temp += texelFetch(tex15, icoord.xy, icoord1.x);
  temp += texelFetch(tex16, icoord.xyz, icoord1.x);
  temp += texelFetch(tex8[index], icoord.x, icoord1.x);
  
  color = temp;
}

