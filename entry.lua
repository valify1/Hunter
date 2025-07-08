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
			name	= _("Hunter F6"),
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



dofile(current_mod_path..'/Weapons/Weapons.lua')
dofile(current_mod_path.."/Views.lua")
dofile(current_mod_path..'/Hunter.lua')




local cfg_path = current_mod_path ..  "/FM/config.lua"
dofile(cfg_path)
F15FM.old = 6
make_flyable('Hunter F6', current_mod_path..'/Cockpit/Scripts/', F15FM, current_mod_path..'/comm.lua')

plugin_done()
