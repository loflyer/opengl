#version 400 core
#extension GL_ARB_shader_subroutine : require

precision highp float;

// Subroutine type
subroutine vec4 routine_type(in vec4 left, in vec4 right);

// Subroutine definitions
subroutine(routine_type) vec4 add(in vec4 left, in vec4 right)
{
    return left + right;
}

subroutine(routine_type) vec4 multiply(in vec4 left, in vec4 right)
{
    return left * right;
}

// Sub routine uniform
subroutine uniform routine_type routine[4];

// Input data
uniform vec4  uni_left;
uniform vec4  uni_right;
uniform uvec4 uni_indices;

// Output
out vec4 out_dynamic;

void main()
{
    out_dynamic          
    = routine[uni_indices.x](uni_left, uni_right);
}