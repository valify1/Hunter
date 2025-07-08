--Thanks to A-4 Team for help with this!!!
local dev = GetSelf()

dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")

local update_time_step = 0.02  --50 time per second
make_default_activity(update_time_step)

local sensor_data = get_base_data()

local Canopy = 71 -- This is the number of the command from command_defs

local CanopyMaster = Keys.Canopy

--Creating local variables
local initial_canopy = get_aircraft_draw_argument_value(38)
local CANOPY_COMMAND	=	0   -- 0 closing, 1 opening, 2 jettisoned

local IAS			    = get_param_handle("CURRENTV")

dev:listen_command(Canopy)
dev:listen_command(Keys.Canopy)

function post_initialize()

	if (initial_canopy > 0) then
		CANOPY_COMMAND = 1
	end

	local birth = LockOn_Options.init_conditions.birth_place
    
	if birth=="GROUND_HOT" or birth=="AIR_HOT" then --"GROUND_COLD","GROUND_HOT","AIR_HOT"
        CANOPY_COMMAND = 0
    elseif birth=="GROUND_COLD" then
        CANOPY_COMMAND = 1
    end

end

function SetCommand(command,value)			
	
	if (command == Canopy) then
		--print_message_to_user("IF YOU SEE THIS THEN THE CANOPY SHOULD FUCKING OPEN AND CLOSE!!!!!!!!!")
        if CANOPY_COMMAND <= 1 then -- only toggle while not jettisoned
            CANOPY_COMMAND = 1-CANOPY_COMMAND --toggle
			--CANOPY_COMMAND = 0.99 --toggle
        end

	end
end

local prev_canopy_val = -1

function update()
	
	local curvalue = get_aircraft_draw_argument_value(38)
    
	if curvalue > 0.95 then
        CANOPY_COMMAND = 2 -- jetissoned
    end
	
	if (CANOPY_COMMAND == 0 and curvalue > 0) then
		-- lower canopy in increments of 0.01 (50x per second)
		curvalue = curvalue - 0.01
        set_aircraft_draw_argument_value(38,curvalue)
	elseif (CANOPY_COMMAND == 1 and curvalue <= 0.89) then
        -- raise canopy in increment of 0.01 (50x per second)
		curvalue = curvalue + 0.01
        set_aircraft_draw_argument_value(38,curvalue)
	end

	local cockpit_lever=get_cockpit_draw_argument_value(181)
    if prev_canopy_val ~= cockpit_lever then
        local canopy_lever_clickable_ref = get_clickable_element_reference("CANOPY_PNT")
        canopy_lever_clickable_ref:update() -- ensure the connector moves too
        prev_canopy_val = cockpit_lever
    end
	
    
end

need_to_be_closed = false