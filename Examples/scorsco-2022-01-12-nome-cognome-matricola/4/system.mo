model System

Env env1;

Monitor1 m1;

MonitorReq2 mreq2;
MonitorReq3 mreq3;
MonitorReq4 mreq4;


Client c1(ClientName = 1), c2(ClientName = 2);

Server s1;

Channel c1tos1, c2tos1, s1toc1, s1toc2;





end System;
