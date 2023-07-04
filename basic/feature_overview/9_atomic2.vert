#version 420 core

layout(binding=0)               uniform atomic_uint counter;
layout(binding=0, offset=32)    uniform atomic_uint aOffset;

layout(binding=0, offset=4)     uniform atomic_uint;
layout(binding=0)               uniform atomic_uint bar3;           // offset is 4
layout(binding=0)               uniform atomic_uint ac[2];          // offset = 8
layout(binding=0)               uniform atomic_uint ad;             // offset = 16
layout(binding=1, offset = 4)   uniform atomic_uint countArr[4];

uniform int index_u;
out uvec4 v4_data;

uint func(atomic_uint c)
{
    return atomicCounterIncrement(c);
}

void main()
{
    uint val_1 = atomicCounter(counter);
    atomicCounterDecrement(ad);

    uint val_2 = func(ad);
    uint val_3 = atomicCounter(ac[1]);

    uint val_4 = atomicCounter(countArr[index_u]);

    v4_data = uvec4(val_1, val_2, val_3, val_4);
}
