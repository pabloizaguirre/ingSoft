
model System

Real x;

discrete Real z;

discrete Real y;

discrete Real w;

discrete Real td;

initial equation
x = 10;

equation

der(x) = -0.1*x;

y = sample(x, Clock(1, 1));

z = sample(x, Clock(2, 1));

w = sample(x, Clock(1, 5));

td = sample(time, Clock(1, 1));

end System;