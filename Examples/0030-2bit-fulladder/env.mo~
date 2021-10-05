class Environment

parameter Real T = 1;

OutputBoolean x[2];
OutputBoolean carry_in;

initial equation
x[1] = true;
x[2] = true;
carry_in = true;

algorithm

// low order 
when sample(0, T) then
   carry_in := not(carry_in);
end when;

when sample(0, 2*T) then
  x[1] := not(x[1]);
end when;


when sample(0, 4*T) then
  x[2] := not(x[2]);
end when;


end Environment;
