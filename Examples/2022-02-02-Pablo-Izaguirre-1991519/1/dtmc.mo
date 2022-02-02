
// Sorry professor, but openmodelica stopped working on my computer, it allows me to compile
// the programs, but it doesn't work for the simulations, so i haven't been able to check
// if everything works fine. 

block DTMC

parameter Real T = 1;

OutputInteger x;  // state of development cycle

Prm p;   // parametri

Integer k;

algorithm

when initial() then
	x := 1;
    k := 1;
	
elsewhen sample(0,T) then

        (x,k) := Next(T, pre(x), pre(k));
        

end when;




end DTMC;

