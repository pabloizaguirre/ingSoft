
block Client

parameter Integer ClientName = 1;   // 1 se accetta pazienti dispari, 2 se accetta pazienti pari

InputInteger u[3];   // input dall'environment, reservation request

// client input queue (ciq) con la quali il client riceve dati dal server
OutputBoolean readsignal;
InputInteger outputdata;  // 1 se insertion ok, 2 se fail
InputBoolean datavailable;  

// server input queue (siq) con la quale il client manda dati al server
OutputInteger inputdata[3];   // richiesta di prenotazione inviata al server
OutputBoolean writesignal;
InputBoolean spaceavailable;


end Client;

