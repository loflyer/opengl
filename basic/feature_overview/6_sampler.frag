#version 450 core

// block and struct
struct str1 {
   sampler2D smp;
   vec2  v2coord;
   sampler2D smp2;
   sampler2D smp4[2];
};

uniform str1 var_st1[2];

layout(binding=0) uniform sampler1D tex0;

uniform int index_u;
in flat ivec4 icoord;
in flat ivec4 icoord1;

out     vec4 result;

void main()
{
    float coord = 2.0;

    result = texture(tex0, coord);
    result += texture(var_st1[0].smp2, var_st1[0].v2coord);
    result += texture(var_st1[0].smp4[index_u], var_st1[0].v2coord);
}