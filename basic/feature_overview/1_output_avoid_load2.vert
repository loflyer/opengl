#version 450

uniform int index_u;

layout (location = 0) in  ivec4 inData0;
layout (location = 1) in  ivec4 inData1;
layout (location = 1) out int  outData[4];
layout (location = 5) out ivec4 outDataVec;

void main()
{
    gl_Position    = inData0 + inData1;
    outData[1]     = inData0.x;

    if (inData0.x > 1)
      outData[1]  += inData1.x;
      
    if (inData0.y > 2)
      outData[1]  |= inData1.z;
    outDataVec = inData1;
}