
block ClientMockup


Prm p;

// client input queue (ciq) con la quali il client riceve dati dal server
OutputBoolean readsignal;
InputReal outputdata[2];  // pair (time stamp, sensor value)
InputBoolean datavailable;  

// server input queue (siq) con la quale il client manda dati al server
OutputInteger inputdata[1];   // sensor id
OutputBoolean writesignal;
InputBoolean spaceavailable;


OutputReal y[N];   // y[i]:  expected value sensor i



end ClientMockup;

