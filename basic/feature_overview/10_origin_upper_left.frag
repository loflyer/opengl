#version 450 compatibility

layout(origin_upper_left) in vec4 gl_FragCoord;

void main()
{
    gl_FragColor = gl_FragCoord.xyzz; // meanless, just for test.
}