#version 460

in dvec4 input_v1;
in dvec4 input_v2;
out int output_v1;

void main()
{
   bvec4 res;
   res = notEqual(input_v1, input_v2);
   if(res == bvec4(true, true, true, true))
   {
     output_v1 = 1;
   }
   else
   {
     output_v1 = 0;
   } 
}