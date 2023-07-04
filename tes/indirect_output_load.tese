#version 440



precision highp float;

layout (isolines, point_mode) in;

in Vertex
{
    vec4 value[(gl_MaxTessEvaluationInputComponents - 4) / 4];
} inVariables[];

out Vertex
{
    vec4 value[(gl_MaxTessEvaluationOutputComponents - 4) / 4];
} outVariables;

void main()
{
    gl_Position = gl_in[0].gl_Position;

    for (int j = 0; j < (gl_MaxTessEvaluationOutputComponents - 4) / 4; j++)
    {
        outVariables.value[j] = vec4(float(4*j), float(4*j) + 1.0, float(4*j) + 2.0, float(4*j) + 3.0);

        for (int i = 0 ; i < (gl_MaxTessEvaluationInputComponents - 4) / 4; i++)
        {
            outVariables.value[j] += inVariables[0].value[i];
        }
    }
}
