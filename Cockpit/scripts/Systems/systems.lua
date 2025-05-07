local dev 	    = GetSelf()


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




	local pitch = sensor_data.getStickPitchPosition() / 100
	local roll = sensor_data.getStickRollPosition() / -100
	local yaw = sensor_data.getRudderPosition() / -100
	
	local Lthrottle = sensor_data.getThrottleLeftPosition() 
	local Rthrottle = sensor_data.getThrottleRightPosition()
	
	

	
	
	THROTTLE_LEFT:set(Lthrottle)
	THROTTLE_RIGHT:set(Rthrottle)
	
  

need_to_be_closed = false -- close lua state after initialization
