#version 460 core
layout(location = 0) in vec4 coord;

layout(location = 0) out vec4 color;
layout(location = 1) out ivec4 colori;
layout(location = 2) out uvec4 coloru;
layout(location = 3) out float color1;

layout(location = 4) out int color2;
layout(location = 5) out float color3;
layout(location = 6) out vec2 color4;


layout(binding=0) uniform isampler1D tex0;
layout(binding=1) uniform isampler2D tex1;
layout(binding=2) uniform isampler3D tex2;
layout(binding=3) uniform isamplerCube tex3;
layout(binding=4) uniform isampler1DArray tex4;
layout(binding=5) uniform isampler2DArray tex5;
layout(binding=6) uniform isamplerCubeArray tex6;
layout(binding=7) uniform isampler2DRect tex7;

layout(location = 0) uniform vec4 u;

void main()
{
  ivec4 temp = ivec4(0);

  temp += texture(tex0, coord.x, u.x) + texture(tex1, coord.xy) + texture(tex2, coord.xyz);
  temp += texture(tex3, coord.xyz) + texture(tex4, coord.xy) + texture(tex5, coord.xyz);
  temp += texture(tex6, coord.xyzw) + texture(tex7, coord.xy);
  
  colori = temp;
}

