class System

Environment env;
SUV  mysuv;
Monitor m;

equation

connect(env.a, mysuv.a);
connect(env.b, mysuv.b);
connect(env.carry_in, mysuv.carry_in);

connect(env.a, m.a);
connect(env.b, m.b);
connect(env.carry_in, m.carry_in);
connect(mysuv.y, m.y);
connect(mysuv.carry_out, m.carry_out);


end System;
