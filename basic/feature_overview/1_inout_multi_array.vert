#version 450

uniform int index_u;
in  vec4 texCoord_in[3][2];
out vec4 texCoord_out[2][2];

void main()
{
    gl_Position = texCoord_in[0][0];
    texCoord_out[0][1] = texCoord_in[1][1];
    texCoord_out[1][1] = texCoord_in[index_u][0];
}