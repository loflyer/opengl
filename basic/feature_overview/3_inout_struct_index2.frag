#version 450 core
layout(location = 0) in vec4 v_coords;

layout(location = 0) out vec4 o_color;

struct T {
    vec4   a[2];
    mat2x3 b[2];
    int    c;
};
layout (location = 1) flat in T myStru;

void main (void)
{
    vec4 r = myStru.a[0] + myStru.a[1] + vec4(myStru.b[0][0].xy, myStru.b[1][1].xy);
    r += vec4(float(myStru.c), 1.0, 2.0, 3.0);
    o_color = r;
}