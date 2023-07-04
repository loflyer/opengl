#version 450 core

in mat2x3 	mat23;
out vec4 v4_data;

struct struct_test1 {
  vec4 a;
  vec4 b[2];
};

uniform UBO0 {
  vec4 a;
  struct_test1 b[2];
}ubo0[2];

uniform UBO1 {
  vec4 a;
  mat2x3 mat23;
}ubo1;

uniform mat4 ma4;
uniform int index_u;

uniform struct_test1 aa[2][2];


void main(void)
{
    v4_data = ubo0[0].b[1].b[1] + aa[1][1].a + ubo1.a + vec4(mat23[0], 0.1);
}