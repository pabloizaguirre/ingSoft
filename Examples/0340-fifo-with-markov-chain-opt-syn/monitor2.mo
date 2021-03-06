
class Monitor2

input Real x;  // fifo level
output Real y;

protected
Real z;

initial equation
y = 0;

equation

z = abs(x - 4.5);

der(y) = (z - y)/(time + 0.1);

// y(t) = Integral(0, t)(z)/t

// der(y) = -(1/t^2)*Integral(0, t)(z) + (1/t)*z = -(1/t)*y + (1/t)*z = (z - y)/t

end Monitor2;