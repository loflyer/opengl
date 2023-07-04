#version 460 core
out vec4 rgbaColor;
out vec4 rgbaColor2;
smooth in vec3 iColor;
noperspective in vec3 iColor2;

void main()
{
    rgbaColor = vec4(iColor,1.0);
    rgbaColor2 = vec4(iColor2,2.0);
}

