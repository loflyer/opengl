#version 450
#extension GL_ARB_enhanced_layouts : require

out uint vs_tcs_result;

/* Globals */
const uint first_input_location  = 0u;
const uint first_output_location = 0u;
const uint last_input_location   = 15u;
const uint last_output_location  = 30u;
const uint comp_x = 0u;
const uint comp_y = 1u;
const uint comp_z = 2u;
const uint comp_w = 3u;


/* Structures */


/* Uniforms */


/* Inputs */
layout (location = first_input_location, component = comp_x)  in double in_vs_g64scalar_l0_c0;
layout (location = last_input_location, component = comp_x)  in double in_vs_g64scalar_l15_c0;
layout (location = first_input_location, component = comp_z)  in double in_vs_g64scalar_l0_c2;
layout (location = last_input_location, component = comp_z)  in double in_vs_g64scalar_l15_c2;

/* Outputs */
layout (location = first_output_location, component = comp_x)  out double vs_tcs_g64scalar_l0_c0;
layout (location = last_output_location, component = comp_x)  out double vs_tcs_g64scalar_l30_c0;
layout (location = first_output_location, component = comp_z)  out double vs_tcs_g64scalar_l0_c2;
layout (location = last_output_location, component = comp_z)  out double vs_tcs_g64scalar_l30_c2;

/* Storage */


void main()
{
    uint result = 1u;

    if ((double(-0.125) != in_vs_g64scalar_l0_c0) ||
        (double(-0.125) != in_vs_g64scalar_l15_c0) ||
        (double(0) != in_vs_g64scalar_l0_c2) ||
        (double(0) != in_vs_g64scalar_l15_c2))
    {
        result = 0u;
    }


    vs_tcs_result = result;

    vs_tcs_g64scalar_l0_c0 = in_vs_g64scalar_l0_c0;
    vs_tcs_g64scalar_l30_c0 = in_vs_g64scalar_l15_c0;
    vs_tcs_g64scalar_l0_c2 = in_vs_g64scalar_l0_c2;
    vs_tcs_g64scalar_l30_c2 = in_vs_g64scalar_l15_c2;
}

