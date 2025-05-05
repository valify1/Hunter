local Dev = GetSelf()

local DATA = get_base_data() -- gets plane info

local rate = 0.01
make_default_activity(rate)

local chute_deployed = false
local chute_jettisoned = false

local chute_max_drag_force = 7000.0 -- Newtons, adjust for realism
local chute_cut_speed = 25.0        -- m/s, when to auto-release chute

local sensor_data = get_base_data() -- Access airspeed, gear, etc.

function post_initialize()
-- set var while pause?
CHUTE = 0
	OUT = false


    print("post_initialize called in Chute.lua")
end

-- enumerate maybe?
Dev:listen_command(7003) -- out
--Dev:listen_command(7004) -- in


function SetCommand(command,value)
	if(command==7003) and OUT == false then
		OUT = true
		print_message_to_user("Chute Deployed")
	elseif (command==7003) and OUT == true then
		OUT = false
		print_message_to_user("Chute Relased")
	end
	
end


function func_CHUTE()

	if OUT then
		if CHUTE < 1 then
			local speed = sensor_data.getTrueAirSpeed()
			CHUTE = CHUTE + 0.01
			set_aircraft_draw_argument_value(35,CHUTE)
		end
	end
	
	if (OUT == false) then
		if CHUTE > 0 then
			CHUTE = CHUTE - 0.01
			set_aircraft_draw_argument_value(35,CHUTE)
		end
	end
	
end

need_to_be_closed = false



