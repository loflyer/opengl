#version 450 core
layout(location = 0) in vec4 coord;

layout(location = 0) out vec4 color;
layout(location = 1) out ivec4 colori;
layout(location = 2) out uvec4 coloru;
layout(location = 3) out float color1;

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



layout(location = 0) uniform vec4 u;

void main()
{
  vec4 temp0 = vec4(0);
  float temp1 = 0.0;
  ivec4 temp2 = ivec4(0);
  int temp3 = 0;
 
  temp0 += texture(tex0, coord.x, u.x) + texture(tex1, coord.xy) + texture(tex2, coord.xyz);
  temp0 += texture(tex3, coord.xyz) + texture(tex6, coord.xy) + texture(tex7, coord.xyz);
  temp0 += texture(tex8, coord.xyzw) + texture(tex12, coord.xy);
  
  
  temp1 += texture(tex4, coord.xyz) + texture(tex5, coord.xyz) + texture(tex14, coord.xyzw);
  temp1 += texture(tex9, coord.xyz) + texture(tex10, coord.xyzw) + texture(tex13, coord.xyz) + texture(tex11, coord.xyzw, u.x);
  
  color = temp0;
  color1 = temp1;
}

