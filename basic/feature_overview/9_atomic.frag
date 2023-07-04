#version 450 core
out vec4 color;

layout(binding=0, offset=0) uniform atomic_uint ac;
void main(void)
{
  uint counter = atomicCounter(ac);
  if (counter < 10)
    color = vec4(1, 0, 0, 1);
  else
    color = vec4(0, 0, 0, 1);
}