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
	{ CLSID = "{VSN_Mk6500L_ptb}" ,arg_value = 0.0,attach_point_position = {0.0, 0.0 , 0.0 } },--Tank Mk6
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
	{ CLSID = "{VSN_Mk6500R_ptb}" ,arg_value = 0.0,attach_point_position = {0.0, 0.0 , 0.0 } },--Tank Mk6
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
	{ CLSID = "{VSN_Mk6500L_ptb}" ,arg_value = 0.0,attach_point_position = {0.0, 0.0 , 0.0 } },--Tank Mk6
	{ CLSID = "{VSN_Mk61000L_ptb}" ,arg_value = 0.7,attach_point_position = {0.0, 0.0 , 0.0 } },--Tank Mk6 0.5 or 0.7
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
	{ CLSID = "{VSN_Mk6500R_ptb}" ,arg_value = 0.0,attach_point_position = {0.0, 0.0 , 0.0 } },--Tank Mk6
	{ CLSID = "{VSN_Mk61000R_ptb}" ,arg_value = 0.7,attach_point_position = {0.0, 0.0 , 0.0 } },--Tank Mk6 0.5 or 0.7
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
	--{ CLSID = "<CLEAN>"								   	,arg_value = 1},
}


F6 =  {
        
	Name 				=   'Hunter F6',
	DisplayName			= _('Hunter F6'),
	ViewSettings			= ViewSettings,
	
	HumanCockpit 		= false,
	HumanCockpitPath    = current_mod_path..'/Cockpit/',
	
	Picture 			= "Hunter.png",
	Rate 				= 40, -- RewardPoint in Multiplayer
	Shape 				= "Hunter_F6",
	
	shape_table_data 	= 
	{
		{
			file  	 = 'Hunter_F6';
			life  	 = 18; -- lifebar
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
	net_animation ={38, -- canopy
					0, -- gear
					3,
					5,
					9,
					10, 
					11, -- aileron
					15, -- stabilizer
					20,  -- flaps
					21, -- air brake
					7, -- rat
					13, -- prop slow
					14, -- prop fast
					130 -- Nose Light
					},
					
	mapclasskey 		= "P0091000025",
	attribute  			= {wsType_Air, wsType_Airplane, wsType_Fighter, WSTYPE_PLACEHOLDER ,"Battleplanes",},
	Categories 			= {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor",},	
	-------------------------
	M_empty 					= 3340, -- kg
	M_nominal 					= 4707, -- kg
	M_max 						= 5785, -- kg
	M_fuel_max 					= 1549, -- kg --
	H_max 					 	= 12800, -- m
	average_fuel_consumption 	= 0.4, -- this is highly relative, but good estimates are 36-40l/min = 28-31kg/min = 0.47-0.52kg/s -- 45l/min = 35kg/min = 0.583kg/s
	CAS_min 					= 50, -- if this is not OVERAL FLIGHT TIME, but jus LOITER TIME, than it should be 10-15 minutes.....CAS capability in minute (for AI)
	V_opt 						= 300,-- Cruise speed (for AI)
	V_take_off 					= 57, -- Take off speed in m/s (for AI)
	V_land 						= 51, -- Land speed in m/s (for AI)
	V_max_sea_level 			= 283, -- Max speed at sea level in m/s (for AI)
	V_max_h 					= 334, -- Max speed at max altitude in m/s (for AI)
	Vy_max 						= 31, -- Max climb speed in m/s (for AI)
	Mach_max 					= 0.94, -- Max speed in Mach (for AI)
	Ny_min						= -3,
	-- Ny_min_e					=	-3,
	Ny_max						= 7.5,
	Ny_max_e 					= 7.5,  -- Max G (for AI)
	AOA_take_off 				= 0.22, -- AoA in take off (for AI)
	stores_number				= 5,
	bank_angle_max 				= 85, -- Max bank angle (for AI)


	has_afteburner 				= false, -- AFB yes/no
	has_speedbrake 				= true, -- Speedbrake yes/no
	
	nose_gear_pos 				= {  4.335,	-1.63,	0.000}, -- nosegear coord 
	nose_gear_amortizer_direct_stroke    =  1.60 - 1.60,  -- down from nose_gear_pos !!!
	nose_gear_amortizer_reversal_stroke  =  1.60 - 1.60,  -- up
	nose_gear_amortizer_normal_weight_stroke = -0.100,
	
	main_gear_pos 				= { -0.825,	-1.58,	0}, -- main gear coords -0.973,	-1.72,	1.27  forward, Height, y -172
	main_gear_amortizer_direct_stroke	 =  1.370 - 1.370, --  down from main_gear_pos !!!
	main_gear_amortizer_reversal_stroke  = 	1.270 - 1.370, --  up 
	main_gear_amortizer_normal_weight_stroke = -0.200,  -- bouge du .196 au .200
	
	tand_gear_max 				= 0.4,   -- 0.4
	
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
			exhaust_length_ab   = 0.1, -- lenght in m
			exhaust_length_ab_K = 0.1, -- AB animation
		}, -- end of [1]
		[2] = 
		{
			pos 		=  {-3.28,	-0.427,	-0.6}, -- nozzle coords -3.234,	-0.427,	-0.6
			elevation   =  0, -- AFB cone elevation
			diameter	 = 0.1, -- AFB cone diameter
			exhaust_length_ab   = 0.1, -- lenght in m
			exhaust_length_ab_K = 0.1, -- AB animation
		}, -- end of [2]
	}, -- end of engines_nozzles
	
	crew_size	 = 2,
	crew_members = 
	{
		[1] = 
		{
			ejection_seat_name = "pilot+ejectionseat",
			drop_canopy_name = "Front_Canopy",
			pos =  {3.595,	0.725,	-0.1},     --  {2.831,	-0.7,	0}, altitude =2eme parametre
			canopy_pos = {0,	0,	0},
		}, -- end of [1]
		[2] = 
		{
			ejection_seat_name = "pilot+ejectionseat",
			drop_canopy_name = "Rear_Canopy",
			pos =  {1.231,	0,	0},     --  {2.43,	-0.6,	0}, altitude =2eme parametre
			canopy_pos = {0,	0,	0},
		}, -- end of [2]
	}, -- end of crew_members

	fires_pos = 
		{
			[1] = 	{-2.117,	-0.9,	0},           -- {-2.117,	-0.9,	0}, Far tail
			[2] = 	{-1.584,	0.176,	2.693},
			[3] = 	{-1.645,	0.213,	-2.182},
			[4] = 	{-0.82,	0.265,	2.774},     -- Wing center Right? {-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},    -- Wing center Left?  {-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},     -- Wing outer Right? {-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},    -- Wing outer Left?  {-0.82,	0.255,	-4.274},
			[8] = 	{-7.0,	-0.427,	0.6},     -- High Altitude Contrails
			[9] = 	{-7.0,	-0.427,	-0.6},     -- High Altitude Contrails
			[10] = 	{0.304,	-0.748,	0.442},     -- Right Engine? {0.304,	-0.748,	0.442},
			[11] = 	{0.304,	-0.748,	-0.442},    -- Left Engine? {0.304,	-0.748,	-0.442},
		}, -- end of fires_pos
	
	
	-- Countermeasures
	SingleChargeTotal	 	= 60,
	CMDS_Incrementation 	= 15,
	ChaffDefault 			= 30, 
	ChaffChargeSize 		= 1,
	FlareDefault 			= 15, 
	FlareChargeSize 		= 2,
	CMDS_Edit 				= true,
	chaff_flare_dispenser 	= {
		[1] = 
		{
			dir =  {0, -1, -1},
			pos =  {-3, -1, 2},
		}, -- end of [1]
		[2] = 
		{
			dir =  {0, -1, 1},
			pos =  {-3, -1, -2},
		}, -- end of [2]
	}, -- end of chaff_flare_dispenser

	--sensors
	
	detection_range_max		 = 60,
	radar_can_see_ground 	 = true, -- this should be examined (what is this exactly?)
	CanopyGeometry = {
		azimuth   = {-160.0, 160.0}, -- pilot view horizontal (AI)
		elevation = {-50.0, 90.0} -- pilot view vertical (AI)
	},
	Sensors = {
--[[		RWR = "Abstract RWR", -- RWR type
		RADAR = "N-019", -- Radar type
]]	
	},
	HumanRadio = {
		frequency = 127.5,  -- Radio Freq
		editable = true,
		minFrequency = 100.000,
		maxFrequency = 156.000,
		modulation = MODULATION_AM
	},
	
	Failures = {
            { id = 'l_engine',		  label = _('L-ENGINE'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
            { id = 'r_engine', 		  label = _('R-ENGINE'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
	},
	
	Guns = {gun_mount("ADEN", {
			count = 150,  -- 150
			muzzle_pos_connector = "GUN_POINT",
			muzzle_pos 		  = {-0.5, 0, 0},      -- {0, -0.5, -1}
			elevation_initial = 2.000,
			supply_position   = {1, 0, 0},
			effect_arg_number = 350,
			 }
			)
			},
	
			stores_number =	3,  
			Pylons = {
				pylon(1, 2, -7.6, -0.2, 0,--SMOKE POD 
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
			pylon(2, 2, -7.6, -0.20, 0,--SMOKE POD 
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
			pylon(3, 0, 0, 0, 0,
				{
					arg = 309,
					arg_value = 1,
					DisplayName = "1",
					use_full_connector_position = true,
					connector = "Pylon2",
				},
				tipsLeft
			),
			pylon(4, 0, 0, 0, 0,
				{
					arg = 312,
					arg_value = 1,
					DisplayName = "2",
					use_full_connector_position = true,
					connector = "Pylon5",
				},
				outboardLeft
			),
			pylon(5, 0, 0, 0, 0,
			{
				arg = 313,
				arg_value = 1,
				DisplayName = "3",
				use_full_connector_position = true,
				connector = "Pylon6",
			},
			inboard
		),
		pylon(6, 0, 0, 0, 0,--
			{
				arg = 314,
				arg_value = 1,
				DisplayName = "4",
				use_full_connector_position = true,
				connector = "Pylon7",
			},
			inboard
		),
			pylon(7, 0, 0, 0, 0,
				{
					arg = 315,
					arg_value = 1,
					DisplayName = "5",
					use_full_connector_position = true,
					connector = "Pylon8",
				},
				outboardRight
			),
			pylon(8, 0, 0, 0, 0,
				{
					arg = 318,
					arg_value = 1,
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
        aircraft_task(GroundAttack),
        aircraft_task(PinpointStrike),
        aircraft_task(CAS),
        aircraft_task(AntishipStrike),
        aircraft_task(Reconnaissance),
    },	
	DefaultTask = aircraft_task(CAP),
	
	SFM_Data = {
		aerodynamics = -- Cx = Cx_0 + Cy^2*B2 +Cy^4*B4
		{
			Cy0 = 0.0,              -- Lift coefficient at zero AoA
			Mzalfa = 3.2,           -- Pitch moment slope vs AoA
			Mzalfadt = 0.9,         -- Pitch damping
			kjx = 1.8,              -- Roll inertia factor
			kjz = 1,              -- Yaw inertia factor
			Czbe = 0,           -- Sideforce from sideslip
			cx_gear = 0.015,        -- Gear drag
			cx_flap = 0.07,         -- Flap drag
			cy_flap = 0.4,          -- Flap lift
			cx_brk = 0.12,          -- Airbrake drag
    table_data = {
      --      M     Cx0  Cya   B     B4    Omxmax ALD     Cymax
      [1] = {0.0,  0.025, 0.06, 0.032, 0.04, 1.7,  20.0,   1.2},
      [2] = {0.2,  0.026, 0.07, 0.034, 0.05, 1.8,  19.5,   1.3},
      [3] = {0.4,  0.027, 0.08, 0.036, 0.06, 2.0,  18.0,   1.35},
      [4] = {0.6,  0.028, 0.09, 0.038, 0.07, 2.1,  17.5,   1.4},
      [5] = {0.8,  0.029, 0.095,0.039, 0.08, 2.1,  16.5,   1.35},
      [6] = {1.0,  0.030, 0.10, 0.040, 0.085, 1.6, 15.0,   1.2},
      [7] = {1.2,  0.035, 0.095,0.041, 0.09,  1.3, 13.0,   1.0},
    },
  },

  engine = {
    Nmg = 40.0,        -- Rotor RPM at idle (not used in jet but needed)
    MinRUD = 0.0,
    MaxRUD = 1.0,
    MaksRUD = 0.85,
    ForsRUD = 0.93,
    type = "TurboJet",
    hMaxEng = 19000.0,
    dcx_eng = 0.0114,
    cemax = 1.24,       -- Max thrust coef
    cefor = 2.48,       -- Afterburner thrust coef (Hunter didn't have one; leave 0 or close)
    dpdh_m = 1700.0,
    dpdh_f = 2100.0,
 
			
			hMaxEng	=	19, -- Max altitude for safe engine operation in km
			dcx_eng	=	0.015, -- Engine drag coefficient 0.015
			cemax	=	1.24, -- not used for fuel calculation , only for AI routines to check flight time ( fuel calculation algorithm is built in )
			cefor	=	2.56, -- not used for fuel calculation , only for AI routines to check flight time ( fuel calculation algorithm is built in )
			dpdh_m	=	2000, --  altitude coefficient for max thrust 6600
			dpdh_f	=	16200,  --  altitude coefficient for AB thrust
			table_data = 
			{		--   M		Pmax		 Pfor	
				[1] = 	{0.0,	28000,	35000},
				[2] = 	{0.6,	35000,	37000},

				
			},-- end of table_data
			
			rudder = {
				[0] = {0.0, 0.0},
				[50] = {0.2, 0.4},
				[150] = {0.7, 0.8},
				[300] = {1.0, 1.0},
			},-- end of table_data
			-- M - Mach number
			-- Pmax - Engine thrust at military power
			-- Pfor - Engine thrust at AFB
		}, -- end of engine
	},
	--damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
	Damage = {
				[1]		= {critical_damage = 5, args = {150}}, -- nose left
				[2]		= {critical_damage = 5, args = {149}}, -- nose right
				[3]		= {critical_damage = 3, args = {296}}, -- cockpit 
				[4]		= {critical_damage = 5, args = {154}}, -- cabin left
				[5]		= {critical_damage = 5, args = {153}}, -- cabin right
				[11]	= {critical_damage = 3, args = {147}}, -- engine l
				[12]	= {critical_damage = 3, args = {148}}, -- engine 2
				[23]	= {critical_damage = 7, args = {223}, deps_cells = {25}}, -- wing out left
				[24]	= {critical_damage = 7, args = {213}, deps_cells = {26}}, -- wing out right 
				[25]	= {critical_damage = 3, args = {226}}, -- eleron left 
				[26]	= {critical_damage = 4, args = {216}}, -- eleron right
				[29]	= {critical_damage = 7, args = {224}, deps_cells = {23, 25, 33, 37}}, -- wing center left 
				[30]	= {critical_damage = 7, args = {214}, deps_cells = {24, 26, 38}}, -- wing center right 
				[33]	= {critical_damage = 4, args = {232}}, -- slat left
				[34]	= {critical_damage = 4, args = {222}}, -- slat right
				[35]	= {critical_damage = 7, args = {225}, deps_cells = {29, 23, 25, 33, 37}}, -- wing in left 
				[36]	= {critical_damage = 7, args = {215}, deps_cells = {30, 24, 26, 34, 38}}, -- wing in right 
				[37]	= {critical_damage = 4, args = {227}}, -- flap in left 
				[38]	= {critical_damage = 3, args = {217}}, -- flap in right 
				[39]	= {critical_damage = 4, args = {242}}, -- fin top left
				[40]	= {critical_damage = 4, args = {242}}, -- fin top right
				[43]	= {critical_damage = 6, args = {243}, deps_cells = {39, 54, 45, 46, 49, 50}}, -- fin bottom left
				[45]	= {critical_damage = 4, args = {235}}, -- stabilizer out left
				[46]	= {critical_damage = 4, args = {233}}, -- stabilizer out right
				[47]	= {critical_damage = 6, args = {236}, deps_cells = {49}}, -- stabilizer in left
				[48]	= {critical_damage = 6, args = {234}, deps_cells = {50}}, -- stabilizer in right
				[49]	= {critical_damage = 3, args = {240}}, -- elevator out left
				[50]	= {critical_damage = 3, args = {238}}, -- elevator out right				
				[54]	= {critical_damage = 3, args = {247}}, -- rudder right
				[55]	= {critical_damage = 7, args = {81}, deps_cells = {43, 54, 45, 46}}, -- tail 				
				[56]	= {critical_damage = 5, args = {158}}, -- tail left
				[57]	= {critical_damage = 5, args = {157}}, -- tail right				
				[59]	= {critical_damage = 5, args = {148}}, -- nose bottom 				
				[82]	= {critical_damage = 5, args = {152}}, -- fuselage bottom
				[83]	= {critical_damage = 2, args = {134}}, -- wheel nose 
				[84]	= {critical_damage = 3, args = {136}}, -- wheel left 
				[85]	= {critical_damage = 3, args = {135}}, -- wheel right 
	},
	
	DamageParts = 
	{  
		[1] = "Hunter-part-wing-R", -- wing R
		[2] = "Hunter-part-wing-L", -- wing L
		-- [3] = "Hunter-part-nose", -- Nose
		-- [4] = "Hunter-part-tail", -- Tail
	},
	
	lights_data = {
		typename = "collection",
		lights = {
			-- STROBES
			[WOLALIGHT_STROBES] = { 
					typename = "collection",
					lights = {	
					--	{typename = "argnatostrobelight",  argument = 193, period = 2.2,  phase_shift = 0.0}, -- Strobe - BANO_0/BANO_00
					--	{typename = "argnatostrobelight",  argument = 194, period = 2.2,  phase_shift = 0.5}, -- Strobe - BANO_1/BANO_11
					--	{typename = "argnatostrobelight",  argument = 190, period = 2.2,  phase_shift = 0.0}, -- Strobe 
					--	{typename = "argnatostrobelight",  argument = 191, period = 2.2,  phase_shift = 0.0}, -- Strobe 
						{
                            typename = "argnatostrobelight", argument = 194,
                            controller = "Strobe", mode = 1, power_up_t = 0.1, cool_down_t = 0.0, 
							period = 2.0, reduced_flash_time = 0.5, phase_shift = 0.5,
                        },
						{
                            typename = "argnatostrobelight", argument = 190,
                            controller = "Strobe", mode = 1, power_up_t = 0.1, cool_down_t = 0.0, 
							period = 2.0, reduced_flash_time = 0.5, phase_shift = 0.0,
                        },
						{
                            typename = "argnatostrobelight", argument = 191,
                            controller = "Strobe", mode = 1, power_up_t = 0.1, cool_down_t = 0.0, 
							period = 2.0, reduced_flash_time = 0.5, phase_shift = 0.0,
                        },
						{
                            typename = "argnatostrobelight", argument = 193,
                            controller = "Strobe", mode = 1, power_up_t = 0.1, cool_down_t = 0.0, 
							period = 2.0, reduced_flash_time = 0.5, phase_shift = 0.0,
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
}

add_aircraft(F6)





