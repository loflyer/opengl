#version 450 core
in highp vec4 a_position;
in highp vec4 a_coords;
out mediump vec3 v_color;
uniform mediump int ui_zero, ui_one, ui_two, ui_three, ui_four, ui_five, ui_six;

void main()
{
    gl_Position = a_position;
    mediump vec4 coords = a_coords;
 mediump vec4 res = coords;
 mediump int i = 0;
 while (i++ < 2)
 {
     mediump int j = 0;
     while (j++ < 3)
         res = res.yzwx;
 }
    v_color = res.rgb;
}