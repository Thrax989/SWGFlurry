RoriGcwScreenPlay = RoriPvpScreenPlay:new {	
        numberOfActs = 1,

	screenplayName = "RoriGcwScreenPlay",

	planet = "rori",

	pvpgcwMobs = {
		{"stormtrooper", "rebel_trooper", 5399.5, 80.0, 5676.8, 161, 0, "", ""},
		{"stormtrooper", "rebel_trooper", 5520.3, 80.0, 5535.2, 130, 0, "", ""},
		{"stormtrooper", "rebel_trooper", 5521.7, 80.0, 5529.0, 80, 0, "", ""},
		{"stormtrooper", "rebel_trooper", 5525.3, 80.0, 5533.2, -50, 0, "", ""},
		{"stormtrooper", "rebel_trooper", 5313.2, 80.0, 5795.4, 95, 0, "", ""},
		{"stormtrooper", "rebel_trooper", 5313.2, 80.0, 5791.2, 50, 0, "", ""},
		{"stormtrooper", "rebel_trooper", 5269.9, 80.0, 5815.0, 77, 0, "", ""},	
	},
}

registerScreenPlay("RoriGcwScreenPlay", true)

function RoriGcwScreenPlay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnPvpGcwMobiles()
	end
end
