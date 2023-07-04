#version 400 core

precision highp float;

layout(std140) uniform UniformBlock
{
    dmat2 uniform_array[512];
};

out int result;

void main()
{
    int verification_result = 1;

    for (int i = 0; i < 512; ++i)
    {
        if (dmat2(i * (4) + 1, i * (4) + 2, i * (4) + 3, i * (4) + 4) != uniform_array[i])
        {
           verification_result = 2;
        }
    }

    result = verification_result;
}