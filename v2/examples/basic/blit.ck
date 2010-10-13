// patch
Blit s => JCRev r => dac;
.5 => s.gain;
.05 => r.mix;

// an array
[ 0, 2, 4, 7, 9, 11 ] @=> int hi[];
<<< hi.size(), hi.cap(), hi.capacity() >>>;
<<< hi[0], hi[1], hi[2], hi[3], hi[4], hi[5] >>>;

// infinite time loop
while( true )
{
    // frequency
    Std.mtof( 33 + Std.rand2(0,3) * 12 +
        hi[Std.rand2(0,hi.size()-1)] ) => s.freq;

    // harmonics
    Std.rand2( 1, 5 ) => s.harmonics;

    // advance time
    120::ms => now;
}
