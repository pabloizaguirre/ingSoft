class System

Environment env;
SUV  mysuv;
Monitor m;

equation


connect(env.x, mysuv.x);
connect(env.carry_in, mysuv.carry_in);

connect(env.x, m.x);
connect(env.carry_in, m.carry_in);
connect(mysuv.y, m.y);
connect(mysuv.carry_out, m.carry_out);


end System;
