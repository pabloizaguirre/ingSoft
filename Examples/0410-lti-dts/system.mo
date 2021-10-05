class System


parameter Real[2,2] A = {{-0.9, 0.1}, {-0.1, -0.9}};

parameter Real T = 0.1;

Real[2] x;

initial equation

x[1] = 2;
x[2] = 2;

equation

when sample(0, T) then

x = A*pre(x);

end when;

// This means:
// x[1] = A[1,1]*pre(x[1]) + A[1, 2]*pre(x[2]);
// x[2] = A[2,1]*pre(x[1]) + A[2, 2]*pre(x[2]);

end System;
