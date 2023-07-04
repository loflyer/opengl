#version 460 core
layout(location = 0) in vec4 coord;
layout(location = 1) in flat ivec4 icoord;
layout(location = 0) out vec4 color;
layout(location = 1) out ivec4 colori;
layout(location = 2) out uvec4 coloru;
layout(location = 3) out float color1;

layout(location = 4) out ivec4 color2i;
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

layout(location = 0) uniform vec4 u;

void main()
{
  int c = int(coord.x);

  color.xyzw = ivec4(textureSize(tex6, icoord.x), 1, 1) * 1.0;
  color2i = ivec4(textureSize(tex15), textureQueryLevels(tex1), textureSamples(tex16));
  
  color += vec4(textureQueryLod(tex1, coord.xy), textureQueryLod(tex10, coord.xy));
}

