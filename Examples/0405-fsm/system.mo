class System


Boolean x, u;

initial equation

x = true;
u = true;


equation

when sample(0, 1) then

u = not(pre(u));

x = next(pre(x), pre(u));

end when;



end System;
