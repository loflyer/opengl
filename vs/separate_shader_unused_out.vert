#version 450 core
in  double  din_x;
in  float   fin_x;
in  vec4    vin_x;
uniform int index;


out float   fout_a;
out double  dout_a;
out vec4    vout_arr[2];
out vec4    vout_parital_arr[2];
out vec4    vout_unsue_arr[2];
out mat2x4  mout_partial_mat;

void main(void)
{
    fout_a        += float(din_x);
    vout_arr[index]=vin_x;
    vout_parital_arr[1] = vin_x;
    mout_partial_mat[0] = vin_x;
}
