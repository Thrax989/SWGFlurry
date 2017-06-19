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
		{"stormtrooper", "rebel_trooper", 5269.9, 80.0, 5815.0, 77, 0, "", ""},			
		{"stormtrooper", "rebel_trooper", 5459.9, 80.1, 5856.5, 90, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5459.9, 80.1, 5861.5, 90, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5381.5, 80.0, 5881.5, -135, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5383.8, 80.0, 5877.1, -135, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5373.6, 80.7, 5848.2, -50, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5361.3, 80.2, 5848.8, -90, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5357.3, 80.2, 5848.8, -90, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5345.7, 80.0, 5839.6, 180, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5340.7, 80.0, 5839.6, 180, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5447.9, 80.0, 5837.7, 0, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5445.4, 80.0, 5840.2, 90, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5450.4, 80.0, 5840.2, -90, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5445.4, 80.0, 5844.2, 90, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5450.4, 80.0, 5844.2, -90, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5445.4, 80.0, 5848.2, 90, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5450.4, 80.0, 5848.2, -90, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5419.4, 80.0, 5845.2, 180, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5414.4, 80.0, 5845.2, 180, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5292.2, 80.0, 5854.8, 180, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5283.2, 80.0, 5854.8, 180, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5212.4, 80.0, 5778.7, 0, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5199.2, 80.0, 5778.7, 0, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5212.4, 80.0, 5764.4, 180, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5199.2, 80.0, 5764.4, 180, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5315.2, 80.2, 5523.5, 180, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5339.0, 80.2, 5523.5, 180, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5342.0, 80.2, 5523.5, 180, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5206.5, 80.2, 5603.2, 0, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5199.5, 80.2, 5609.3, 90, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5154.5, 80.2, 5603.2, 0, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5161.5, 80.2, 5609.3, -90, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5128.7, 80.0, 5535.5, -75, 0, "", ""},	
		{"stormtrooper", "rebel_trooper", 5125.1, 80.2, 5542.4, 145, 0, "", ""},
	},
}

registerScreenPlay("RoriGcwScreenPlay", true)

function RoriGcwScreenPlay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnPvpGcwMobiles()
	end
end
