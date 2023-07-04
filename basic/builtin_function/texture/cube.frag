#version 460 core
layout(location = 0) in vec4 coord;
layout(location = 0) out vec4 color0;
layout(location = 1) out vec2 color1;

layout(binding=3) uniform samplerCube tex3;
layout(binding=8) uniform samplerCubeArray tex8;

void main()
{
  color1 = textureQueryLod(tex3, coord.xyz);
  color0 = texture(tex8, coord.xyzw);
}

