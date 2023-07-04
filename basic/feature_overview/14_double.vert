#version 450 core
in  double  din_x;
in  float   fin_x;

out float   fout_a;
out double  dout_a;
out dmat2   dout_mat;

void main(void)
{
    // +-*/
    double a=din_x, b=2.0;
    dout_mat[0].x = a + b;
    dout_mat[0].y = a - b;
    dout_mat[1].x = a*b;
    dout_mat[1].y = a/b;

#if 1
    // >< == !=, convert
    dout_mat[0].x += double(a > b);
    dout_mat[0].y -= double(a < b);
    dout_mat[1].y *= double(a == b);
    dout_mat[1].y *= double(a != b);

    // convert, f to d, d to f
    dout_mat[0].x += fin_x;
    fout_a        += float(din_x);

    // fneg
    dout_mat[1].x += -a;
#endif
}
