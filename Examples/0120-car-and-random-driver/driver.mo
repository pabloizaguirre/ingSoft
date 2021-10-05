
block Driver

parameter Real T = 0.01;  // 36 seconds

parameter Real p = 0.5;


OutputReal throttle;  
OutputReal brake;  

initial equation
throttle = 0;
brake = 0;


algorithm

when sample(0, T) then

if (myrandom() <= p)
then
    throttle := 0.5;
    brake := 0;
else
    throttle := 0;
    brake := 0.5;
end if;

end when;

end Driver;