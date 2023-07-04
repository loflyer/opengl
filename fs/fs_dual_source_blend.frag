#version 450 core
in vec4 vertexColor0;
in vec4 vertexColor1;
uniform float depth;
layout(location = 0, index = 0) out vec4 outputColor0;
layout(location = 0, index = 1) out vec4 outputColor1;

void main()
{
 outputColor1 = vertexColor1;
 gl_FragDepth = depth + gl_PrimitiveID * 2.0;
 gl_SampleMask[0] = gl_SampleMaskIn[0] & 0x7ff3; 
 outputColor0 = vertexColor0 + gl_FragCoord;
}