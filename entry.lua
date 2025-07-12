self_ID   = "Hunter F6 by Valify"
declare_plugin(self_ID,
{
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
version		 = "",	
displayName  = _("Hunter F6"),
fileMenuName = _("Hunter"),
update_id        = "Hunter",
info		 = _("The Hawker Hunter F.6 was a British jet fighter developed in the 1950s by Hawker Aircraft Ltd and is often considered one of the most elegant and capable jets of its era. The F.6 variant was primarily used for ground attack and reconnaissance roles, with an emphasis on low-level operations. Its design included a bubble canopy for improved visibility and a retractable tailwheel landing gear. The Hunter F.6 served with the Royal Air Force and several other air forces around the world, known for its agility and performance in both air-to-air and ground attack missions. The aircraft's legacy continues to be celebrated by aviation enthusiasts and historians alike."),
state		 = "installed",
binaries   =
{
nil,
},
Skins	=
	{
		{
			name	= _(" Hawker Hunter F6"),
			dir		= "Skins/1"
		},
	},
Missions =
	{
		{
			name		= _("Hunter F6"),
			dir			= "Missions",
			CLSID		= "{CLSID5456456346CLSID}",	
		},
	},	
LogBook =
	{
		{
			name		= _("Hunter F6"),
			type		= "Hunter F6",
		},
	},	
InputProfiles =
	{
		["Hunter F6"]     = current_mod_path .. '/Input',
	},
		
encyclopedia_path = current_mod_path..'/Encyclopedia',		
})---------------------------------------------------------------------------------------

-- mounting 3d model paths and texture paths 

mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_texture_path  (current_mod_path.."/Textures/Textures.zip")
mount_vfs_texture_path  (current_mod_path.."/Textures/Avionics")
mount_vfs_texture_path  (current_mod_path.."/Cockpit/Resources/Model/Textures/Cockpit.zip")
mount_vfs_texture_path  (current_mod_path.."/Kneeboard")
mount_vfs_model_path	(current_mod_path.."/Cockpit/Resources/Model/Shape")
mount_vfs_sound_path    (current_mod_path.."/Sounds")



dofile(current_mod_path..'/Weapons.lua')
dofile(current_mod_path.."/Views.lua")
dofile(current_mod_path..'/Hunter.lua')
dofile(current_mod_path..'/UnitPayloads/HunterF6.lua')

local mainGear = {
	--amortizer_min_length					= 0.0,
	amortizer_max_length					= 0.291, --3D Modell
	amortizer_basic_length					= 0.291, --3D Modell
	amortizer_spring_force_factor			= 4.8e+6, --F16 = 2.1e+7, F15 = 990000.0,(reduce_length)
	amortizer_spring_force_factor_rate		= 3,
	amortizer_static_force					= 1000,
	amortizer_reduce_length					= 0.10, --0.05,
	amortizer_direct_damper_force_factor	= 60000,
	amortizer_back_damper_force_factor		= 20000,
	allowable_hard_contact_length			= 0.1,

	anti_skid_installed = true,

	crossover_locked_wheel_protection			= true,
	crossover_locked_wheel_protection_speed_min	= 18.0,
	anti_skid_improved							= true,
	anti_skid_gain								= 400.0,

	wheel_radius					= 0.347, -- Ø 0.694 / 2
	wheel_static_friction_factor	= 0.70,
	wheel_glide_friction_factor		= 0.30,
	wheel_side_friction_factor		= 0.43,
	wheel_roll_friction_factor		= 0.04,
	wheel_damage_force_factor		= 500.0, --450.0,
	wheel_brake_moment_max			= 9500.0,
	wheel_kz_factor					= 0.52,
	noise_k							= 0.4,
	wheel_damage_speedX				= 225, --115,
	wheel_damage_delta_speedX		= 22.5, --11.5,
}


suspension = {

suspension 			= {
	  { -- NOSE WHEEL
			damage_element					= 83,
			wheel_axle_offset				= 0.0,
			self_attitude					= false,
			yaw_limit						= math.rad(32.0),
			moment_limit					= 750.0,
			damper_coeff					= 300.0,
			allowable_hard_contact_length	= 0.25,
			filter_yaw						= false,

			amortizer_min_length						= 0.0,
			amortizer_max_length						= 0.25, -- 3D Modell
			amortizer_basic_length						= 0.25, -- 3D Modell
			amortizer_spring_force_factor				= 5200000,
			amortizer_spring_force_factor_rate			= 3,
			amortizer_static_force						= 1000,
			amortizer_reduce_length						= 0.25, --0.05,
			amortizer_direct_damper_force_factor		= 35000,
			amortizer_back_damper_force_factor			= 15000,

			anti_skid_installed							= false,

			wheel_radius								= 0.22,	-- Ø 0.44 / 2
			wheel_static_friction_factor				= 0.65,
			wheel_side_friction_factor					= 0.60, --0.45,
			wheel_roll_friction_factor					= 0.05,
			wheel_glide_friction_factor					= 0.30,
			wheel_damage_force_factor					= 500.0, --450.0,
			wheel_kz_factor								= 0.3,
			noise_k										= 1.0,
			wheel_damage_speedX							= 225.0, --115,
			wheel_damage_delta_speedX					= 22.5, --11.5,

			arg_post			= 0,
			arg_amortizer		= 1,
			arg_wheel_rotation	= 101,
			arg_wheel_damage	= 134
		},
	  { -- LEFT WHEEL
			damage_element					= 84,

			amortizer_max_length						= mainGear.amortizer_max_length,
			amortizer_basic_length						= mainGear.amortizer_basic_length,
			amortizer_spring_force_factor				= mainGear.amortizer_spring_force_factor, --
			amortizer_spring_force_factor_rate			= mainGear.amortizer_spring_force_factor_rate,
			amortizer_static_force						= mainGear.amortizer_static_force,
			amortizer_reduce_length						= mainGear.amortizer_reduce_length,
			amortizer_direct_damper_force_factor		= mainGear.amortizer_direct_damper_force_factor,
			amortizer_back_damper_force_factor			= mainGear.amortizer_back_damper_force_factor,
			allowable_hard_contact_length				= mainGear.allowable_hard_contact_length,

			anti_skid_installed							= mainGear.anti_skid_installed,

			crossover_locked_wheel_protection			= mainGear.crossover_locked_wheel_protection,
			crossover_locked_wheel_protection_wheel		= 2,
			crossover_locked_wheel_protection_speed_min	= mainGear.crossover_locked_wheel_protection_speed_min,
			anti_skid_improved							= mainGear.anti_skid_improved;
			anti_skid_gain								= mainGear.anti_skid_gain,

			wheel_radius								= mainGear.wheel_radius,
			wheel_static_friction_factor				= mainGear.wheel_static_friction_factor,
			wheel_side_friction_factor					= mainGear.wheel_side_friction_factor,
			wheel_roll_friction_factor					= mainGear.wheel_roll_friction_factor,
			wheel_glide_friction_factor					= mainGear.wheel_glide_friction_factor,
			wheel_damage_force_factor					= mainGear.wheel_damage_force_factor,
			wheel_brake_moment_max						= mainGear.wheel_brake_moment_max,
			wheel_kz_factor								= mainGear.wheel_kz_factor,
			noise_k										= mainGear.noise_k,
			wheel_damage_speedX							= mainGear.wheel_damage_speedX,
			wheel_damage_delta_speedX					= mainGear.wheel_damage_delta_speedX,

			arg_post			= 5,
			arg_amortizer		= 6,
			arg_wheel_rotation	= 102,
			arg_wheel_damage	= 136
		},
		{  -- RIGHT WHEEL
			damage_element					= 85,

			amortizer_max_length						= mainGear.amortizer_max_length,
			amortizer_basic_length						= mainGear.amortizer_basic_length,
			amortizer_spring_force_factor				= mainGear.amortizer_spring_force_factor, --
			amortizer_spring_force_factor_rate			= mainGear.amortizer_spring_force_factor_rate,
			amortizer_static_force						= mainGear.amortizer_static_force,
			amortizer_reduce_length						= mainGear.amortizer_reduce_length,
			amortizer_direct_damper_force_factor		= mainGear.amortizer_direct_damper_force_factor,
			amortizer_back_damper_force_factor			= mainGear.amortizer_back_damper_force_factor,
			allowable_hard_contact_length				= mainGear.allowable_hard_contact_length,

			anti_skid_installed							= mainGear.anti_skid_installed,

			crossover_locked_wheel_protection			= mainGear.crossover_locked_wheel_protection,
			crossover_locked_wheel_protection_wheel		= 1,
			crossover_locked_wheel_protection_speed_min	= mainGear.crossover_locked_wheel_protection_speed_min,
			anti_skid_improved							= mainGear.anti_skid_improved;
			anti_skid_gain								= mainGear.anti_skid_gain,

			wheel_radius								= mainGear.wheel_radius,
			wheel_static_friction_factor				= mainGear.wheel_static_friction_factor,
			wheel_side_friction_factor					= mainGear.wheel_side_friction_factor,
			wheel_roll_friction_factor					= mainGear.wheel_roll_friction_factor,
			wheel_glide_friction_factor					= mainGear.wheel_glide_friction_factor,
			wheel_damage_force_factor					= mainGear.wheel_damage_force_factor,
			wheel_brake_moment_max						= mainGear.wheel_brake_moment_max,
			wheel_kz_factor								= mainGear.wheel_kz_factor,
			noise_k										= mainGear.noise_k,
			wheel_damage_speedX							= mainGear.wheel_damage_speedX,
			wheel_damage_delta_speedX					= mainGear.wheel_damage_delta_speedX,

			arg_post			= 3,
			arg_amortizer		= 4,
			arg_wheel_rotation	= 103,
			arg_wheel_damage	= 135
		},
	}, -- gears suspension
}
	



local FM = {  self_ID, 
             'Hunter F6' ,
			  old = false,
			center_of_mass		= {-0.172  ,  -0.6,	   0},--x,y,z
			moment_of_inertia 	= {4811 , 80900, 79465,-350},--Ix,Iy,Iz,Ixy// Ixy geschätzt
			suspension = suspension,
}
F15FM.old = 6

make_flyable('Hunter F6', current_mod_path..'/Cockpit/Scripts/', F15FM, current_mod_path..'/comm.lua')

plugin_done()
