#version 450

layout(location = 0) in vec4 v_indata;

layout(location = 0) out vec4 v_coords;

struct T {
    vec4   a[2];
    mat2x3 b[2];
    int    c;
};
layout (location = 1) flat out T myStru;

void main()
{
    v_coords = v_indata;
    myStru.a[0] = vec4(1.0,2.0,3.0,4.0);
    myStru.a[1] = v_indata;
    myStru.b[0][0].xy = v_indata.xy;
    myStru.b[1][1].xy = v_indata.zw;
    myStru.c    = 2;
}