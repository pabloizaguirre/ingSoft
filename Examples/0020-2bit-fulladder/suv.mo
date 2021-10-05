class SUV

parameter Real T = 1;

InputBoolean x[2];
InputBoolean carry_in;
OutputBoolean y;
OutputBoolean carry_out;

algorithm

 
when sample(0, T) then

(y, carry_out) := full_adder(carry_in, x);

end when;


end SUV;
