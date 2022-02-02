
block MonitorReq2

// True se Req2 è violato, false altrimenti.

InputInteger outputdata1[3];
InputInteger outputdata2[3];
OutputBoolean y;   

Boolean req;

initial equation
y = false;

equation

req = ; // (la riquiesta ricevuta non pres in database) and ((not inserted) or (not sent ack))

algorithm

when edge(req) then
    y := true

end when;

end MonitorReq2;

