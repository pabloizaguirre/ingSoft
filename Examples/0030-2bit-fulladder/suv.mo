class SUV

parameter Real T = 1;

InputBoolean a;
InputBoolean b;
InputBoolean carry_in;
OutputBoolean y;
OutputBoolean carry_out;


algorithm

 
when sample(0, T) then

(y, carry_out) := full_adder(carry_in, a, b);

end when;


end SUV;
