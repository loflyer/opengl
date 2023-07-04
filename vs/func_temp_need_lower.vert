#version 450

uniform int index_u;
in  vec4 texCoord_in[3];
out vec4 texCoord_out[2];
out vec4 outData0;

void main()
{
    float tempArray[8*16];

    for (int i = 0; i < 8*16; i++) {
        tempArray[i] = index_u + i;
    }

    float result = 0;
    for (int i = 0; i < 8*16; i++) {
        result += tempArray[i];
    }

    gl_Position = texCoord_in[0];
    outData0    = vec4(1.0f, 1.0f, result, float(index_u));
    texCoord_out[0] = texCoord_in[1];
}