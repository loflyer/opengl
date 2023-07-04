#version 430
in highp vec4 a_position;
in highp vec4 a_coords;
out mediump vec4 v_color;
uniform int ui_one;

layout(binding = 0, rgba32f) readonly uniform image2D image_in;

struct S2 {
    sampler2D  smp[4];
};

struct S {
    mediump float   a;
    mediump vec3    b;
    sampler2D       c[2];
    //float         d;
    //sampler1D     e;
    S2              s2[2];
    S2              s3;
};
uniform S s;

void main (void)
{
    v_color = vec4(texture(s.c[1], a_coords.xy * s.b.xy + s.b.z).rgb, texture(s.s2[1].smp[2], a_coords.xy * s.b.xy + s.b.z));
    vec4 res = imageLoad(image_in, ivec2(0,0));
    gl_Position = a_position + res;
}