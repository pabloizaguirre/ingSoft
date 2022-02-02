
block Monitor

InputInteger x;  // state of development cycle from DTMC

OutputReal y;  // Expected value for development completion time


Integer counter;    
Boolean request;

initial equation
counter = 0;
y = 0;

equation

request = (x == 6);

algorithm

when edge(request) then
    counter := counter + 1;
    y := time/counter;

end when;



end Monitor;

