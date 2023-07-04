#version 450 core

uniform int data_i;
uniform int data_u;
uniform vec4 data_0;
uniform vec4 data_1;

vec4 function_calc_0(vec4 data_i)
{
    return data_i + data_i/2;
}

vec4 function_calc_1(vec4 data_i)
{
    return data_i * data_i/2;
}

void main()
{
    switch (data_i)
    {
        case 0:
            gl_Position = function_calc_0(data_0);
            break;
        case 1:
            gl_Position = function_calc_1(data_1);
        case 2:
            gl_Position = vec4(1.0, 1.0, 1.0, 1.0);
        default:
        {
            if (data_u == 0)
                gl_Position = vec4(2.0, 1.0, 1.0, 1.0);
            else
            {
                switch(data_u)
                {
                    case 1:
                        gl_Position = vec4(2.0, 1.0, 1.0, 1.0);
                        break;
                    default:
                        gl_Position = vec4(3.0, 1.0, 1.0, 1.0);
                        break;
                }
            }
        }
    }

}