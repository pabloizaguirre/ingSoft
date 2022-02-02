
block Env

parameter Real T = 0.124;
parameter Real tau = 1.24;
parameter Real p;           // probability of staying in that state

OutputInteger u[3];  // reservation request: u[1] student id, u[2] classroom id, u[3] time slot

initial equation
p = 1 - T/tau;

algorithm

when sample(0, T) then

if myrandom() <= p then
    u := {0,0,0};
else
    u[1] := integer(floor(myrandom()*K.N)) + 1;
    u[2] := integer(floor(myrandom()*K.Q)) + 1;
    u[3] := integer(floor(myrandom()*K.W)) + 1;

end if;

end when;


end Env;

