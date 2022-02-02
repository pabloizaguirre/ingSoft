function  next
input Integer present_state;
output Integer next_state;

algorithm

	if (present_state < 6) then
		//if myrandom() <= 0.5 then
               next_state := present_state + 1;
		//else
				//next_state := present_state;
		//end if;
	else // present_state = 6
		next_state := 1;
    end if;

end next;

