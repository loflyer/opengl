#version 460 core

layout(std430, row_major) buffer;

layout(binding = 0) readonly buffer Input {
  vec2 input0[2];
};

layout(std430, binding = 4) buffer Output {
  int out_length[2];
};
void main() {
  out_length[0] = input0.length();
}
