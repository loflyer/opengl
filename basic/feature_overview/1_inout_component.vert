#version 450

layout(location = 0, component = 0) in vec2 normal;
layout(location = 0, component = 2) in vec2 normal2;
layout(location = 2, component = 0) out vec4 lightColor;

void main()
{
   lightColor = vec4(normal, normal2);
}
