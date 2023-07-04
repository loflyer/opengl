#version 460 core
layout(location = 0) in vec4 input0;
layout(location = 1) in vec4 input1;
layout(location = 0) out vec4 color0;
layout(location = 1) out vec4 color1;
layout(location = 0) uniform vec4 u;
layout(location = 1) uniform int index;
void main()
{
  vec4 temp = vec4(0, 0, 0, 0);
  vec2 offset = vec2(2.0, 3.0);
  temp += interpolateAtCentroid(input0);
  temp += vec4(interpolateAtCentroid(input0.xz), 0, 0);
  
  temp.x += interpolateAtSample(input0.x, 2);
  
  temp.xz += interpolateAtOffset(input0.yw, offset);

  color0 = temp;
}
