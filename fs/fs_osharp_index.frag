#version 460 core                     
layout(binding=2) uniform sampler3D tex2;
uniform  vec4 coord;
flat in uint x;
out vec4 FragColor[3];

void main(void)                       
{   
   FragColor[x] = texture(tex2, coord.xyz);
}
