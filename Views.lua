ViewSettings = {
	Cockpit = {--SDV
	[1] = {-- player slot 1
		CockpitLocalPoint      = {3.302,0.763,0.000},--
		CameraViewAngleLimits  = {20.000000,140.000000},
		CameraAngleRestriction = {false,90.000000,0.500000},
		CameraAngleLimits      = {200,-90.000000,90.000000},--Kopf drehen = links rechts,runter,hoch
		EyePoint               = {0.00000,0.00000,0.000000},--front/back,up/down,left/right}<-'neck dimension'in meters 
		ShoulderSize		   = 0.25,
		Allow360rotation	   = false,
		limits_6DOF            = {x = {-0.050000,0.500000},y ={-0.250000,0.120000},z = {-0.200000,0.200000},roll = 90.000000},--Bewegen = hinten vorne,oben unten,links rechts
	},
	}, -- Cockpit 
	Chase = {
		LocalPoint      = {-5.0,1.0,3.0},
		AnglesDefault   = {0.000000,0.000000},
	}, -- Chase 
	Arcade = {
		LocalPoint      = {-21.500000,5.618000,0.000000},
		AnglesDefault   = {0.000000,-8.000000},
	}, -- Arcade 
}

local function head_pos_default(tab)
    if not tab then
	   tab = {}
	end

	tab.viewAngle = tab.viewAngle  or  63
	tab.hAngle    = tab.hAngle     or  0 -- kopf links rechts
	tab.vAngle    = tab.vAngle     or -13-- -23.0 -- kopf up down
	tab.x_trans   = tab.x_trans    or  0.10 --*** 0.36 --forwards and backwards
	tab.y_trans   = tab.y_trans    or -0.041337 --up down position precisely,so the aim is at the eye level
	tab.z_trans   = tab.z_trans    or  0 -- -sitz links rechts
	tab.rollAngle = tab.rollAngle  or  0
	
	return tab
end


SnapViews = {
[1] = {-- player slot 1
        [1]  = head_pos_default({viewAngle = 50, hAngle = 3.5,	vAngle = -33.5}),	--Num 0
        [2]  = head_pos_default({viewAngle = 85, hAngle = 120, 	vAngle = -8}),		--Num 1
        [3]  = head_pos_default({viewAngle = 50, hAngle = 0, 	vAngle = -35}),		--Num 2
        [4]  = head_pos_default({viewAngle = 85, hAngle = -120, vAngle = -8}),		--Num 3
        [5]  = head_pos_default({viewAngle = 85, hAngle = 80, 	vAngle = -8}),		--Num 4
        [6]  = head_pos_default({}),												--Num 5 Default view
        [7]  = head_pos_default({viewAngle = 85, hAngle = -80, 	vAngle = -8}),		--Num 6
        [8]  = head_pos_default({viewAngle = 85, hAngle = 45, 	vAngle = 25}),		--Num 7
        [9]  = head_pos_default({viewAngle = 85, vAngle = 45}),						--Num 8
        [10] = head_pos_default({viewAngle = 85, hAngle = -45, 	vAngle = 25}),		--Num 9
        [11] = head_pos_default({viewAngle = 85, vAngle = -8}),						--look left
        [12] = head_pos_default({viewAngle = 85, vAngle = -8}),						--look right
        [13] = head_pos_default({}),--({x_trans=0.085, y_trans = -0, vAngle=-12}),	--default view
},
}
