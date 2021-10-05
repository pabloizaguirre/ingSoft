class Monitor


InputBoolean x[2];
InputBoolean carry_in;
InputBoolean y;
InputBoolean carry_out;

OutputBoolean z;
Boolean w;

initial equation
z = false;


equation

//  Requirements
// Sum = A ⊕ B ⊕ Cin; Cout = (A ⋅ B) + (Cin ⋅ (A ⊕ B)).

//  error condition

w = (y <> xor(x[1], xor(x[2], carry_in))) or
    (carry_out <> ((x[1] and x[2]) or (carry_in and xor(x[1], x[2]))) );

// w = (y <> xor(pre(x[1]), xor(pre(x[2]), pre(carry_in)))) or
//    (carry_out <> (pre(x[1]) and pre(x[2])) or
//                  (pre(carry_in) and xor(pre(x[1]), pre(x[2]))) );


algorithm

when edge(w) then
z := true;
end when;



end Monitor;
