class Monitor

parameter Real T = 0.1;

InputBoolean a;
InputBoolean b;
InputBoolean carry_in;
InputBoolean y;
InputBoolean carry_out;

OutputBoolean z;
//Boolean w;

initial equation
z = false;
//w = false;

algorithm

//  Requirements
// Sum = A ⊕ B ⊕ Cin; Cout = (A ⋅ B) + (Cin ⋅ (A ⊕ B)).

//  error condition
//w = (y <> xor(a, xor(b, carry_in))) or
//    (carry_out <> ((a and b) or (carry_in and xor(a, b))) );

when sample(0, T) then

if ((y <> xor(a, xor(b, carry_in))) or
    (carry_out <> ((a and b) or (carry_in and xor(a, b))) )
   )
then
  z := true;
end if;

end when;


end Monitor;
