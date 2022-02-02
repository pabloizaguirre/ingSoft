
block Monitor

Prm p;   // parametri

InputInteger x;  // state of development cycle from DTMC

//InputInteger k; // team that is developing the project

OutputReal y[p.W];  // y[i]: Expected value for development completion time for team 

OutputReal z[p.W];  // z[i]: Expected value for development cost for team i


Real old_time;    
Boolean delivery;
Integer i;  // team

initial equation
old_time = 0;
i = 1;

equation

delivery = (x == p.N);

algorithm


when edge(delivery) then
    
    if i <= p.W then
        y[i] := time - old_time;
        old_time := time;

        z[i] := (time - old_time)*(700 + 1000*(i - 1)/(p.W - 1));
        i := i + 1;
    end if;
end when;






end Monitor;

