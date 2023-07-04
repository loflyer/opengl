#version 450 core

in mat2x3 	mat23;
out vec4 v4_data;

struct struct_test1 {
  vec4 a;
  vec4 b[2];
};

struct struct_test2 {
  vec4 a;
  struct_test1 b[2];
};

uniform mat4 ma4;
uniform int index_u;

uniform struct_test2 tt2[2];

uniform struct_test1 aa[2][2];


void main(void)
{
    v4_data = aa[0][0].a;
    v4_data += aa[1][1].b[1];
    v4_data += tt2[1].b[1].b[1];
    v4_data += vec4(mat23[0], 0.1);
}