function UpdateTimer

input Integer old_counter;
input Integer present_state;
input Integer MyMagicNumber;
output Integer new_counter;

algorithm

if (old_counter <= 0)
then
	if (present_state == 1) then
               new_counter := 180 + 117;
     
	elseif (present_state == 2) then
     	      new_counter := 90 + 117;

	elseif (present_state == 3) then
     	      new_counter := 90 + 117;
	
	elseif (present_state == 4) then
     	      new_counter := 60 + 117;
	
	elseif (present_state == 5) then
     	      new_counter := 30 + 117;

	else  // present_state == 6
     	       new_counter := 1;
     	end if;
else
   new_counter := old_counter - 1;
end if;


end UpdateTimer;

