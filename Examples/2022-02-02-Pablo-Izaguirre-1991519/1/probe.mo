
block Probe

// inputs are all outputs of your blocks

InputInteger x;

InputReal y[Prm.W];  // y[i]: Expected value for development completion time for team 

InputReal z[Prm.W];  // z[i]: Expected value for development cost for team i

OutputBoolean probe_output;



equation

probe_output = false;



end Probe;

