model System

Prm p;

Env env;

ClientMockup mkup;

Probe prb;

Server2Client s2c;

Client2Server c2s;

equation


// connect models to form system

// server to client
connect(env.inputdata1, s2c.inputdata);
connect(env.writesignal1, s2c.writesignal);
connect(s2c.spaceavailable, env.spaceavailable1);
connect(s2c.outputdata, mkup.outputdata);
connect(s2c.datavailable, mkup.datavailable);
connect(mkup.readsignal, s2c.readsignal);

// client to server
connect(mkup.inputdata, c2s.inputdata);
connect(mkup.writesignal, c2s.writesignal);
connect(c2s.spaceavailable, mkup.spaceavailable);
connect(env.readsignal1, c2s.readsignal);
connect(c2s.outputdata, env.outputdata1);
connect(c2s.datavailable, env.spaceavailable1);


// connect output of all models to probe




end System;
