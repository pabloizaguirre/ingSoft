
block ClientMockup


Prm p;

parameter Real T = 1;

// s2c client input queue (ciq) con la quali il client riceve dati dal server
OutputBoolean readsignal;
InputReal outputdata[2];  // pair (time stamp, sensor value)
InputBoolean datavailable;  

// c2s server input queue (siq) con la quale il client manda dati al server
OutputInteger inputdata[1];   // sensor id
OutputBoolean writesignal;
InputBoolean spaceavailable;


OutputReal y[p.N];   // y[i]:  expected value sensor i

Real aux[2];

algorithm

when initial() then
writesignal := false;
readsignal := false;
for i in 1:p.N loop
    y[i] := 0;
end for;


elsewhen sample(0,T) then
    writesignal := not(pre(writesignal));
    inputdata[1] := integer(floor(myrandom()*p.N)) + 1;

    if datavailable then
        readsignal := not(pre(readsignal));
        aux := outputdata;
    end if;

end when;




end ClientMockup;

