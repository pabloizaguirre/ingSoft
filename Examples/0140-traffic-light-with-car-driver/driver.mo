
block Driver

parameter Real T = 0.1;  // one second

parameter Real p = 0.5;


InputTrafficLightSignal w;  

OutputReal throttle;  
OutputReal brake;  

initial equation
throttle = 0;
brake = 0;


algorithm

when sample(0, T) then

if (w == TrafficLightSignal.green)
then
    throttle := 0.5;
    brake := 0;
else
    throttle := 0;
    brake := 0.5;
end if;

end when;

end Driver;