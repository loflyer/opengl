#version 450 core

in double x1;
out double rst1;

in dvec3 x2;
out dvec3 rst2;

layout (location = 0) in dvec4 x3;
layout (location = 0) out dvec4 rst3;

layout (location = 1) in dmat2x3 m4;
layout (location = 2) out dmat2x3 rstm4;

void main() {

  rst2 = abs(x2);
  rst3 = abs(x3);
  rst1 = abs(x1);
  rstm4[0] = m4[0];
  rstm4[1] = m4[1];
}