class System

parameter Real T = 1;

Boolean x;

initial equation

x = false;

algorithm

when sample(0, T) then

x := not(x);

end when;



end System;
