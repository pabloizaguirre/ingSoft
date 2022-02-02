
function Next
input Real T;  // time step
input Integer i;   // present state
input Integer k;   // present team
output Integer j;  //  next state 
output Integer k_new;  // next team

protected
Real p, y;

algorithm

p := myrandom();
j := 1;
y := P(T, i, j, k);

while ((p > y) and (j < Prm.N)) loop
  j := j + 1;
  y := y + P(T, i, j, k);
end while;

if i == Prm.N and j == 1 then 
  if k == Prm.W then
    k_new := 1;
  else
    k_new := k + 1;
  end if;
end if;

end Next;