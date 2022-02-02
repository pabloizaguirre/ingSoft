
block Env

Prm p;   // parameters

// client input queue (ciq) where server sends data to client
OutputReal inputdata1[2];      // pair (timestamp, sensor-value)
OutputBoolean writesignal1;
InputBoolean spaceavailable1;


// server input queue (siq) where server receives data from client
OutputBoolean readsignal1;
InputInteger outputdata1[1];   // id sensore
InputBoolean datavailable1;  



end Env;

