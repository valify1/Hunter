local count = 0
local function counter()
	count = count + 1
	return count
end
-------DEVICE ID-------
devices = {}
devices["AVIONICS"]					= counter()--1
devices["WEAPON_SYSTEM"]			= counter()--2
devices["ELECTRIC_SYSTEM"]			= counter()--3
devices["CLOCK"]					= counter()--4
devices["ADI"]						= counter()--5
devices["ALTIMETER"]				= counter()--6
devices["ACCELEROMETER"]			= counter()--7
devices["COMMANDS"]					= counter()--8
devices["HYDRAULIC_SYSTEM"]			= counter()--9
devices["AIRBRAKE"]					= counter()--10
devices["SYSTEMS"]					= counter()--11
devices["FUEL_SYSTEM"]				= counter()--13
devices["GYRO_SYSTEM"]				= counter()--14
devices["START_PANEL"]				= counter()--15
devices["ENGINE_SYSTEM"]			= counter()--16
devices["RADAR_ALTIMETER"]			= counter()--17
devices["HSI"]						= counter()--18
devices["Smoke"]					= counter()
devices["CANOPY"]				= counter()
devices["LADDER"]				= counter()--20