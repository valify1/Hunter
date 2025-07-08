local dev 	    = GetSelf()
local update_time_step = 0.01
make_default_activity(update_time_step) --update will be called 10 times per second
local sensor_data = get_base_data()
--local alti = sensor_data.getRadarAltitude()*3.28084
--local AircraftIsOnGround = get_param_handle("AircraftIsOnGround")

-- Variables
local mCPYOPENCLOSE = get_param_handle("CANOPY_OC") -- PNT_165 -- Arg 98
local mLOCKLEVER = get_param_handle("CPT_LOCKLEVER") -- PNT_163 -- Arg 181

local iCommandPlanePlaneFonar= 71
local Cockpitlocklever = 3163
local myCockpitCommand = 3165

local IsCanopyLocked = 1
local IsCanopyOpen = 0
local IsMoving = false
local IsLockMoving = false

local time = 1
local exttime = 4

dev:listen_command(iCommandPlaneFonar)
dev:listen_command(Cockpitlocklever)
dev:listen_command(myCockpitCommand)



function SetCommand(command,value)		
	if command == iCommandPlaneFonar and IsCanopyLocked == 0  then
		if IsCanopyOpen == 1 then
			IsCanopyOpen = 0
		elseif IsCanopyOpen == 0 and IsCanopyLocked == 0 then
			IsCanopyOpen = 1
		end
		time = 0
		exttime = 0
		IsMoving = true
	end

	if command == Cockpitlocklever then
		if IsCanopyLocked == 1 then
			IsCanopyLocked = 0
		else
			IsCanopyLocked = 1
		end

	end

end

function update()

	if IsCanopyOpen == 0 then
		if time < 0.99 then
		mCPYOPENCLOSE:set((1 - time/4))
		end
		if exttime < 4 then
		set_aircraft_draw_argument_value(38, (1 - exttime/4))	-- External Canopy
		end
	elseif IsCanopyOpen == 1 and IsCanopyLocked == 0 then
		if time < 0.99 then
		mCPYOPENCLOSE:set(time/4)
		end
		if exttime < 3.9 then
		set_aircraft_draw_argument_value(38, (exttime/4))	-- External Canopy
		end
		
	end

	if IsCanopyLocked == 0 then
		mLOCKLEVER:set(0.2)
		set_aircraft_draw_argument_value(181,0.2)
	else
	mLOCKLEVER:set(0)
	set_aircraft_draw_argument_value(181,0)
	end

	if IsMoving == true then
	time = (time + update_time_step)
	exttime = exttime + update_time_step
	current_time = time
	end
end