#version 440




precision highp float;

#define NUMBER_OF_POINTS 13u

// NUMBER_OF_POINTS == NUMBER_OF_SAMPLERS
     uniform highp usampler2D sampler[NUMBER_OF_POINTS];
	 flat out     uint        vs_gs_vertex_id;
	 uniform     int        loopcnt;
     flat out     uint       vs_gs_sum;

void main()
{
    uint sum = 0u;
    uint index = 2;
    for (uint i = 0u; i < uint(loopcnt); ++i)
    {
	    index += i;
		//if (i < 2)
          sum += texture(sampler[index], vec2(0.0, 0.0)).r;
		//sum += texture(sampler[index + 1], vec2(1.0, 0.0)).r;
    }
    
    gl_Position     = vec4(0, 0, 0, 1.0);
    vs_gs_vertex_id = index;
    vs_gs_sum       = sum;
}
