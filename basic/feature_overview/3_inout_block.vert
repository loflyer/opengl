#version 450

layout (location = 0) out Lights {
 float fLight;
 vec4 LightPos[2];
};

layout (location = 3) out ColoredBlk {
 float fColor;
 vec2 TexCoord[2];
} outBlk[2];

uniform Camera {
 float fCamera;
 vec4 CamerPos[2];
};

uniform Blk {
 float fTex;
 vec2 TexCoord[2];
} uBlk;

uniform int index_u;

void main()
{
    LightPos[0] = CamerPos[1];
    fLight      = fCamera;

    outBlk[1].TexCoord[1] = uBlk.TexCoord[1];

    outBlk[index_u].fColor      = uBlk.fTex;
}