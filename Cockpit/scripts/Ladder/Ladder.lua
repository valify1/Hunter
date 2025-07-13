local Dev = GetSelf()

local DATA = get_base_data() -- gets plane info

local rate = 0.01
make_default_activity(rate)

function post_initialize()
-- set var while pause?
LAD = 0
	OUT = false


    print("post_initialize called in Ladders.lua")
end

-- enumerate maybe?
Dev:listen_command(7001) -- out
--Dev:listen_command(7002) -- in




function SetCommand(command,value)
	if(command==7001) and OUT == false then
		OUT = true
		print_message_to_user("LADDERS OUT")
	elseif (command==7001) and OUT == true then
		OUT = false
		print_message_to_user("LADDERS IN")
	end
	
end


function func_lad()

	if OUT then
		if LAD < 1 then
			LAD = LAD + 0.01
			set_aircraft_draw_argument_value(805,LAD)
		end
	end
	
	if (OUT == false) then
		if LAD > 0 then
			LAD = LAD - 0.01
			set_aircraft_draw_argument_value(805,LAD)
		end
			
	end
	
end




function update()
func_lad()
end

need_to_be_closed = false

--[[ set_cockpit_draw_argument_value(379) <= 0 then set_aircraft_draw_argument_value(323,1) 

function func_lad()

	if OUT then
		if LAD < 1 then
			LAD = LAD + 0.01
			set_aircraft_draw_argument_value(323,LAD)
			elseif (OUT == false) then
				if LAD > 0 then
					LAD = LAD - 0.01
					set_aircraft_draw_argument_value(323,LAD)
					
			
			
			
			
			


				end
		end
	end
	
	if (OUT == false) then
		print_message_to_user("poop")	
	end
end

]]

