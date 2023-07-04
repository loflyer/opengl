#version 450
#extension GL_ARB_enhanced_layouts : require

out uint vs_tcs_result;

/* Globals */


/* Structures */
struct Data {
    double single;
    double array[1];
};

/* Uniforms */


/* Inputs */
layout (location = 0) in double vs_in_single[1];
layout (location = 8) in double vs_in_array[1];

/* Outputs */
layout (location = 0) out Data vs_tcs_output[1];

/* Storage */


void main()
{
    uint result = 1u;

    if ((double(-0.625) != vs_in_single[0]) ||
        (double(-0.5) != vs_in_array[0]))
    {
        result = 0u;
    }


    vs_tcs_result = result;

        vs_tcs_output[0].single   = vs_in_single[0];
    vs_tcs_output[0].array[0] = vs_in_array[0];

}

