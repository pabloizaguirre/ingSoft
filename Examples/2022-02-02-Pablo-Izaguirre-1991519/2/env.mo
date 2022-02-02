
block Env

Prm p;   // parameters

// s2c. client input queue (ciq) where server sends data to client
OutputReal inputdata1[2];      // pair (timestamp, sensor-value)
OutputBoolean writesignal1;
InputBoolean spaceavailable1;


// c2s. server input queue (siq) where server receives data from client
OutputBoolean readsignal1;
InputInteger outputdata1[1];   // id sensore
InputBoolean datavailable1;  


algorithm

when initial() then
writesignal1 := false;
readsignal1 := false;


elsewhen edge(datavailable1) then
    readsignal1 := not(pre(readsignal1));
    writesignal1 := not(pre(writesignal1));
    inputdata1[1] := time;
    inputdata1[2] := myrandom() * 2 + outputdata1[1] - 1;
end when;



end Env;

