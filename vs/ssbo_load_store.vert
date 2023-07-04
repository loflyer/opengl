#version 450 core

layout(std430, binding = 0) buffer Input {
  ivec4 data0;
  vec3 data1;
  uvec4 data2;
  ivec4 data3;
  vec4 data4;
  mat4 data5;
} g_input;
layout(std430, binding = 1) buffer Output {
  ivec4 data0;
  vec3 data1;
  uvec4 data2;
  ivec4 data3;
  vec4 data4;
  mat4 data5;
} g_output;
uniform vec3 g_value0 = vec3(10, 20, 30);
uniform int g_index1 = 1;
void main() {
  int index0 = 0;
  g_output.data0.wzyx = g_input.data0;
  g_output.data1 = g_input.data1.zyx;
  g_output.data2.xwy = g_input.data2.wzx;
  g_output.data3.xw = ivec2(10, 20);
  g_output.data3.zy = g_input.data3.yw;
  g_output.data4.wx = g_value0.xz;
  g_output.data4.wx += g_value0.yy;
  g_output.data4.yz = g_input.data4.xx + g_input.data4.wx;
  g_output.data5[g_index1 - 1].wyzx = vec4(1, 2, 3, 4);
  g_output.data5[g_index1 + index0] = g_input.data5[g_index1].wzyx;
  g_output.data5[1 + g_index1] = g_input.data5[g_index1 + 1].yyyy;
  g_output.data5[5 - g_index1 - 1].wx = g_input.data5[4 - g_index1].xw;
}