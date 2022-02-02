
block DTMC

parameter Real T = 1;

OutputInteger x;  // state of development cycle

Prm p;   // parametri

algorithm

when initial() then
	x := 1;
	
elsewhen sample(0,T) then

        x := Next(T, pre(x));
       
end when;




end DTMC;

