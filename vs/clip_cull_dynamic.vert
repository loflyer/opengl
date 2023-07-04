#version 130

out float gl_ClipDistance[gl_MaxClipDistances];

void main()
{
 for(int i = 0; i < gl_MaxClipDistances; i++)
 {
 gl_ClipDistance[i] = float(i + 1) / float(gl_MaxClipDistances);
 }

 gl_Position = vec4(0.0, 0.0, 0.0, 1.0);
}