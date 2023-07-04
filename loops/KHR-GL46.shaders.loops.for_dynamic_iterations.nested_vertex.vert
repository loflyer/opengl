#version 450 core
in highp vec4 a_position;
in highp vec4 a_coords;
in mediump float a_one;
out mediump vec3 v_color;
uniform mediump int ui_zero, ui_one, ui_two, ui_three, ui_four, ui_five, ui_six;

void main()
{
    gl_Position = a_position;
    mediump int one = int(a_one + 0.5);
    mediump vec4 coords = a_coords;
 mediump vec4 res = coords;
 for (mediump int i = 0; i < one*ui_two; i++)
 {
     for (mediump int j = 0; j < one*ui_three; j++)
         res = res.yzwx;
 }
    v_color = res.rgb;
}