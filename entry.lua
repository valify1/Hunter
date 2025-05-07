self_ID   = "Hunter F6 by Valify"
declare_plugin(self_ID,
{
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
version		 = "Public",	--
displayName  = _("Hunter F6"),

fileMenuName = _("Hunter"),
update_id        = "Hunter",
 	 
state		 = "installed",
binaries   =
{
--'ED_FM_Template',
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
mount_vfs_model_path	(current_mod_path.."/Cockpit/Resources/Model/Shape")
mount_vfs_sound_path(current_mod_path.."/Sounds/")




dofile(current_mod_path..'/Weapons/Weapons.lua')
dofile(current_mod_path.."/Views.lua")
dofile(current_mod_path..'/Hunter.lua')
dofile(current_mod_path.."/sounders.lua")


F15FM.old = 6
make_flyable('Hunter F6', current_mod_path..'/Cockpit/Scripts/', F15FM, current_mod_path..'/comm.lua')


plugin_done()-- finish declaration , clear temporal data
