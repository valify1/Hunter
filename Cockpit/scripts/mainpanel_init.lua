shape_name   	   = "cockpit_Hunter_F6"

is_EDM			   = true
new_model_format   = true
ambient_light    = {255,255,255}
ambient_color_day_texture    = {72, 100, 160}
ambient_color_night_texture  = {40, 60 ,150}
ambient_color_from_devices   = {50, 50, 40}
ambient_color_from_panels	 = {35, 25, 25}

dusk_border					 = 0.4
draw_pilot					 = false

external_model_canopy_arg	 = 38

use_external_views = false 

day_texture_set_value   = 0.0
night_texture_set_value = 0.1

controllers = LoRegisterPanelControls()

mirrors_data = 
{
    center_point 	  = {0.454, 0.094 , 0.212},  --   0.6,0.4,0
    width 		 	  = 0.02, --integrated (keep in mind that mirrors can be none planar )
    aspect 		 	  = 1.0,
	rotation 	 	  = math.rad(1.0);
	animation_speed   = 5.0;
	near_clip 		  = 0.1;
	middle_clip		  = 10;
	far_clip		  = 1000;
	arg_value_when_on = 1.0;
}

mirrors_draw                    = CreateGauge()
mirrors_draw.arg_number    		= 103
mirrors_draw.input   			= {0,1}
mirrors_draw.output   			= {1,0}
mirrors_draw.controller         = controllers.mirrors_draw

Manche							= CreateGauge("parameter")
Manche.parameter_name   		= "Manche"
Manche.arg_number				= 114
Manche.input					= {-100.0, 100.0}
Manche.output					= {-100.0, 100.0}

Canopy    						= CreateGauge()
Canopy.arg_number 				= 181
Canopy.input   					= {0,1}
Canopy.output  					= {0,0.9}
Canopy.controller 				= controllers.base_gauge_CanopyPos

StickPitch							= CreateGauge()
StickPitch.arg_number				= 2
StickPitch.input					= {-100, 100}
StickPitch.output					= {-1, 1}
StickPitch.controller				= controllers.base_gauge_StickPitchPosition

StickBank							= CreateGauge()
StickBank.arg_number				= 3
StickBank.input						= {-100, 100}
StickBank.output					= {-1, 1}
StickBank.controller				= controllers.base_gauge_StickRollPosition

RudderPedals						= CreateGauge()
RudderPedals.arg_number				= 4
RudderPedals.input					= {-100,100}
RudderPedals.output					= {1,-1}
RudderPedals.controller				= controllers.base_gauge_RudderPosition

R_THROT								= CreateGauge("parameter")
R_THROT.parameter_name				= "R_THROTTLE_POS"
R_THROT.arg_number					= 766
R_THROT.input						= {-1,1}
R_THROT.output						= {-1,1}

L_THROTC							= CreateGauge("parameter")
L_THROTC.parameter_name				= "L_THROTTLE_CUT"
L_THROTC.arg_number					= 767
L_THROTC.input						= {0,1}
L_THROTC.output						= {0,1}

L_THROT								= CreateGauge("parameter")
L_THROT.parameter_name				= "L_THROTTLE_POS"
L_THROT.arg_number					= 768
L_THROT.input						= {-1,1}
L_THROT.output						= {-1,1}

Landinggearhandle					= CreateGauge()
Landinggearhandle.arg_number		= 83
Landinggearhandle.input				= {0, 1}
Landinggearhandle.output			= {0, 1}
Landinggearhandle.controller		= controllers.gear_handle_animation



---------------------------------------------------------------
-- ENGINE
---------------------------------------------------------------

Engine_RPM_L						= CreateGauge()
Engine_RPM_L.arg_number				= 16
Engine_RPM_L.input					= {0.0, 110.0} 
Engine_RPM_L.output					= {0.0, 1.1}
Engine_RPM_L.controller				= controllers.base_gauge_EngineLeftRPM

Engine_FF_L							= CreateGauge("parameter")
Engine_FF_L.parameter_name   		= "D_FFL"
Engine_FF_L.arg_number				= 60
Engine_FF_L.input					= {0.0, 100.0}
Engine_FF_L.output					= {0.0, 1.0}

Engine_TEMP_L						= CreateGauge()
Engine_TEMP_L.arg_number			= 52
Engine_TEMP_L.input					= {300, 900} 
Engine_TEMP_L.output				= {0.3, 0.9}
Engine_TEMP_L.controller			= controllers.base_gauge_EngineLeftTemperatureBeforeTurbine

Engine_RPM_R						= CreateGauge()
Engine_RPM_R.arg_number				= 17
Engine_RPM_R.input					= {0.0, 110.0} 
Engine_RPM_R.output					= {0.0, 1.1}
Engine_RPM_R.controller				= controllers.base_gauge_EngineRightRPM

Engine_FF_R							= CreateGauge("parameter")
Engine_FF_R.parameter_name   		= "D_FFR"
Engine_FF_R.arg_number				= 61
Engine_FF_R.input					= {0.0, 100.0}
Engine_FF_R.output					= {0.0, 1.0}

Engine_TEMP_R						= CreateGauge()
Engine_TEMP_R.arg_number			= 51
Engine_TEMP_R.input					= {300, 900} 
Engine_TEMP_R.output				= {0.3, 0.9}
Engine_TEMP_R.controller			= controllers.base_gauge_EngineRightTemperatureBeforeTurbine

---------------------------------------------------------------
-- INSTRUMENTS
---------------------------------------------------------------
hour      			  			= CreateGauge("parameter")
hour.parameter_name   			= "hour"
hour.arg_number    	 			= 18
hour.input   			 		= {0.0,360.0} 
hour.output  	 		  		= {0.0,1.0} 

minute      			  		= CreateGauge("parameter")
minute.parameter_name   		= "minute"
minute.arg_number    	 		= 19
minute.input    		 		= {0.0,360.0} 
minute.output    		  		= {0.0,1.0} 

seconde      			  		= CreateGauge("parameter")
seconde.parameter_name   		= "second"
seconde.arg_number    	 		= 37
seconde.input    		 		= {0.0,360.0} 
seconde.output    		  		= {0.0,1.0} 

jour      			  			= CreateGauge("parameter")
jour.parameter_name   			= "jour"
jour.arg_number   	 	 		= 503
jour.input    			 		= {0,31} 
jour.output    			  		= {0,31} 

ChronoH      			  		= CreateGauge("parameter")
ChronoH.parameter_name   		= "ChronoH"
ChronoH.arg_number    	 		= 504
ChronoH.input   			 	= {00,60} 
ChronoH.output  	 		  	= {00,60} 

ChronoM      			  		= CreateGauge("parameter")
ChronoM.parameter_name   		= "ChronoM"
ChronoM.arg_number    	 		= 505
ChronoM.input    		 		= {0,60} 
ChronoM.output    		  		= {0,60} 

ChronoS		 			  		= CreateGauge("parameter")
ChronoS.parameter_name   		= "ChronoS"
ChronoS.arg_number    	 		= 506
ChronoS.input    		 		= {0,60} 
ChronoS.output    		  		= {0,60} 

IAS_GAUGE      			  			= CreateGauge("parameter")
IAS_GAUGE.parameter_name   			= "D_IAS"
IAS_GAUGE.arg_number    	 		= 100
IAS_GAUGE.input    		 			= {0.0,1000} 
IAS_GAUGE.output    		  		= {0.0,1.0} 

VerticalVelocity					= CreateGauge()
VerticalVelocity.arg_number			= 24
VerticalVelocity.input				= {-30.5, -20.3, -15.2, -10.2, -5.1, 5.1, 10.2, 15.2, 20.3, 30.5}
VerticalVelocity.output				= {-0.6, -0.4, -0.3, -0.2, -0.1, 0.1, 0.2, 0.3, 0.4, 0.6}
VerticalVelocity.controller			= controllers.base_gauge_VerticalVelocity

Gload								= CreateGauge()
Gload.arg_number					= 7
Gload.input							= {-10.0, 10.0}
Gload.output						= {-1.0, 1.00}
Gload.controller					= controllers.base_gauge_VerticalAcceleration

MaximG								= CreateGauge("parameter")
MaximG.parameter_name   			= "MaxiG"
MaximG.arg_number					= 71
MaximG.input						= {-10.0, 10.0}
MaximG.output						= {-1.0, 1.00}

MinimG								= CreateGauge("parameter")
MinimG.parameter_name   			= "MiniG"
MinimG.arg_number					= 72
MinimG.input						= {-10.0, 10.0}
MinimG.output						= {-1.0, 1.00}

AOA_Units							= CreateGauge("parameter")
AOA_Units.parameter_name   			= "D_AOA"
AOA_Units.arg_number				= 10
AOA_Units.input						= {0.0, 3000.0}
AOA_Units.output					= {0.0, 30.0}

HrzRoll								= CreateGauge()
HrzRoll.arg_number					= 26
HrzRoll.input						= {-math.pi, math.pi}
HrzRoll.output						= {-1.0, 1.00}
HrzRoll.controller					= controllers.base_gauge_Roll

HrzPitch							= CreateGauge()
HrzPitch.arg_number					= 27
HrzPitch.input						= {-math.pi, math.pi}
HrzPitch.output						= {1.0, -1.00}
HrzPitch.controller					= controllers.base_gauge_Pitch

D_TrimPicth      			  		= CreateGauge("parameter")
D_TrimPicth.parameter_name   		= "D_TrimPicth"
D_TrimPicth.arg_number   	 		= 498
D_TrimPicth.input    				= {-10.0,10.0} 
D_TrimPicth.output    			  	= {-10.0,10.0} 

SADIPitch                        = CreateGauge()
SADIPitch.arg_number             = 81
SADIPitch.input                  = {math.rad(-90), math.rad(90)}
SADIPitch.output                 = {1, -1}
SADIPitch.controller			 = controllers.base_gauge_Pitch

SADIRoll                         = CreateGauge()
SADIRoll.arg_number              = 30
SADIRoll.input                   = {-math.pi, math.pi}
SADIRoll.output                  = {1, -1}
SADIRoll.controller				 = controllers.base_gauge_Roll

--Sonde ALTI
Sonde_Alti		         	      	= CreateGauge("parameter")
Sonde_Alti.parameter_name   		= "RAD_ALT"
Sonde_Alti.arg_number    			= 11
Sonde_Alti.input     	    		= {0.0, 20.0, 30.0, 50.0,150.0,200.0,300.0}
Sonde_Alti.output     		   		= {0.0, 0.18,0.29,0.46,0.75,0.83,0.93}





Flag_Sonde		         	      	= CreateGauge("parameter")
Flag_Sonde.parameter_name   		= "Flag_Sonde"
Flag_Sonde.arg_number    			= 220
Flag_Sonde.input     	    		= {0.0, 1.0}
Flag_Sonde.output     		   		= {0.0, 1.0}

ADI_attitude_warning_flag				= CreateGauge("parameter")
ADI_attitude_warning_flag.parameter_name = "ADI_Warning_Flag"
ADI_attitude_warning_flag.arg_number	= 25
ADI_attitude_warning_flag.input			= {0.0, 1.0}
ADI_attitude_warning_flag.output		= {0.0, 1.0}
ADI_attitude_warning_flag.controller	= controllers.ADI_attitude_warning_flag

--100 ft needle
Alt_100ft_Gauge		               	= CreateGauge("parameter")
Alt_100ft_Gauge.parameter_name   	= "Alt100"
Alt_100ft_Gauge.arg_number    		= 415
Alt_100ft_Gauge.input         		= {0.0, 1000.0}
Alt_100ft_Gauge.output        		= {0.0, 1.0}

--1000 ft needle
Alt_1000ft_Gauge               		= CreateGauge("parameter")
Alt_1000ft_Gauge.parameter_name   	= "Alt1000"
Alt_1000ft_Gauge.arg_number     	= 416
Alt_1000ft_Gauge.input          	= {0.0, 100.0}
Alt_1000ft_Gauge.output        		= {0.0, 1.0}

--10000 ft needle
Alt_10000ft_Gauge               	= CreateGauge("parameter")
Alt_10000ft_Gauge.parameter_name   	= "Alt10000"
Alt_10000ft_Gauge.arg_number    	= 417
Alt_10000ft_Gauge.input         	= {0.0, 10.0}
Alt_10000ft_Gauge.output        	= {0.0, 1.0}

L_10000     			  			= CreateGauge("parameter")
L_10000.parameter_name   			= "L_10000"
L_10000.arg_number    	 			= 57
L_10000.input    		 			= {0.0,1.0} 
L_10000.output    		  			= {0.0,1.0}

Pression      			  			= CreateGauge("parameter")
Pression.parameter_name   			= "Pression"
Pression.arg_number   	 	 		= 507
Pression.input    			 		= {0,3100} 
Pression.output    			  		= {0,3100} 

-- PANEL ALERTE LIGHTS
L_BATT  			  				= CreateGauge("parameter")
L_BATT.parameter_name   			= "L_BATT"
L_BATT.arg_number    	 			= 200
L_BATT.input    		 			= {0.0,1.0} 
L_BATT.output    		  			= {0.0,1.0}

L_CONVL  			  				= CreateGauge("parameter")
L_CONVL.parameter_name  	 		= "L_CONVL"
L_CONVL.arg_number    		 		= 201
L_CONVL.input    			 		= {0.0,1.0} 
L_CONVL.output    					= {0.0,1.0}

L_CONVR 			  				= CreateGauge("parameter")
L_CONVR.parameter_name  			= "L_CONVR"
L_CONVR.arg_number    				= 202
L_CONVR.input    					= {0.0,1.0} 
L_CONVR.output    					= {0.0,1.0}

L_GENL				  				= CreateGauge("parameter")
L_GENL.parameter_name   			= "L_GENL"
L_GENL.arg_number    	 			= 203
L_GENL.input    		 			= {0.0,1.0} 
L_GENL.output    		  			= {0.0,1.0}

L_GENR  			  				= CreateGauge("parameter")
L_GENR.parameter_name   			= "L_GENR"
L_GENR.arg_number    	 			= 204
L_GENR.input    		 			= {0.0,1.0} 
L_GENR.output    		  			= {0.0,1.0}

L_REGL				  				= CreateGauge("parameter")
L_REGL.parameter_name   			= "L_REGL"
L_REGL.arg_number    	 			= 205
L_REGL.input    		 			= {0.0,1.0} 
L_REGL.output    		  			= {0.0,1.0}

L_REGR  			  				= CreateGauge("parameter")
L_REGR.parameter_name   			= "L_REGR"
L_REGR.arg_number    	 			= 206
L_REGR.input    		 			= {0.0,1.0} 
L_REGR.output    		  			= {0.0,1.0}

P_HYD1  			  				= CreateGauge("parameter")
P_HYD1.parameter_name   			= "P_HYD1"
P_HYD1.arg_number    	 			= 207
P_HYD1.input    		 			= {0.0,1.0} 
P_HYD1.output    		  			= {0.0,1.0}

P_HYD2  			  				= CreateGauge("parameter")
P_HYD2.parameter_name   			= "P_HYD2"
P_HYD2.arg_number    	 			= 208
P_HYD2.input    		 			= {0.0,1.0} 
P_HYD2.output    		  			= {0.0,1.0}
----------------------------------------------------------------

CompassRose							= CreateGauge()  
CompassRose.arg_number				= 32
CompassRose.input					= {0.0, math.rad(360.0)}
CompassRose.output					= {0.0, 1.0}
CompassRose.controller				= controllers.base_gauge_Heading

TotalFuel							= CreateGauge("parameter")
TotalFuel.parameter_name   			= "D_FUEL"
TotalFuel.arg_number				= 22
TotalFuel.input						= {0.0, 1300}
TotalFuel.output					= {0.0, 1.3}

TotalFuel							= CreateGauge("parameter")
TotalFuel.parameter_name   			= "D_FUEL"
TotalFuel.arg_number				= 23
TotalFuel.input						= {0.0, 1300}
TotalFuel.output					= {0.0, 1.3}

G_MACH      			  			= CreateGauge("parameter")
G_MACH.parameter_name   			= "D_MACH"
G_MACH.arg_number    	 			= 999
G_MACH.input    		 			= {0.0,1.0} 
G_MACH.output    		  			= {0.0,1.0} 


L_LandSwitch			  			= CreateGauge("parameter")
L_LandSwitch.parameter_nam			= "L_LandSwitch"
L_LandSwitch.arg_number   			= 311
L_LandSwitch.input    				= {1,0,-1} 
L_LandSwitch.output    				= {1,0,-1}

L_LandSwitchHelios		  			= CreateGauge("parameter")
L_LandSwitchHelios.parameter_nam	= "L_LandSwitchHelios"
L_LandSwitchHelios.arg_number   	= 320
L_LandSwitchHelios.input    		= {0,1} 
L_LandSwitchHelios.output    		= {0,1}

L_PhareNez    			  			= CreateGauge("parameter")
L_PhareNez.parameter_name   		= "L_PhareNez"
L_PhareNez.arg_number    			= 130
L_PhareNez.input    				= {0,1} 
L_PhareNez.output    				= {0,1}

L_PhareG    			  			= CreateGauge("parameter")
L_PhareG.parameter_name   			= "L_PhareG"
L_PhareG.arg_number    				= 208
L_PhareG.input    					= {0,1} 
L_PhareG.output    					= {0,1}

L_PhareD    			  			= CreateGauge("parameter")
L_PhareD.parameter_name   			= "L_PhareD"
L_PhareD.arg_number    				= 209
L_PhareD.input    					= {0,1} 
L_PhareD.output    					= {0,1}

L_LandHelios		  				= CreateGauge("parameter")
L_LandHelios.parameter_name 		= "L_LandHelios"
L_LandHelios.arg_number    	 		= 321
L_LandHelios.input    		 		= {0,1} 
L_LandHelios.output    		  		= {0,1}

L_BAY     			  				= CreateGauge("parameter")
L_BAY.parameter_name   				= "L_Trappes"
L_BAY.arg_number    	 			= 53
L_BAY.input    		 				= {0.0,1.0} 
L_BAY.output    		  			= {0.0,1.0}

L_AF     			  				= CreateGauge("parameter")
L_AF.parameter_name   				= "L_AF"
L_AF.arg_number    	 				= 45
L_AF.input    		 				= {0.0,1.0} 
L_AF.output    		  				= {0.0,1.0}

L_gear     			  				= CreateGauge("parameter")
L_gear.parameter_name   			= "Gear_status"
L_gear.arg_number    	 			= 54
L_gear.input    		 			= {0.0,1.0} 
L_gear.output    		  			= {0.0,1.0}

GEAR_POS     			  			= CreateGauge("parameter")
GEAR_POS.parameter_name   			= "Gear_Position"
GEAR_POS.arg_number    	 			= 70
GEAR_POS.input    		 			= {0,1} 
GEAR_POS.output    		  			= {0,1}

GEAR_NOSE     			  			= CreateGauge("parameter")
GEAR_NOSE.parameter_name   			= "GEAR_NOSE"
GEAR_NOSE.arg_number    	 		= 1
GEAR_NOSE.input    		 			= {0.0,1.0} 
GEAR_NOSE.output    		  		= {0.0,1.0}

GEAR_LEFT     			  			= CreateGauge("parameter")
GEAR_LEFT.parameter_name   			= "GEAR_LEFT"
GEAR_LEFT.arg_number    	 		= 3
GEAR_LEFT.input    		 			= {0.0,1.0} 
GEAR_LEFT.output    		  		= {0.0,1.0}

GEAR_RIGHT     			  			= CreateGauge("parameter")
GEAR_RIGHT.parameter_name   		= "GEAR_RIGHT"
GEAR_RIGHT.arg_number    	 		= 5
GEAR_RIGHT.input    		 		= {0.0,1.0} 
GEAR_RIGHT.output    		  		= {0.0,1.0}

Pi_HYD1     			  			= CreateGauge("parameter")
Pi_HYD1.parameter_name   			= "P_HYD1"
Pi_HYD1.arg_number    	 			= 55
Pi_HYD1.input    		 			= {0.0,30} 
Pi_HYD1.output    		  			= {0.0,0.3}

Pi_HYD2     			  			= CreateGauge("parameter")
Pi_HYD2.parameter_name   			= "P_HYD2"
Pi_HYD2.arg_number    	 			= 56
Pi_HYD2.input    		 			= {0.0,30} 
Pi_HYD2.output    		  			= {0.0,0.3}

L_10K     			  				= CreateGauge("parameter")
L_10K.parameter_name   				= "L_10K"
L_10K.arg_number    	 			= 57
L_10K.input    		 				= {0.0,1.0} 
L_10K.output    		  			= {0.0,1.0}

FLAPS      			  				= CreateGauge("parameter")
FLAPS.parameter_name   				= "flaps_status"
FLAPS.arg_number    	 			= 42
FLAPS.input    		 				= {0.0,1.0} 
FLAPS.output    		  			= {0.0,1.0}

FLAPSWITCH      			  		= CreateGauge("parameter")
FLAPSWITCH.parameter_name   		= "D_flaps_command"
FLAPSWITCH.arg_number    	 		= 59
FLAPSWITCH.input    		 		= {0,2} 
FLAPSWITCH.output    		  		= {0,2}

L_TNS								= CreateGauge("parameter")
L_TNS.parameter_name   				= "L_TNS"
L_TNS.arg_number					= 63
L_TNS.input							= {0.0, 1.0}
L_TNS.output						= {0.0, 1.0}

L_SMOKE								= CreateGauge("parameter")
L_SMOKE.parameter_name   			= "L_SMOKE"
L_SMOKE.arg_number					= 62
L_SMOKE.input						= {0.0, 1.0}
L_SMOKE.output						= {0.0, 1.0}

L_WBRAKE							= CreateGauge("parameter")
L_WBRAKE.parameter_name   			= "L_WBRAKE"
L_WBRAKE.arg_number					= 15
L_WBRAKE.input						= {0.0, 1.0}
L_WBRAKE.output						= {0.0, 1.0}

L_250L								= CreateGauge("parameter")
L_250L.parameter_name   			= "L_250L"
L_250L.arg_number					= 20
L_250L.input						= {0.0, 1.0}
L_250L.output						= {0.0, 1.0}

L_WINGL								= CreateGauge("parameter")
L_WINGL.parameter_name   			= "L_WINGL"
L_WINGL.arg_number					= 21
L_WINGL.input						= {0.0, 1.0}
L_WINGL.output						= {0.0, 1.0}

L_WINGR								= CreateGauge("parameter")
L_WINGR.parameter_name   			= "L_WINGR"
L_WINGR.arg_number					= 22
L_WINGR.input						= {0.0, 1.0}
L_WINGR.output						= {0.0, 1.0}

L_FLAPS								= CreateGauge("parameter")
L_FLAPS.parameter_name   			= "L_FLAPS"
L_FLAPS.arg_number					= 64
L_FLAPS.input						= {0.0, 1.0}
L_FLAPS.output						= {0.0, 1.0}

L_VD_G								= CreateGauge("parameter")
L_VD_G.parameter_name   			= "L_VD_G"
L_VD_G.arg_number					= 65
L_VD_G.input						= {0.0, 1.0}
L_VD_G.output						= {0.0, 1.0}

L_VD_D								= CreateGauge("parameter")
L_VD_D.parameter_name   			= "L_VD_D"
L_VD_D.arg_number					= 66
L_VD_D.input						= {0.0, 1.0}
L_VD_D.output						= {0.0, 1.0}

-- L_NAV								= CreateGauge("parameter")
-- L_NAV.parameter_name   				= "T_NAVLIGHT"
-- L_NAV.arg_number					= 190
-- L_NAV.input							= {0.0, 1.0}
-- L_NAV.output						= {0.0, 1.0}

-- L_FORM							= CreateGauge("parameter")
-- L_FORM.parameter_name   			= "T_FORMLIGHT"
-- L_FORM.arg_number					= 204
-- L_FORM.input						= {0.0, 1.0}
-- L_FORM.output						= {0.0, 1.0}

-- L_STROBE							= CreateGauge("parameter")
-- L_STROBE.parameter_name   			= "T_STROBELIGHT"
-- L_STROBE.arg_number					= 195
-- L_STROBE.input						= {0.0, 1.0}
-- L_STROBE.output						= {0.0, 1.0}

need_to_be_closed = true -- close lua state after initialization 

Z_test =
{
	near = 0.05,
	far  = 4.0,
}

--[[ available functions 

 --base_gauge_RadarAltitude
 --base_gauge_BarometricAltitude
 --base_gauge_AngleOfAttack
 --base_gauge_AngleOfSlide
 --base_gauge_VerticalVelocity
 --base_gauge_TrueAirSpeed
 --base_gauge_IndicatedAirSpeed
 --base_gauge_MachNumber
 --base_gauge_VerticalAcceleration --Ny
 --base_gauge_HorizontalAcceleration --Nx
 --base_gauge_LateralAcceleration --Nz
 --base_gauge_RateOfRoll
 --base_gauge_RateOfYaw
 --base_gauge_RateOfPitch
 --base_gauge_Roll
 --base_gauge_MagneticHeading
 --base_gauge_Pitch
 --base_gauge_Heading
 --base_gauge_EngineLeftFuelConsumption
 --base_gauge_EngineRightFuelConsumption
 --base_gauge_EngineLeftTemperatureBeforeTurbine
 --base_gauge_EngineRightTemperatureBeforeTurbine
 --base_gauge_EngineLeftRPM
 --base_gauge_EngineRightRPM
 --base_gauge_WOW_RightMainLandingGear
 --base_gauge_WOW_LeftMainLandingGear
 --base_gauge_WOW_NoseLandingGear
 --base_gauge_RightMainLandingGearDown
 --base_gauge_LeftMainLandingGearDown
 --base_gauge_NoseLandingGearDown
 --base_gauge_RightMainLandingGearUp
 --base_gauge_LeftMainLandingGearUp
 --base_gauge_NoseLandingGearUp
 --base_gauge_LandingGearHandlePos
 --base_gauge_StickRollPosition
 --base_gauge_StickPitchPosition
 --base_gauge_RudderPosition
 --base_gauge_ThrottleLeftPosition
 --base_gauge_ThrottleRightPosition
 --base_gauge_HelicopterCollective
 --base_gauge_HelicopterCorrection
 --base_gauge_CanopyPos
 --base_gauge_CanopyState
 --base_gauge_FlapsRetracted
 --base_gauge_SpeedBrakePos
 --base_gauge_FlapsPos
 --base_gauge_TotalFuelWeight

--]]
