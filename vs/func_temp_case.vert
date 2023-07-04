#version 330
in highp vec4 a_position;
in highp vec4 a_coords;
out mediump vec4 v_color;
uniform int ui_zero;
uniform int ui_one;
uniform int ui_two;
uniform int ui_three;

struct S {
    mediump float   a;
    mediump int     b;
};

void main (void)
{
    S s[3];
    s[0] = S(a_coords.x, 0);
    s[1].a = a_coords.y;
    s[1].b = -1;
    s[2] = S(a_coords.z, 2);

    mediump float rgb[3];
    for (int i = 0; i < ui_one; i++)
    {
        rgb[i] = s[2-i].a;
    }

    v_color = vec4(rgb[0], a_coords.y, a_coords.x, 1);
    gl_Position = a_position;
}
