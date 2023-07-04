#version 400

#extension GL_ARB_shader_subroutine : require

subroutine int ExampleSubroutineType(int example_argument);

uniform int data_i;

out int outdata;


subroutine(ExampleSubroutineType) int subroutine1(int example_argument)
{
    outdata = 1+ data_i;
    return 1 + data_i;
}

subroutine(ExampleSubroutineType) int subroutine2(int example_argument)
{
    outdata = 2 * data_i;
    return 2 * data_i;
}

subroutine uniform ExampleSubroutineType data_provider;

void main()
{
    gl_Position = vec4(float(data_provider(0)), vec3(1) );
}