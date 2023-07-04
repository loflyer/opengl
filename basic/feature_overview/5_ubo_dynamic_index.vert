#version 450 core

in mat2x3 	mat23;
out vec4 v4_data;

uniform UBO0 {
  vec4 a0;
  vec4 b0;
}ubo0[2];

uniform UBO1 {
  vec4 a1[2];
  mat2x3 mat23;
}ubo1[2];

uniform UBO2 {
    vec4 noname2[2];
};

uniform int  index_u;
uniform vec4 defuv[2];

void main(void)
{
    v4_data = ubo0[0].a0 + ubo1[index_u+1].a1[1] + noname2[index_u*2] + noname2[0] + defuv[index_u];
}