#version 450

layout(xfb_buffer = 0, xfb_offset = 0) out Light {
 vec4 LightPos[4];
};
layout(xfb_buffer = 1, xfb_offset = 8) out ColoredTexture {
 vec2 TexCoord[4];
} Material;

uniform Camera {
 vec4 CamerPos[4];
};
uniform Texture {
 vec2 TexCoord[4];
} Material2;

void main()
{
    LightPos = CamerPos;
    Material.TexCoord = Material2.TexCoord;
}

