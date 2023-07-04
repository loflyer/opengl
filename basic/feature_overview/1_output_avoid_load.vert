#version 450

uniform int index_u;

layout (location = 0) in  vec4 inData0;
layout (location = 1) in  vec4 inData1;
layout (location = 2) in  vec4 inData2;
layout (location = 1) out vec4 outData[4];

void main()
{
    gl_Position    = inData0 + inData1;
    outData[1]     = inData0;

    if (inData0.x > 0.5)
      outData[1]  += inData1;
      
    if (inData0.y > 1.0)
      outData[1]  += inData2;
}