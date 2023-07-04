#version 460 core
#extension GL_ARB_derivative_control : enable
layout(location = 0) in mediump float v0;
layout(location = 1) in mediump vec2  v1;
layout(location = 2) in mediump vec3  v2;
layout(location = 3) in mediump vec4  v3;
layout(location = 0) out mediump vec4 o_color;

void main (void)
{
 vec4 temp = vec4(0);
 vec4 temp1 = vec4(0);
 vec4 temp2 = vec4(0);
 vec4 temp3 = vec4(0);
 
 temp.x = dFdx(v0);
 temp.y = dFdy(v0);
 temp.z = dFdxFine(v0);
 temp.w = dFdyFine(v0);
 
 temp1.x = dFdxCoarse(v0);
 temp1.y = dFdyCoarse(v0);
 temp1.z = fwidth(v0);
 temp1.w = fwidthFine(v0);
 
 temp3 = fwidth(v3) + fwidthFine(v3) + fwidthCoarse(v3);
 o_color = temp + temp1 + temp2 + temp3;
    
}