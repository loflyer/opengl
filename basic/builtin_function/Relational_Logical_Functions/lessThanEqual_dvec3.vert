#version 460

in dvec3 input_v1;
in dvec3 input_v2;
out int output_v1;

void main()
{
   bvec3 res;
   res = lessThanEqual(input_v1, input_v2);
   if(res == bvec3(true, true, true))
   {
     output_v1 = 1;
   }
   else
   {
     output_v1 = 0;
   } 
}