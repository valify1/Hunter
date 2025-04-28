local dev 	    = GetSelf()

--local var = "./CoreMods/aircraft/Alphajet/Alphajet.lua"

local update_time_step = 0.1
make_default_activity(update_time_step) --update will be called 10 times per second

local sensor_data = get_base_data()
local alti = sensor_data.getRadarAltitude()*3.28084
local AircraftIsOnGround = get_param_handle("AircraftIsOnGround")

-- Variables
local L_SMOKE 	= get_param_handle("L_SMOKE")
local LIB_SMOKE = get_param_handle("LIB_SMOKE")

-- ControlsIndicator
local SHOW_CONTROLS = get_param_handle("SHOW_CONTROLS")

local PITCH_INPUT = get_param_handle("PITCH_INPUT")
local ROLL_INPUT = get_param_handle("ROLL_INPUT")

local YAW_INPUT = get_param_handle("YAW_INPUT")

local THROTTLE_LEFT = get_param_handle("THROTTLE_LEFT")
local THROTTLE_RIGHT = get_param_handle("THROTTLE_RIGHT")

local SmokeOnOff 		= 78
local SmokeIsOn 		= 0

-- Initialisation
dev:listen_command(SmokeOnOff)

for i=1,5000 do
dev:listen_command(i)
end

function SetCommand(command,value)	

	-- Smoke Light System Listening
	if command == SmokeOnOff then --and AircraftIsOnGround:get() < 0.5 then
		if (SmokeIsOn == 1) then
			SmokeIsOn = 0
		else
			SmokeIsOn = 1
		end
	end
	
	if command == 851 then
		if SHOW_CONTROLS:get() == 0 then
			SHOW_CONTROLS:set(1)
		else
			SHOW_CONTROLS:set(0)
		end
	end
end

function update()
	-- Smoke Light System Listening
	L_SMOKE:set(SmokeIsOn)
	if L_SMOKE:get() == 1 then
		LIB_SMOKE:set("SMOKE")
	else
		LIB_SMOKE:set("")
	end	
	local pitch = sensor_data.getStickPitchPosition() / 100
	local roll = sensor_data.getStickRollPosition() / -100
	local yaw = sensor_data.getRudderPosition() / -100
	
	local Lthrottle = sensor_data.getThrottleLeftPosition() 
	local Rthrottle = sensor_data.getThrottleRightPosition()
	
	
	PITCH_INPUT:set(pitch)
	ROLL_INPUT:set(roll)
	YAW_INPUT:set(yaw)
	
	THROTTLE_LEFT:set(Lthrottle)
	THROTTLE_RIGHT:set(Rthrottle)
	
end   

need_to_be_closed = false -- close lua state after initialization
