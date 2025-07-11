function m3_Mk6(tbl)

	tbl.category = CAT_GUN_MOUNT 
	tbl.name 	 = "m3_k6"
	tbl.supply 	 = 
	{
		shells = {"M2_50_aero_AP","M20_50_aero_APIT"},
		mixes  = {{1,2,2,1,2,2}}, --  
		count  = 150,
	}
	if tbl.mixes then 
	   tbl.supply.mixes =  tbl.mixes
	   tbl.mixes	    = nil
	end
	tbl.gun = 
	{
		max_burst_length = 300,
		rates 			 = {1200},
		recoil_coeff 	 = 1,
		barrels_count 	 = 1,
	}
	if tbl.rates then 
	   tbl.gun.rates    =  tbl.rates
	   tbl.rates	    = nil
	end	
	tbl.ejector_pos 			= tbl.ejector_pos or {-0.4, -1.2, 0.18}
	tbl.ejector_dir 			= {0,-1,0}
	tbl.supply_position  		= tbl.supply_position   or {0,  0.3, -0.3}
	tbl.aft_gun_mount 			= false
	tbl.effective_fire_distance = 1000
	tbl.drop_cartridge 			= 0
	tbl.muzzle_pos				= tbl.muzzle_pos 		 or  {0,0,0} -- all position from connector
	tbl.muzzle_pos_connector	= tbl.muzzle_pos_connector 		 or  "Gun_point" -- all position from connector
	tbl.azimuth_initial 		= tbl.azimuth_initial    or 0   
	tbl.elevation_initial 		= tbl.elevation_initial  or 0   
	if  tbl.effects == nil then
		tbl.effects = {{ name = "FireEffect"     , arg 		 = tbl.effect_arg_number or 436 },
					   { name = "HeatEffectExt"  , shot_heat = 7.823, barrel_k = 0.462 * 2.7, body_k = 0.462 * 14.3 },
					   { name = "SmokeEffect"}}
	end
	return declare_weapon(tbl)
end

local tipsLeft 		= {
	{ CLSID = "{AIS_ASQ_T50}" ,arg_value = 0.0, attach_point_position = {0.30,  0.0,  0.0}},-- ACMI pod
	{ CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}", arg_value = 0.0},--Aim-9P
	{ CLSID = "{AIM-9L}"								,arg_value = 0.0},-- AIM-9L
	{ CLSID = "{AIM-9B}", arg_value = 0.0},								 --AIM-9B NEU
	{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" ,arg_value = 0.0}, -- mk-84
	{ CLSID = "{D5D51E24-348C-4702-96AF-97A714E72697}" ,arg_value = 0.0}, -- 2*Mk82
	{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" ,arg_value = 0.0}, -- Mk82
	{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" ,arg_value = 0.0}, -- Mk83
	{ CLSID = "{00F5DAC4-0466-4122-998F-B1A298E34113}", arg_value = 0.0}, --M117 1x
	--{ CLSID = "{AGM_45A}"								,arg_value = 0.0},-- AGM 45A "Shrike"
	{ CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B65}" ,arg_value = 0.0}, -- AGM-65K
	{ CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}" ,arg_value = 0.0}, -- LAU-117 AGM-65K
	--{ CLSID = "{D7670BC7-881B-4094-906C-73879CF7EB28}" ,arg_value = 0.0}, -- lau_88 AGM-65K
	--{ CLSID = "{907D835F-E650-4154-BAFD-C656882555C0}" ,arg_value = 0.0}, -- lau_88 AGM-65K
	{ CLSID = "{LAU3_FFAR_MK1HE}"					   	,arg_value = 0.0},--19xFFAR Mk1-HE Rockets
	{ CLSID = "{LAU3_FFAR_MK5HEAT}"					   	,arg_value = 0.0},--19xFFAR Mk1-HEAT Rockets
	{ CLSID = "{Hunter_F6_500L_ptb}" ,arg_value = 0.0,attach_point_position = {0.0, 0.0 , 0.0 } },--Tank Mk6
	{ CLSID = "<CLEAN>"								   ,arg_value = 1},
}

local tipsRight 		= {
	{ CLSID = "{AIS_ASQ_T50}" ,arg_value = 0.0, attach_point_position = {0.30,  0.0,  0.0}},-- ACMI pod
	{ CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}", arg_value = 0.0},--Aim-9P
	{ CLSID = "{AIM-9L}"								,arg_value = 0.0},-- AIM-9L
	{ CLSID = "{AIM-9B}", arg_value = 0.0},								 --AIM-9B NEU
	{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" ,arg_value = 0.0}, -- mk-84
	{ CLSID = "{D5D51E24-348C-4702-96AF-97A714E72697}" ,arg_value = 0.0}, -- 2*Mk82
	{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" ,arg_value = 0.0}, -- Mk82
	{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" ,arg_value = 0.0}, -- Mk83
	{ CLSID = "{00F5DAC4-0466-4122-998F-B1A298E34113}", arg_value = 0.0}, --M117 1x
	--{ CLSID = "{AGM_45A}"								,arg_value = 0.0},-- AGM 45A "Shrike"
	{ CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B65}" ,arg_value = 0.0}, -- AGM-65K
	{ CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}" ,arg_value = 0.0}, -- LAU-117 AGM-65K
	--{ CLSID = "{D7670BC7-881B-4094-906C-73879CF7EB28}" ,arg_value = 0.0}, -- lau_88 AGM-65K
	--{ CLSID = "{907D835F-E650-4154-BAFD-C656882555C0}" ,arg_value = 0.0}, -- lau_88 AGM-65K
	{ CLSID = "{LAU3_FFAR_MK1HE}"					   	,arg_value = 0.0},--19xFFAR Mk1-HE Rockets
	{ CLSID = "{LAU3_FFAR_MK5HEAT}"					   	,arg_value = 0.0},--19xFFAR Mk1-HEAT Rockets
	{ CLSID = "{Hunter_F6_500R_ptb}" ,arg_value = 0.0,attach_point_position = {0.0, 0.0 , 0.0 } },--Tank Mk6
	{ CLSID = "<CLEAN>"								   ,arg_value = 1},
}

local outboardLeft 	= {
	{ CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}", arg_value = 0.0},--Aim-9P
	{ CLSID = "{AIM-9L}"								,arg_value = 0.0},-- AIM-9L
	{ CLSID = "{AIM-9B}", arg_value = 0.0},								 --AIM-9B NEU
	{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" ,arg_value = 0.0}, -- mk-84
	{ CLSID = "{D5D51E24-348C-4702-96AF-97A714E72697}" ,arg_value = 0.0}, -- 2*Mk82
	{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" ,arg_value = 0.0}, -- Mk82
	{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" ,arg_value = 0.0}, -- Mk83
	{ CLSID = "{00F5DAC4-0466-4122-998F-B1A298E34113}", arg_value = 0.0}, --M117 1x
	--{ CLSID = "{AGM_45A}"								,arg_value = 0.0},-- AGM 45A "Shrike"
	{ CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B65}" ,arg_value = 0.0}, -- AGM-65K
	{ CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}" ,arg_value = 0.0}, -- LAU-117 AGM-65K
	--{ CLSID = "{D7670BC7-881B-4094-906C-73879CF7EB28}" ,arg_value = 0.0}, -- lau_88 AGM-65K
	--{ CLSID = "{907D835F-E650-4154-BAFD-C656882555C0}" ,arg_value = 0.0}, -- lau_88 AGM-65K
	{ CLSID = "{LAU3_FFAR_MK1HE}"					   	,arg_value = 0.0},--19xFFAR Mk1-HE Rockets
	{ CLSID = "{LAU3_FFAR_MK5HEAT}"					   	,arg_value = 0.0},--19xFFAR Mk1-HEAT Rockets
	{ CLSID = "{Hunter_F6_500L_ptb}" ,arg_value = 0.0,attach_point_position = {0.0, 0.0 , 0.0 } },--Tank Mk6
	{ CLSID = "{Hunter_F6_1000L_ptb}" ,arg_value = 0.7,attach_point_position = {0.0, 0.0 , 0.0 } },--Tank Mk6 0.5 or 0.7
	{ CLSID = "<CLEAN>"								   ,arg_value = 1},
}

local outboardRight 	= {
	{ CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}", arg_value = 0.0},--Aim-9P
	{ CLSID = "{AIM-9L}"								,arg_value = 0.0},-- AIM-9L
	{ CLSID = "{AIM-9B}", arg_value = 0.0},								 --AIM-9B NEU
	{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" ,arg_value = 0.0}, -- mk-84
	{ CLSID = "{D5D51E24-348C-4702-96AF-97A714E72697}" ,arg_value = 0.0}, -- 2*Mk82
	{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" ,arg_value = 0.0}, -- Mk82
	{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" ,arg_value = 0.0}, -- Mk83
	{ CLSID = "{00F5DAC4-0466-4122-998F-B1A298E34113}", arg_value = 0.0}, --M117 1x
	--{ CLSID = "{AGM_45A}"								,arg_value = 0.0},-- AGM 45A "Shrike"
	{ CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B65}" ,arg_value = 0.0}, -- AGM-65K
	{ CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}" ,arg_value = 0.0}, -- LAU-117 AGM-65K
	--{ CLSID = "{D7670BC7-881B-4094-906C-73879CF7EB28}" ,arg_value = 0.0}, -- lau_88 AGM-65K
	--{ CLSID = "{907D835F-E650-4154-BAFD-C656882555C0}" ,arg_value = 0.0}, -- lau_88 AGM-65K
	{ CLSID = "{LAU3_FFAR_MK1HE}"					   	,arg_value = 0.0},--19xFFAR Mk1-HE Rockets
	{ CLSID = "{LAU3_FFAR_MK5HEAT}"					   	,arg_value = 0.0},--19xFFAR Mk1-HEAT Rockets
	{ CLSID = "{Hunter_F6_500R_ptb}" ,arg_value = 0.0,attach_point_position = {0.0, 0.0 , 0.0 } },--Tank Mk6
	{ CLSID = "{Hunter_F6_1000R_ptb}" ,arg_value = 0.7,attach_point_position = {0.0, 0.0 , 0.0 } },--Tank Mk6 0.5 or 0.7
	{ CLSID = "<CLEAN>"								   ,arg_value = 1},
}

local inboard 	= {
	{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" ,arg_value = 0.0}, -- mk-84
	{ CLSID = "{D5D51E24-348C-4702-96AF-97A714E72697}" ,arg_value = 0.0}, -- 2*Mk82
	{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" ,arg_value = 0.0}, -- Mk82
	{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" ,arg_value = 0.0}, -- Mk83
	{ CLSID = "{TER_9A_3*MK-82}"					   ,arg_value = 0.0},--Mk82x3
	--{ CLSID = "{SB_F105_BRU_41A_M117_6}" 				,arg_value = 0.0},--M117x6
	--{ CLSID = "{SB_F105_TER9A_M117_3}"					,arg_value = 0.0},--M117x3
	{ CLSID = "{BRU-42_3*Mk-83}"					   	,arg_value = 0.0},--Mk83x3
	{ CLSID = "{LAU3_FFAR_MK1HE}"					   	,arg_value = 0.0},--19xFFAR Mk1-HE Rockets
	{ CLSID = "{LAU3_FFAR_MK5HEAT}"					   	,arg_value = 0.0},--19xFFAR Mk1-HEAT Rockets
	{ CLSID = "{BRU33_2*LAU61_M282}"					,arg_value = 0.0},--Neuer Versuch mit 2xMK282 Hydrasx19
	{ CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B65}" ,arg_value = 0.0}, -- AGM-65K
	{ CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}" ,arg_value = 0.0}, -- LAU-117 AGM-65K
	--{ CLSID = "{D7670BC7-881B-4094-906C-73879CF7EB28}" ,arg_value = 0.0}, -- lau_88 AGM-65K
	--{ CLSID = "{907D835F-E650-4154-BAFD-C656882555C0}" ,arg_value = 0.0}, -- lau_88 AGM-65K
	{ CLSID = "<CLEAN>"								   	,arg_value = 1},
}


F6 =  {
        
	Name 				=   'Hunter F6',
	DisplayName			= _('Hunter F6'),
	ViewSettings			= ViewSettings,
	
	HumanCockpit 		= true,
	HumanCockpitPath    = current_mod_path..'/Cockpit/',
	
	Picture 			= "Hunter.png",
	Rate 				= 40, -- RewardPoint in Multiplayer
	Shape 				= "Hunter_F6",
	
	shape_table_data 	= 
	{
		{
			file  	 = 'Hunter_F6';
			life  	 = 20; -- lifebar
			vis   	 = 3;  -- visibility gain.
			desrt    = 'Hunter_F6-destr'; -- Name of destroyed object file name Hunter-destr
			fire  	 = { 300, 3}; -- Fire on the ground after destoyed: 300sec 2m
			username = 'Hunter F6';
			index    =  WSTYPE_PLACEHOLDER;
		},
		{
			name  = "Hunter_F6-destr";
			file  = "Hunter_F6-destr";
			fire  = { 240, 2};  -- 240  2
		},

	},
	
	-- add model draw args for network transmitting to this draw_args table (32 limit)
	

					
	mapclasskey 		= "P0091000025",
	attribute  			= {wsType_Air, wsType_Airplane, wsType_Fighter, WSTYPE_PLACEHOLDER ,"Battleplanes",},
	Categories 			= {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor",},	
	----- Weight & Fuel Characteristics  ------
    
	M_empty 					= 15000, -- kg
	M_nominal 					= 18000, -- kg
	M_max 						= 27354, -- kg
	M_fuel_max 					= 8000, -- kg --Internal fuel
	H_max 					 	= 18000, -- m
	average_fuel_consumption 	= 0.85, -- this is highly relative, but good estimates are 36-40l/min = 28-31kg/min = 0.47-0.52kg/s -- 45l/min = 35kg/min = 0.583kg/s
	CAS_min 					= 60, -- if this is not OVERAL FLIGHT TIME, but jus LOITER TIME, than it sholud be 10-15 minutes.....CAS capability in minute (for AI)
	V_opt 						=	254,		-- Cruise speed (for AI)* (m/s)
	V_take_off 					=	61, 		-- Take off speed in m/s (for AI)*	(122)
	V_land 						=	71, 		-- Land speed in m/s (for AI)
	V_max_sea_level 			=	411,		-- Max speed at sea level in m/s (for AI)
	V_max_h 					=	736.11 ,	-- Max speed at max altitude in m/s (for AI)
	Vy_max 						=	275, 		-- Max climb speed in m/s (for AI)
	Mach_max 					=	2.45, 	    -- Max speed in Mach (for AI)
	Ny_min 						=	-3, 		-- Min G (for AI)
	Ny_max 						=	8.0,		-- Max G (for AI)
	Ny_max_e 					=	8.0, 		-- ?? Max G (for AI)
	AOA_take_off 				=	0.16,		-- AoA in take off radians (for AI)
	bank_angle_max 				=	60,			-- Max bank angle (for AI)
	flaps_maneuver 				=	1,			-- Max flaps in take-off and maneuver (0.5 = 1st stage; 1.0 = 2nd stage) (for AI)
	range 						=	2540,		-- Max range in km (for AI)


	has_afteburner 				= false, -- AFB yes/no
	has_speedbrake 				= true, -- Speedbrake yes/no
	
	nose_gear_pos 				                = {3.745, -1.705, 0},   -- position of gear
	    nose_gear_amortizer_direct_stroke   		=  0.000,  -- down from nose_gear_pos
	    nose_gear_amortizer_reversal_stroke  		=  -0.160,  -- up 0.161m 3D Modell MK6
	    nose_gear_amortizer_normal_weight_stroke 	=  -0.110,   -- up
	    nose_gear_wheel_diameter 	                =  0.455, -- 3D Modell MK6

	    main_gear_pos 						 	    = {-0.790, -1.730, 2.300}, -- changed back
	    main_gear_amortizer_direct_stroke	 	    =  0.000, -- down from main_gear_pos
	    main_gear_amortizer_reversal_stroke  	    =  -0.240, -- up 0.24m 3D Modell MK6
	    main_gear_amortizer_normal_weight_stroke    =  -0.170,-- down from main_gear_pos
	    main_gear_wheel_diameter 				    =   0.750, -- 3D Modell MK6
	
	
	
	tanker_type 				= 0, -- Tanker type if the plane is airrefuel capable
	wing_area 					= 17.5, -- wing area in m2
	wing_span 					= 9.114, -- wing span in m
	wing_type 					= 0,
	thrust_sum_max 				= 2860, -- thrust in kg (26.4kN) --no effects
	thrust_sum_ab 				= 2860, -- thrust in kg (xxkN) --no effects
	length 						= 11.847, -- full lenght in m
	height 						= 4.19, -- height in m
	flaps_maneuver 				= 0.5, -- Max flaps in take-off and maneuver (0.5 = 1st stage; 1.0 = 2nd stage) (for AI)
	range 						= 1230, -- Max range in km (for AI)
	RCS 						= 2.14, -- Radar Cross Section m2
	IR_emission_coeff 			= 0.62, -- Normal engine -- IR_emission_coeff = 1 is Su-27 without afterburner. It is reference.
	IR_emission_coeff_ab 		= 0.62, -- With afterburner
	wing_tip_pos 				= {-2.70,	-0.15, -4.55}, -- wingtip coords for visual effects{-2.65,	-0.15, -4.60}
	nose_gear_wheel_diameter 	= 0.400, -- in m
	main_gear_wheel_diameter 	= 0.588, -- in m
	brakeshute_name 			= 3, -- Landing - brake chute visual shape after separation
	is_tanker 					= false, -- Tanker yes/no
	air_refuel_receptacle_pos 	= {0, 0, 0}, -- refuel coords
	engines_count				= 1, -- Engines count
	engines_nozzles = {
		[1] = 
		{
			pos 		=  {-3.28,	-0.427,	0.6}, -- nozzle coords -3.234,	-0.427,	0.6
			elevation   =  0, -- AFB cone elevation
			diameter	 = 0.1, -- AFB cone diameter
			smokiness_level		= 	0.35,
			exhaust_length_ab   = 0.0, -- lenght in m
			exhaust_length_ab_K = 0.0, -- AB animation
		}, -- end of [1]
	}, -- end of engines_nozzles
	
 	sounderName         = "Aircraft/Planes/F6",

	crew_size	 = 1,
	crew_members = 
	{
		[1] = 
		{
			drop_canopy_name	 = "Hunter_F6_fonar",
			ejection_seat_name = "pilot+ejectionseat",
			canopy_arg           = 38,
			drop_canopy_name = "Front_Canopy",
			pos =  {3.302,0.763,0.000},     --  {2.831,	-0.7,	0}, altitude =2eme parametre
			canopy_pos = {0,	0,	0},
		}, -- end of [1]
		
	}, -- end of crew_members

	fires_pos = 
		{
			[1] = 	{-0.707,	0.553,	-0.213},	-- After maingear, fuselage bottom
			[2] = 	{-0.037,	0.285,	1.391},		-- Wing inner Left top **
			[3] = 	{-0.037,	0.285,	-1.391},	-- Wing inner Right bottom **
			[4] = 	{-0.82,	0.265,	2.774},			-- Wing middle Left bottom **
			[5] = 	{-0.82,	0.265,	-2.774},		-- Wing middle Right top **
			[6] = 	{-0.82,	0.255,	4.274},			-- Wing outer Left **
			[7] = 	{-0.82,	0.255,	-4.274},		-- Wing outer Right
			[8] = 	{-5.003,	0.261,	0},			-- Engine damage big
			[9] = 	{-5.003,	0.261,	0},			-- Engine damage small
			[10] = 	{-0.707,	0.453,	1.036},		-- Air intake bottom L
			[11] = 	{-0.707,	0.453,	-1.036},	-- Air intake bottom R
		}, -- end of fires_pos
	
		effects_presets = {
			{effect = "OVERWING_VAPOR", file = current_mod_path.."/Effects/Hunter_overwingVapor.lua"},
		},
	
	mechanimations = {
		Door0 = {
			{Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 9.0},},},}, Flags = {"Reversible"},},
			{Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 6.0},},},}, Flags = {"Reversible", "StepsBackwards"},},
			{Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 0},},},},},
		},
		CrewLadder = {
			{Transition = {"Dismantle", "Erect"}, Sequence = {
				{C = {{"Arg", 805, "to", 1.0, "in", 3.0}}},
			}},
			{Transition = {"Erect", "Dismantle"}, Sequence = {
				{C = {{"Arg", 805, "to", 0.0, "in", 3.0}}},
			}},
		},
	}, -- end of mechanimations

		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	-1,	0},
				pos = 	{-1.185,	-1.728,	-0.878},
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	-1,	0},
				pos = 	{-1.185,	-1.728,	0.878},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser

        -- Countermeasures
passivCounterm 		= {
CMDS_Edit 			= true,
SingleChargeTotal 	= 60,
chaff 				= {default = 30, increment = 30, chargeSz = 1},
flare 				= {default = 15, increment = 15, chargeSz = 2}
 },
	
	
 CanopyGeometry 	= {
	azimuth 	= {-145.0, 145.0},-- pilot view horizontal (AI)
	elevation 	= {-50.0, 90.0}-- pilot view vertical (AI)
},


Countermeasures = {
ECM 			= "AN/ALQ-135" -- no ECM
},
Failures = {
	{ id = 'asc', 		label = _('ASC'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
	{ id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
	{ id = 'hydro',  	label = _('HYDRO'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
	{ id = 'l_engine',  label = _('L-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
	{ id = 'r_engine',  label = _('R-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
	{ id = 'radar',  	label = _('RADAR'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
  --{ id = 'eos',  		label = _('EOS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
  --{ id = 'helmet',  	label = _('HELMET'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
	{ id = 'mlws',  	label = _('MLWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
	{ id = 'rws',  		label = _('RWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
	{ id = 'ecm',   	label = _('ECM'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
	{ id = 'hud',  		label = _('HUD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
	{ id = 'mfd',  		label = _('MFD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },		
},
HumanRadio = {
frequency 		= 127.5,  -- Radio Freq angepasst F104
editable 		= true,
minFrequency	= 127.5, -- angepasst F104
maxFrequency 	= 399.979, -- angepasst F104
modulation 		= MODULATION_AM
},

	
	Guns = {
		m3_Mk6({
			muzzle_pos_connector = "Gun_point_0",
		--	muzzle_pos 			 = {4.048, -0.145, 0.072},
		--	effect_arg_number	 = 350,
			rates				 = {1249},
			mixes				 = {{2,1,1,1,1,1}},
			azimuth_initial		 = 0,
			elevation_initial	 = 0,
			supply_position		 = {3.0, -0.6, 0.2},
			ejector_pos			 = {3.0, 0.0 ,0.2},
		--	ejector_pos_connector = "ejector_1",
			}),
			m3_Mk6({
			muzzle_pos_connector = "Gun_point_1",
		--	muzzle_pos 			 = {4.048, -0.145, -0.072},
		--	effect_arg_number	 = 433,
			rates				 = {1190},
			mixes				 = {{1,1,2,1,1,1}},
			azimuth_initial		 = 0,
			elevation_initial	 = 0,
			supply_position		 = {3.0, -0.6, -0.2},
			ejector_pos			 = {3.0, 0.0 ,-0.2},
		--	ejector_pos_connector = "ejector_2",
			}),
			m3_Mk6({
			muzzle_pos_connector = "Gun_point_2",
		--	muzzle_pos 			 = {4.048, -0.145, -0.072},
		--	effect_arg_number	 = 433,
			rates				 = {1190},
			mixes				 = {{1,1,2,1,1,1}},
			azimuth_initial		 = 0,
			elevation_initial	 = 0,
			supply_position		 = {3.0, -0.6, -0.2},
			ejector_pos			 = {3.0, 0.0 ,-0.2},
		--	ejector_pos_connector = "ejector_2",
			}),
			m3_Mk6({
			muzzle_pos_connector = "Gun_point_3",
		--	muzzle_pos 			 = {4.048, -0.145, -0.072},
		--	effect_arg_number	 = 433,
			rates				 = {1190},
			mixes				 = {{1,1,2,1,1,1}},
			azimuth_initial		 = 0,
			elevation_initial	 = 0,
			supply_position		 = {3.0, -0.6, -0.2},
			ejector_pos			 = {3.0, 0.0 ,-0.2},
		--	ejector_pos_connector = "ejector_2",
			}),
		},
	
			stores_number =	3,  
			Pylons = {
				pylon(1, 2, -9.23,	0,	0,--SMOKE POD 
				{
							connector = "disable",
							DisplayName = ("W SMK")
				},
				{
					{ CLSID    = "{A4BCC903-06C8-47bb-9937-A30FEDB4E741}" }, --Smokewinder - red
					{ CLSID    = "{A4BCC903-06C8-47bb-9937-A30FEDB4E742}" }, --Smokewinder - green
					{ CLSID    = "{A4BCC903-06C8-47bb-9937-A30FEDB4E743}" }, --Smokewinder - blue
					{ CLSID    = "{A4BCC903-06C8-47bb-9937-A30FEDB4E744}" }, --Smokewinder - white
					{ CLSID    = "{A4BCC903-06C8-47bb-9937-A30FEDB4E745}" }, --Smokewinder - yellow
				}
			),
			pylon(2, 2, -9.23,	0,	0,--SMOKE POD 
			{
						connector = "disable",
						DisplayName = ("R SMK")
			},
			{
				{ CLSID    = "{A4BCC903-06C8-47bb-9937-A30FEDB4E741}" }, --Smokewinder - red
				{ CLSID    = "{A4BCC903-06C8-47bb-9937-A30FEDB4E742}" }, --Smokewinder - green
				{ CLSID    = "{A4BCC903-06C8-47bb-9937-A30FEDB4E743}" }, --Smokewinder - blue
				{ CLSID    = "{A4BCC903-06C8-47bb-9937-A30FEDB4E744}" }, --Smokewinder - white
				{ CLSID    = "{A4BCC903-06C8-47bb-9937-A30FEDB4E745}" }, --Smokewinder - yellow
			}
		  ),
		  	pylon(3, 2, -9.23,	0,	0,--SMOKE POD 
			{
						connector = "disable",
						DisplayName = ("CLR SMK")
			},
			{
				{ CLSID    = "{A4BCC903-06C8-47bb-9937-A30FEDB4E741}" }, --Smokewinder - red
				{ CLSID    = "{A4BCC903-06C8-47bb-9937-A30FEDB4E742}" }, --Smokewinder - green
				{ CLSID    = "{A4BCC903-06C8-47bb-9937-A30FEDB4E743}" }, --Smokewinder - blue
				{ CLSID    = "{A4BCC903-06C8-47bb-9937-A30FEDB4E744}" }, --Smokewinder - white
				{ CLSID    = "{A4BCC903-06C8-47bb-9937-A30FEDB4E745}" }, --Smokewinder - yellow
			}
		  ),
			pylon(4, 0, 0, 0, 0,
				{
					arg = 309,
					arg_value = 0,
					DisplayName = "1",
					use_full_connector_position = true,
					connector = "Pylon2",
				},
				tipsLeft
			),
			pylon(5, 0, 0, 0, 0,
				{
					arg = 312,
					arg_value = 0,
					DisplayName = "2",
					use_full_connector_position = true,
					connector = "Pylon5",
				},
				outboardLeft
			),
			pylon(6, 0, 0, 0, 0,
			{
				arg = 313,
				arg_value = 0,
				DisplayName = "3",
				use_full_connector_position = true,
				connector = "Pylon6",
			},
			inboard
		),
		pylon(7, 0, 0, 0, 0,--
			{
				arg = 314,
				arg_value = 0,
				DisplayName = "4",
				use_full_connector_position = true,
				connector = "Pylon7",
			},
			inboard
		),
			pylon(8, 0, 0, 0, 0,
				{
					arg = 315,
					arg_value = 0,
					DisplayName = "5",
					use_full_connector_position = true,
					connector = "Pylon8",
				},
				outboardRight
			),
			pylon(9, 0, 0, 0, 0,
				{
					arg = 318,
					arg_value = 0,
					DisplayName = "6",
					use_full_connector_position = true,
					connector = "Pylon11",
				},
				tipsRight
			),
		},
	
		Tasks = {
			aircraft_task(CAP),
			aircraft_task(Escort),
			aircraft_task(FighterSweep),
			aircraft_task(Intercept),
			aircraft_task(Reconnaissance),
			aircraft_task(GroundAttack),
			aircraft_task(CAS),
		  --aircraft_task(AFAC),
			aircraft_task(RunwayAttack),
			aircraft_task(AntishipStrike),
	  },	
	  DefaultTask = aircraft_task(Nothing),
	
	SFM_Data =
	{	
		aerodynamics = 
		{
			Cy0			=	0,
			Mzalfa		=	6,
			Mzalfadt	=	1,
			kjx			=	2.95,
			kjz			=	0.00125,
			Czbe		=	-0.016,
			cx_gear		=	0.0268,
			cx_flap		=	0.05,
			cy_flap		=	0.52,
			cx_brk		=	0.06,
            
            -------------------- Drag Polar Coefficients ---------------------------------------
			-- Cx = Cx_0 + Cy^2*B2 +Cy^4*B4
			-- It appears this really provides us with a good way to tune turn rate performance
			-- and provides us with how much drag we build up for a given amount of lift we make
			-- Drag polars were tuned from the flight manual and testing with correct max sustained
			table_data = 
			{
                --      M		Cx0			Cya		    B		B4		    Omxmax	Aldop		Cymax
				[1] = 	{0,	    0.0151,	    0.07,	    0.134,	0.0567,	    0.5,	30,	        1.1},
				[2] = 	{0.2,	0.0154,	    0.07,	    0.134,	0.056,	    1.5,	30,	        1.1},
				[3] = 	{0.4,	0.0156,	    0.07,	    0.129,	0.0549,	    2.5,	30,	        1.1},
				[4] = 	{0.6,	0.0164,	    0.073,	    0.12,	0.0474,	    3.5,	30,	        1.1},
				[5] = 	{0.7,	0.0172,	    0.076,	    0.105,	0.052,	    3.5,	28.6666667,	1.091},
				[6] = 	{0.8,	0.0201,	    0.079,	    0.11,	0.0607,	    3.5,	27.3333333,	1.082},
				[7] = 	{0.9,	0.0284,	    0.083,	    0.139,	0.0666,	    3.5,	26,	        1.073},
				[8] = 	{1.0,	0.0387,	    0.085,	    0.174,	0.073,	    3.5,	24.6666667,	1.064},
				[9] = 	{1.05,	0.0416,	    0.0855,	    0.1965,	0.07685,	3.5,	24,	        1.06},
				[10] = 	{1.1,	0.0445,	    0.086,	    0.219,	0.0807,	    3.15,	18,	        1.04},
				[11] = 	{1.2,	0.0462,	    0.083,	    0.3,	0.066,	    2.45,	17,	        1.02},
				[12] = 	{1.3,	0.04536,	0.077,	    0.344,	0.0594,	    1.75,	16,	        1},
				[13] = 	{1.4,	0.0432,	    0.0695,	    0.393,	0.0553,	    1.625,	14.5,	    0.95},
				[14] = 	{1.5,	0.0429,	    0.063625,	0.4505,	0.0521,	    1.5,	13,	        0.9},
				[15] = 	{1.6,	0.0426,	    0.05775,	0.508,	0.0489,	    1.2,	12.5,	    0.8},
				[16] = 	{1.7,	0.04145,	0.051875,	0.615,	0.52445,	0.9,	12,	        0.7},
				[17] = 	{1.8,	0.0403,	    0.046,	    0.722,	1,	        0.86,	11.4,	    0.64},
				[18] = 	{2.2,	0.0377,	    0.034,	    1,	    1,	        0.7,	9,	        0.4},
				[19] = 	{2.35,	0.0377,	    0.033,	    1,	    1,	        0.7,	9,	        0.4},
				[20] = 	{3.9,	0.0377,	    0.033,	    1,	    1,	        0.7,	9,	        0.4},
			}, -- end of table_data
            -- M - Mach number
			-- Cx0 - Coefficient, drag, profile, of the airplane
			-- Cya - Normal force coefficient of the wing and body of the aircraft in the normal direction to that of flight. Inversely proportional to the available G-loading at any Mach value. (lower the Cya value, higher G available) per 1 degree AOA
			-- B - Polar quad coeff
			-- B4 - Polar 4th power coeff
			-- Omxmax - roll rate, rad/s
			-- Aldop - Alfadop Max AOA at current M - departure threshold
			-- Cymax - Coefficient, lift, maximum possible (ignores other calculations if current Cy > Cymax)
		}, -- end of aerodynamics
		
		engine = 
		{
			Nmg		=	71.6,
			Nominal_RPM		= 14000.0,
			Nominal_Fan_RPM	= 10000.0,
			Startup_Prework = 10.0,
			Startup_Duration = 40.0,
			Shutdown_Duration = 35.0,
			MinRUD	=	0,
			MaxRUD	=	1,
			MaksRUD	=	0.965,
			ForsRUD	=	1.000,
			type	=	"TurboFan",
			hMaxEng	=	19,
			dcx_eng	=	0.0114,
			cemax	=	1.24,
			cefor	=	2.56,
			dpdh_m	=	8000,
			dpdh_f	=	17000,
			table_data = 
			{

				[1] = 	{0,	    1.24 * 114330,	1.22 * 156000},
				[2] = 	{0.2,	1.24 * 108000,	1.22 * 160000},
				[3] = 	{0.4,	1.24 * 98000,	1.22 * 170000},
				[4] = 	{0.6,	1.24 * 105000,	1.22 * 181000},
				[5] = 	{0.7,	1.24 * 110000,	1.22 * 205000},
				[6] = 	{0.8,	1.24 * 118000,	1.22 * 220000},
				[7] = 	{0.9,	1.24 * 124000,	1.22 * 257000},
				[8] = 	{1.0,	1.24 * 130000,	1.22 * 272000},
				[9] = 	{1.1,	1.24 * 130000,	1.22 * 279000},
				[10] = 	{1.2,	1.24 * 125000,	1.22 * 283000},
				[11] = 	{1.3,	1.24 * 123000,	1.22 * 293000},
				[12] = 	{1.4,	1.24 * 130000,	1.22 * 302000},
				[13] = 	{1.6,	1.24 * 132000,	1.22 * 323000},
				[14] = 	{1.8,	1.24 * 128000,	1.22 * 348000},
				[15] = 	{2.2,	1.24 * 110000,	1.22 * 370000},
				[16] = 	{2.5,	1.24 * 82000,	1.22 * 392000},
				[17] = 	{3.9,	1.24 * 82000,	1.22 * 310000},
			}, -- end of table_data
		}, -- end of engine
		
	},-- end of SFM_Data
	--damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
	Damage = {
		[0]  = {critical_damage = 5,  args = {146}},--NOSE_CENTER
		[1]  = {critical_damage = 3,  args = {296}},--NOSE_LEFT_SIDE
		[2]  = {critical_damage = 3,  args = {297}},--NOSE_RIGHT_SIDE
		[3]  = {critical_damage = 8,  args = {65}}, --CABINA
		[4]  = {critical_damage = 2,  args = {298}},--CABIN_LEFT_SIDE
		[5]  = {critical_damage = 2,  args = {301}},--CABIN_RIGHT_SIDE
		[7]  = {critical_damage = 2,  args = {249}},--GUN
		[8]  = {critical_damage = 3,  args = {265}},--FRONT_GEAR_BOX
		[9]  = {critical_damage = 3,  args = {154}},--FUSELAGE_LEFT_SIDE
		[10] = {critical_damage = 3,  args = {153}},--FUSELAGE_RIGHT_SIDE
		[11] = {critical_damage = 1,  args = {167}},--ENGINE_L_IN
		[12] = {critical_damage = 1,  args = {161}},--ENGINE_R_IN
		[13] = {critical_damage = 2,  args = {169}},--MTG_L_BOTTOM
		[14] = {critical_damage = 2,  args = {163}},--MTG_R_BOTTOM
		[15] = {critical_damage = 2,  args = {267}},--LEFT_GEAR_BOX
		[16] = {critical_damage = 2,  args = {266}},--RIGHT_GEAR_BOX
		[17] = {critical_damage = 2,  args = {168}},--MTG_L  (ENGINE)
		[18] = {critical_damage = 2,  args = {162}},--MTG_R  (ENGINE)
		[20] = {critical_damage = 2,  args = {183}},--AIR_BRAKE_R
		[23] = {critical_damage = 5,  args = {223}},--WING_L_OUT
		[24] = {critical_damage = 5,  args = {213}},--WING_R_OUT
		[25] = {critical_damage = 2,  args = {226}},--ELERON_L
		[26] = {critical_damage = 2,  args = {216}},--ELERON_R
		[29] = {critical_damage = 5,  args = {224}, deps_cells = {23, 25}},--WING_L_CENTER
		[30] = {critical_damage = 5,  args = {214}, deps_cells = {24, 26}},--WING_R_CENTER
		[35] = {critical_damage = 6,  args = {225}, deps_cells = {23, 29, 25, 37}},--WING_L_IN
		[36] = {critical_damage = 6,  args = {215}, deps_cells = {24, 30, 26, 38}},--WING_R_IN
		[37] = {critical_damage = 2,  args = {228}},--FLAP_L
		[38] = {critical_damage = 2,  args = {218}},--FLAP_R
		[39] = {critical_damage = 2,  args = {244}, deps_cells = {53}},--FIN_L_TOP
		[40] = {critical_damage = 2,  args = {241}, deps_cells = {54}},--FIN_R_TOP
		[43] = {critical_damage = 2,  args = {243}, deps_cells = {39, 53}},--FIN_L_BOTTOM
		[44] = {critical_damage = 2,  args = {242}, deps_cells = {40, 54}},--FIN_R_BOTTOM
		[51] = {critical_damage = 2,  args = {240}},--ELEVATOR_L
		[52] = {critical_damage = 2,  args = {238}},--ELEVATOR_R
		[53] = {critical_damage = 2,  args = {248}},--RUDDER_L
		[54] = {critical_damage = 2,  args = {247}},--RUDDER_R
		[56] = {critical_damage = 2,  args = {158}},--TAIL_LEFT_SIDE
		[57] = {critical_damage = 2,  args = {157}},--TAIL_RIGHT_SIDE
		[59] = {critical_damage = 3,  args = {148}},--NOSE_BOTTOM
		[61] = {critical_damage = 2,  args = {147}},--FUEL_TANK_F
		[82] = {critical_damage = 2,  args = {152}},--FUSELAGE_BOTTOM
		},
	
	DamageParts = 
	{  
		[1] = "Hunter-part-wing-R", -- wing R
		[2] = "Hunter-part-wing-L", -- wing L
		[3] = "Hunter-part-nose", -- Nose
		[4] = "Hunter-part-tail", -- Tail
	},
	
	lights_data = {
		typename = "collection",
		lights = {
			-- STROBES
			[WOLALIGHT_STROBES] = { 
					typename = "collection",
					lights = {	
						{
                            typename = "argnatostrobelight", argument = 194,
                            controller = "Strobe", mode = 1, power_up_t = 0.1, cool_down_t = 0.0, 
							period = 2.2, reduced_flash_time = 0.5, phase_shift = 0.5,
                        },
						{
                            typename = "argnatostrobelight", argument = 190,
                            controller = "Strobe", mode = 1, power_up_t = 0.1, cool_down_t = 0.0, 
							period = 2.2, reduced_flash_time = 0.5, phase_shift = 0.0,
                        },
						{
                            typename = "argnatostrobelight", argument = 191,
                            controller = "Strobe", mode = 1, power_up_t = 0.1, cool_down_t = 0.0, 
							period = 2.2, reduced_flash_time = 0.5, phase_shift = 0.0,
                        },
						{
                            typename = "argnatostrobelight", argument = 193,
                            controller = "Strobe", mode = 1, power_up_t = 0.1, cool_down_t = 0.0, 
							period = 2.2, reduced_flash_time = 0.5, phase_shift = 0.0,
                        },--Mode 0 ?
					}
			},
			-- SPOTS
			[WOLALIGHT_LANDING_LIGHTS] = { 
					typename = "collection",
					lights = {
						{ typename  = "argumentlight",	argument  = 208, },
					},
			},
			[WOLALIGHT_TAXI_LIGHTS] = { 
					typename = "collection",
					lights = {
						{ typename  = "argumentlight",	argument  = 209, },
					},
			},
			-- NAVLIGHTS
			[WOLALIGHT_NAVLIGHTS]	= {	
					typename = "collection", -- nav_lights_default
					lights = {
						{typename = "argumentlight",argument = 190}, -- Left Position(red)
						{typename = "argumentlight",argument = 191}, -- Right Position(green)
						{typename = "argumentlight",argument = 192}, -- Position (white)
						{typename = "argumentlight",argument = 193}, -- Tail links rechts (white)
					},
			},
			-- FORMATION
			[WOLALIGHT_FORMATION_LIGHTS] = { 
					typename = "collection",
					lights = {
						{typename  = "argumentlight" ,argument  = 200,},--formation_lights_tail_1 = 200;
						--{typename  = "argumentlight" ,argument  =  88,},--old aircraft arg 
					},
			},
	[WOLALIGHT_REFUEL_LIGHTS]	= {},-- REFUEL
	[WOLALIGHT_BEACONS]	= {},-- STROBE / ANTI-COLLISION
	[WOLALIGHT_CABIN_NIGHT]	= {},--
	}},
	
	ColdStartDefaultControls = {
	[24] = 1, -- Cover
	[38] = 0.9, -- Canopy
	[182] = 0.5, -- Airbrake
	[309] = 1, -- Left Outboard Pylon
	[312] = 1, -- Left Middleboard Pylon
	[313] = 1, -- Left Inboard Pylon
	[314] = 1, -- Right Inboard Pylon
	[315] = 1, -- Right Middleboard Pylon
	[318] = 1, -- Right Outboard Pylon
	[320] = 1, -- Right Wingtip Pylon
	[321] = 1, -- Left Wingtip Pylon
	[805] = 1, -- Ladder Draw

}

}

add_aircraft(F6)





