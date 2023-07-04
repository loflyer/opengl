#version 450
#extension GL_ARB_enhanced_layouts : require

layout(points)                           in;
layout(triangle_strip, max_vertices = 4) out;

     in  uint tes_gs_result[];
     flat out uint gs_fs_result;

out gl_PerVertex {
vec4 gl_Position;
};

/* Globals */


/* Structures */
struct Data {
    double single;
    double array[1];
};

/* Uniforms */


/* Inputs */
layout (location = 0) flat in Data tes_gs_output[][1];

/* Outputs */
layout (location = 0) out Data gs_fs_output[1];

/* Storage */


void main()
{
    uint result = 1u;

    if (1u != tes_gs_result[0])
    {
         result = tes_gs_result[0];
    }
    else if ((double(-0.625) != tes_gs_output[0][0].single) ||
        (double(-0.5) != tes_gs_output[0][0].array[0]))
    {
        result = 0u;
    }

    gs_fs_result = result;
    gs_fs_output[0].single = tes_gs_output[0][0].single;;
    gs_fs_output[0].array[0] = tes_gs_output[0][0].array[0];
    gl_Position  = vec4(-1, -1, 0, 1);
    EmitVertex();
    gs_fs_result = result;
    gs_fs_output[0].single = tes_gs_output[0][0].single;;
    gs_fs_output[0].array[0] = tes_gs_output[0][0].array[0];
    gl_Position  = vec4(-1, 1, 0, 1);
    EmitVertex();
    gs_fs_result = result;
    gs_fs_output[0].single = tes_gs_output[0][0].single;;
    gs_fs_output[0].array[0] = tes_gs_output[0][0].array[0];
    gl_Position  = vec4(1, -1, 0, 1);
    EmitVertex();
    gs_fs_result = result;
    gs_fs_output[0].single = tes_gs_output[0][0].single;;
    gs_fs_output[0].array[0] = tes_gs_output[0][0].array[0];
    gl_Position  = vec4(1, 1, 0, 1);
    EmitVertex();
}