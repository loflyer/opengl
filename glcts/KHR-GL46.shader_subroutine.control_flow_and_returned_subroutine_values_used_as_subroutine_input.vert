#version 400

subroutine bool bool_processor();
subroutine vec4 vec4_processor(in vec4 iparam);

subroutine(bool_processor) bool returnsFalse()
{
    return false;
}

subroutine(bool_processor) bool returnsTrue()
{
    return true;
}

subroutine(vec4_processor) vec4 divideByTwo(in vec4 iparam)
{
    return iparam * vec4(0.5);
}

subroutine(vec4_processor) vec4 multiplyByFour(in vec4 iparam)
{
    return iparam * vec4(4.0);
}

subroutine uniform bool_processor bool_operator1;
subroutine uniform bool_processor bool_operator2;
subroutine uniform vec4_processor vec4_operator1;
subroutine uniform vec4_processor vec4_operator2;

out float result;

void main()
{
    if (bool_operator1() )
    {
        float value = float( (3 * gl_VertexID + 1) * 2);

        while (bool_operator1() )
        {
            value /= float(gl_VertexID + 2);

            if (value <= 1.0f) break;
        }

        result = value;
    }
    else
    {
        vec4 value = vec4(gl_VertexID,     gl_VertexID + 1,
                          gl_VertexID + 2, gl_VertexID + 3);

        switch (gl_VertexID % 2)
        {
            case 0:
            {
                for (int iteration = 0; iteration < gl_VertexID && bool_operator2(); ++iteration)
                {
                    value = vec4_operator2(vec4_operator1(value));
                }

                break;
            }

            case 1:
            {
                for (int iteration = 0; iteration < gl_VertexID * 2; ++iteration)
                {
                    value = vec4_operator1(vec4_operator2(value));
                }

                break;
            }
        }

        result = value.x + value.y + value.z + value.w;

    }
}
