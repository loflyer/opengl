#version 460

layout(location = 0) out  vec4 out_color;

struct T {
     float   v1;
     float   v2[2];
	 int     v3;
}stru;

void main (void)
{
     float r = stru.v1;
     float g = stru.v2[0];
     float b = stru.v2[1];
     float a = stru.v3;
    out_color = vec4(r, g, b, a);
    
}