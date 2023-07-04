#version 460 core
layout(location = 0) in vec4 coord;
layout(location = 1) in flat ivec4 icoord;
layout(location = 2) in vec4 dx;
layout(location = 3) in vec4 dy;
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

layout(location = 0) uniform vec4 u;
layout(location = 1) uniform int index;
void main()
{
  vec4 temp = vec4(0);
  float temp1 = 0;
  const ivec4 offset = {1, 2, 3, 4};
	
  temp1 += textureProjGradOffset(tex13, coord.xyzw, dx.xy, dy.xy, offset.xy);
  temp1 += textureProjGradOffset(tex4, coord.xyzw, dx.x, dy.x, offset.x);
  temp1 += textureProjGradOffset(tex5, coord.xyzw, dx.xy, dy.xy, offset.xy);

  
  temp += textureProjGradOffset(tex0, coord.xy, dx.x, dy.x, offset.x);
  temp += textureProjGradOffset(tex0, coord.xyzw, dx.x, dy.x, offset.x);
  temp += textureProjGradOffset(tex1, coord.xyz, dx.xy, dy.xy, offset.xy);
  temp += textureProjGradOffset(tex1, coord.xyzw, dx.xy, dy.xy, offset.xy);
  temp += textureProjGradOffset(tex2, coord.xyzw, dx.xyz, dy.xyz, offset.xyz);
  temp += textureProjGradOffset(tex12, coord.xyz, dx.xy, dy.xy, offset.xy);
  temp += textureProjGradOffset(tex12, coord.xyzw, dx.xy, dy.xy, offset.xy);
  temp += textureProjGradOffset(tex14[index], coord.xyz, dx.xy, dy.xy, offset.xy);

  color = temp;
  color1 = temp1;
  
}

