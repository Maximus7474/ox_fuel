return {
	-- Modifies the fuel consumption rate of all vehicles
	-- see [`SET_FUEL_CONSUMPTION_RATE_MULTIPLIER`](https://docs.fivem.net/natives/?_0x845F3E5C).
	[0] = 9.0,		-- Compact
	[1] = 10.0,		-- Sedan
	[2] = 11.0,		-- SUV
	[3] = 10.0,		-- Coupe
	[4] = 12.0,		-- Muscle
	[5] = 11.5,		-- Sports Classic
	[6] = 12.5,		-- Sports
	[7] = 14.0,		-- Super
	[8] = 7.0,		-- Motorcycle
	[9] = 11.5,		-- Offroad
	[10] = 13.0,	-- Industrial
	[11] = 11.0,	-- Utility
	[12] = 10.5,	-- Van
	[14] = 6.0,		-- Boat
	[15] = 15.0,	-- Helicopter
	[16] = 16.0,	-- Plane
	[17] = 10.5,	-- Service
	[18] = 9.0,		-- Emergency
	[19] = 13.5,	-- Military
	[20] = 14.5,	-- Commercial (trucks)
	models = {
		[GetHashKey('tug')] = 14.0,
		[GetHashKey('kosatka')] = 16.0,
	},
}
