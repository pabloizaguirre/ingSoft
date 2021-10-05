
block Ctr   // car controller

input TrafficLightSignal y;

input CarState x;

output Driver u;

equation

if (x == CarState.before) then

       if (y == TrafficLightSignal.green) then
	       u = Driver.go;
     
	elseif (y == TrafficLightSignal.orange) then
	       u = Driver.go;
     
	else  // y == TrafficLightSignal.red
	       u = Driver.stop;
     	end if;

else  // CarState is crossing or past
      u = Driver.go;
end if;

end Ctr;
