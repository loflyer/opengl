	 
#version 400

layout(vertices = 3) out;

uniform vec4 tess_params;

struct pn_patch
{
  float b210;
  float b120;
  float b021;
  float b012;
  float b102;
  float b201;
  float b111;
  float n110;
  float n011;
  float n101;
};

in vec4 v_normal[];
in vec4 v_uv[];

out vec4 tcs_normal[3];
out vec4 tcs_uv[3];
out pn_patch tcs_patch[3];



float wij(int i, int j)
{
	return dot(gl_in[j].gl_Position.xyz - gl_in[i].gl_Position.xyz, v_normal[i].xyz);
}

float vij(int i, int j)
{
	vec3 Pj_minus_Pi = gl_in[j].gl_Position.xyz - gl_in[i].gl_Position.xyz;
	vec3 Ni_plus_Nj  = v_normal[i].xyz + v_normal[j].xyz;
	return 2.0*dot(Pj_minus_Pi, Ni_plus_Nj) / dot(Pj_minus_Pi, Pj_minus_Pi);
}



void main()
{
	// get data
	gl_out[gl_InvocationID].gl_Position = gl_in[gl_InvocationID].gl_Position;
  
	tcs_normal[gl_InvocationID]  = v_normal[gl_InvocationID];
	tcs_uv[gl_InvocationID]  = v_uv[gl_InvocationID];

	// set base 
  float P0 = gl_in[0].gl_Position[gl_InvocationID];
	float P1 = gl_in[1].gl_Position[gl_InvocationID];
	float P2 = gl_in[2].gl_Position[gl_InvocationID];
	float N0 = v_normal[0][gl_InvocationID];
	float N1 = v_normal[1][gl_InvocationID];
	float N2 = v_normal[2][gl_InvocationID];
  

	// compute control points
	tcs_patch[gl_InvocationID].b210 = (2.0*P0 + P1 - wij(0,1)*N0)/3.0;
	tcs_patch[gl_InvocationID].b120 = (2.0*P1 + P0 - wij(1,0)*N1)/3.0;
	tcs_patch[gl_InvocationID].b021 = (2.0*P1 + P2 - wij(1,2)*N1)/3.0;
	tcs_patch[gl_InvocationID].b012 = (2.0*P2 + P1 - wij(2,1)*N2)/3.0;
	tcs_patch[gl_InvocationID].b102 = (2.0*P2 + P0 - wij(2,0)*N2)/3.0;
	tcs_patch[gl_InvocationID].b201 = (2.0*P0 + P2 - wij(0,2)*N0)/3.0;
	
  float E = ( tcs_patch[gl_InvocationID].b210
			+ tcs_patch[gl_InvocationID].b120
			+ tcs_patch[gl_InvocationID].b021
			+ tcs_patch[gl_InvocationID].b012
			+ tcs_patch[gl_InvocationID].b102
			+ tcs_patch[gl_InvocationID].b201 ) / 6.0;
	
  float V = (P0 + P1 + P2) / 3.0;
	
  tcs_patch[gl_InvocationID].b111 = E + (E - V)*0.5;
	tcs_patch[gl_InvocationID].n110 = N0+N1-vij(0,1)*(P1-P0);
	tcs_patch[gl_InvocationID].n011 = N1+N2-vij(1,2)*(P2-P1);
	tcs_patch[gl_InvocationID].n101 = N2+N0-vij(2,0)*(P0-P2);

  float tessLevelOuter = tess_params.x;
  float tessLevelInner  = tess_params.y;

  gl_TessLevelOuter[gl_InvocationID] = tessLevelOuter;
	gl_TessLevelInner[0] = tessLevelInner;
}

  