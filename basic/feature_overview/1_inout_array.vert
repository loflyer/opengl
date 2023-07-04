#version 450

uniform int index_u;

layout (location = 0) in  vec4 inData[2];
layout (location = 0) out vec4 outData[2];

void main()
{
    gl_Position    = vec4(1.0f, 1.0f, 1.0f, float(index_u));
    outData[0] = inData[1];
    outData[1] = inData[0];
}