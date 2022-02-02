
block Server

// client input queue (ciq) where server sends data to client1
OutputInteger inputdata1;
OutputBoolean writesignal1;
InputBoolean spaceavailable1;

// client input queue (ciq) where server sends data to client2
OutputInteger inputdata2;
OutputBoolean writesignal2;
InputBoolean spaceavailable2;


// server input queue (siq) where server receives data from client1
OutputBoolean readsignal1;
InputInteger outputdata1[3];
InputBoolean datavailable1;  

// server input queue (siq) where server receives data from client2
OutputBoolean readsignal2;
InputInteger outputdata2[3];
InputBoolean datavailable2;  


Boolean DB[K.N, K.Q, K.W];   // DB storing reservations




end Server;

