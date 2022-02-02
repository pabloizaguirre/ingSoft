
function P
input Real T;  // time step
input Integer i;   // present state
input Integer j;  //  next state 
input Integer k;   // present team
output Real p;

protected 
parameter Real sjt;
parameter Real A;
parameter Real lambda;
parameter Real alpha;


algorithm

A := 180 + 20*k + Prm.MyMagicNumber;
lambda := log(A)/(Prm.N -1);
sjt := A*exp(-(i-1)*lambda);
alpha := 1/(3+k);

if (i == j)
       then  p := LoopProb(T, sjt);

elseif (i == 1) and (j == 2)
       then p := 1 - LoopProb(T, sjt);

elseif (2 <= i) and (i < Prm.N) and (j == i + 1)
       then p := (1 - alpha)*(1 - LoopProb(T, sjt));

elseif (2 <= i) and (i < Prm.N) and (1 <= j) and (j < i)
       then  p := alpha * (1 - LoopProb(T, sjt))/(i - 1);

elseif (i == Prm.N) and (j == 1)
       then p := 1;

else p := 0;

end if;

end P;