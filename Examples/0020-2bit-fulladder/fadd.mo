
function  full_adder
input Boolean carry_in;
input Boolean x[2];
output Boolean y;
output Boolean carry_out;

algorithm


y :=   xor(x[1], xor(x[2], carry_in));

carry_out := (x[1] and x[2]) or (carry_in and xor(x[1],x[2])) ;


end full_adder;

