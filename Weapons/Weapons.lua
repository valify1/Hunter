--dofile("Scripts/Database/Weapons/warheads.lua")
--local GALLON_TO_KG = 3.785 * 0.8

local pylon_mass 	= 0.0

declare_loadout({
	category = CAT_FUEL_TANKS,
	CLSID = "{VSN_Mk61000R_ptb}",
	attribute = {wsType_Air,wsType_Free_Fall,wsType_FuelTank,WSTYPE_PLACEHOLDER},
	Picture = "PTB.png",
	displayName = _("Fuel tank 675 Liter"),
	Weight_Empty = 	50 + pylon_mass, -- Kg
	Weight = 		50 + 590 + pylon_mass, -- Kg
	Capacity = 		590,
	Cx_pil = 0.00124,
	shape_table_data = {
		{
			name = "VSN_Mk6_1000R_ptb",
			file = "VSN_Mk6_1000R_ptb",
			username = "VSN_Mk6_1000R_ptb",
			life = 1,
			fire = {0,1},
			index = WSTYPE_PLACEHOLDER,
		},
	},
	Elements = {
		{
			ShapeName = "VSN_Mk6_1000R_ptb",
		},
	}
})

declare_loadout({
	category = CAT_FUEL_TANKS,
	CLSID = "{VSN_Mk6500R_ptb}",
	attribute = {wsType_Air,wsType_Free_Fall,wsType_FuelTank,WSTYPE_PLACEHOLDER},
	Picture = "PTB.png",
	displayName = _("Fuel tank 455 Liter"),
	Weight_Empty = 	50 + pylon_mass, -- Kg
	Weight = 		50 + 414 + pylon_mass, -- Kg
	Capacity = 		414,
	Cx_pil = 0.00124,
	shape_table_data = {
		{
			name = "VSN_Mk6_500R_ptb",
			file = "VSN_Mk6_500R_ptb",
			username = "VSN_Mk6_500R_ptb",
			life = 1,
			fire = {0,1},
			index = WSTYPE_PLACEHOLDER,
		},
	},
	Elements = {
		{
			ShapeName = "VSN_Mk6_500R_ptb",
		},
	}
})

declare_loadout({
	category = CAT_FUEL_TANKS,
	CLSID = "{VSN_Mk61000L_ptb}",
	attribute = {wsType_Air,wsType_Free_Fall,wsType_FuelTank,WSTYPE_PLACEHOLDER},
	Picture = "PTB.png",
	displayName = _("Fuel tank 675 Liter"),
	Weight_Empty = 	50 + pylon_mass, -- Kg
	Weight = 		50 + 590 + pylon_mass, -- Kg
	Capacity = 		590,
	Cx_pil = 0.00124,
	shape_table_data = {
		{
			name = "VSN_Mk6_1000L_ptb",
			file = "VSN_Mk6_1000L_ptb",
			username = "VSN_Mk6_1000L_ptb",
			life = 1,
			fire = {0,1},
			index = WSTYPE_PLACEHOLDER,
		},
	},
	Elements = {
		{
			ShapeName = "VSN_Mk6_1000L_ptb",
		},
	}
})

declare_loadout({
	category = CAT_FUEL_TANKS,
	CLSID = "{VSN_Mk6500L_ptb}",
	attribute = {wsType_Air,wsType_Free_Fall,wsType_FuelTank,WSTYPE_PLACEHOLDER},
	Picture = "PTB.png",
	displayName = _("Fuel tank 455 Liter"),
	Weight_Empty = 	50 + pylon_mass, -- Kg
	Weight = 		50 + 414 + pylon_mass, -- Kg
	Capacity = 		414,
	Cx_pil = 0.00124,
	shape_table_data = {
		{
			name = "VSN_Mk6_500L_ptb",
			file = "VSN_Mk6_500L_ptb",
			username = "VSN_Mk6_500L_ptb",
			life = 1,
			fire = {0,1},
			index = WSTYPE_PLACEHOLDER,
		},
	},
	Elements = {
		{
			ShapeName = "VSN_Mk6_500L_ptb",
		},
	}
})
