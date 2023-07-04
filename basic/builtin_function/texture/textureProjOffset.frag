#version 460 core
layout(location = 0) in vec4 coord;

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
layout(binding=14) uniform sampler2D tex14[2];

layout(location=0) uniform vec4 u;
layout(location=1) uniform int index;
void main()
{
  const ivec4 offset = {1, 2, 3, 4};
  vec4 temp = vec4(0);
  float temp1 = 0;
  
  temp1 += textureProjOffset(tex4, coord.xyzw, offset.x, u.x);
  temp1 += textureProjOffset(tex5, coord.xyzw, offset.xy);
  temp1 += textureProjOffset(tex13, coord.xyzw, offset.xy);
  
  temp += textureProjOffset(tex0, coord.xy, offset.x);
  temp += textureProjOffset(tex0, coord.xyzw, offset.x);
  temp += textureProjOffset(tex1, coord.xyz, offset.xy);
  temp += textureProjOffset(tex1, coord.xyzw, offset.xy);
  temp += textureProjOffset(tex2, coord.xyzw, offset.xyz);
  temp += textureProjOffset(tex12, coord.xyzw, offset.xy);
  temp += textureProjOffset(tex12, coord.xyz, offset.xy);
  temp += textureProjOffset(tex14[index], coord.xyz, offset.xy);

  color = temp;
  color1 = temp1;
}

