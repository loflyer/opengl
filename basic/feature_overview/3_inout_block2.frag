#version 450

in Lights {
 float fLight;
 vec4 LightPos[2];
};

in ColoredTexture {
 float fColor;
 vec4 TexCoord[2];
} Material[2];

out vec4 vLight;
out vec4 vColor;

uniform int index_u;

void main()
{
    vLight = LightPos[index_u];
    vColor = Material[1].TexCoord[1];
}