#version 450

uniform int index_u;
in  vec4 texCoord_in[3];
out vec4 texCoord_out[2];
out vec4 outData0;

void main()
{
    gl_Position = texCoord_in[0];
    outData0    = vec4(1.0f, 1.0f, 1.0f, float(index_u));
    texCoord_out[0] = texCoord_in[1];
}