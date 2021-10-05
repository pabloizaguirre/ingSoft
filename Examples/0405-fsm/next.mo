function  next

input Boolean x;
input Boolean u;
output Boolean y;

algorithm

y := (not(x) and u) or (x and not(u));

end next;

