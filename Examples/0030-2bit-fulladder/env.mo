class Environment

parameter Real T = 1;

OutputBoolean a;
OutputBoolean b;
OutputBoolean carry_in;

initial equation
a = true;
b = true;
carry_in = true;

algorithm

// low order 
when sample(0, T) then
   carry_in := not(carry_in);
end when;

when sample(0, 2*T) then
  a := not(a);
end when;


when sample(0, 4*T) then
  b := not(b);
end when;


end Environment;
