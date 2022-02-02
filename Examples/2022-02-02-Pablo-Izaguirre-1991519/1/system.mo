model System

Prm p;

DTMC mc;

Monitor m1;

Probe prb;

equation


// connect models to form system
connect(mc.x, m1.x);

// connect output of all models to probe
connect(mc.x, prb.x);
connect(m1.y, prb.y);
connect(m1.z, prb.z);



end System;
