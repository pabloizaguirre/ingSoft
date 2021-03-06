
class Controller


parameter Real T = 1.0;

// ad conversion parameters
input Real Delta = 0.01;  // 10 KB
input Real LoVal = 0;
input Real HiVal = 6;

input Real x;  // FIFO MB
output Integer u;  // u=0 fifo closed, u=1 fifo opened

Real sensor;

initial equation

u = 0;

equation

when sample(0, T) then

sensor = ad(Delta, LoVal, HiVal, x);

if (sensor <= 3.4) 
then u = 1;
else if (sensor >= 3.6) 
      then u = 0;
      else u = pre(u);
      end if;
end if;

end when ;


end Controller;




