	numberOfActs = 1,

	screenplayName = "RoriGcwScreenPlay",

	planet = "rori",

	pvpgcwMobs = {
		{"stormtrooper", "rebel_trooper", 0, 0, 0, 0, 0, "", ""},
	},
}

registerScreenPlay("RoriGcwScreenPlay", true)

function RoriGcwScreenPlay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnPvpGcwMobiles()
	end
end
