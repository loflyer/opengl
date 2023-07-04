#version 460

in dvec2 input_v1;
in dvec2 input_v2;

out int output_v1;

void main()
{
   bvec2 res;
   res = equal(input_v1, input_v2);
   if(res == bvec2(true, true))
   {
     output_v1 = 1;
   }
   else
   {
     output_v1 = 0;
   } 
}