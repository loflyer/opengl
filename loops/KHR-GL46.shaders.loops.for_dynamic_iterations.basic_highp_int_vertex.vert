#version 450 core
in highp vec4 a_position;
in highp vec4 a_coords;
in mediump float a_one;
out mediump vec3 v_color;
uniform highp int ui_three;

void main()
{
    gl_Position = a_position;
    mediump vec4 coords = a_coords;
    highp int one = int(a_one + 0.5);
 mediump vec4 res = coords;
 for (highp int ndx = 0; ndx < ui_three*one; ndx++)
 {
        res = res.yzwx;
 }
    v_color = res.rgb;
}