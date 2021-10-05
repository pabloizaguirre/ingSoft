
class System

Controller ctr;
FIFO fifo;
Monitor monitor;

//RandomNumberGenerator r_in;
//RandomNumberGenerator r_out;

RandomNumberGenerator r_in(samplePeriod=1.0,globalSeed=30020,localSeed=614657);
RandomNumberGenerator r_out(samplePeriod=0.5,globalSeed=44315,localSeed=213467);

Real p_out, p_in;

equation

p_out = 1.5 + 4.5*r_out.r1024;
p_in = 4.0 + 0.5*r_in.r1024;

fifo.p_out = p_out;
fifo.p_in = p_in;
fifo.x = ctr.x;
fifo.u = ctr.u;
monitor.x = fifo.x;

end System;