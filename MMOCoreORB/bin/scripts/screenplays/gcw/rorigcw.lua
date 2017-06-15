RoriGcwScreenPlay = RoriPvpScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "RoriGcwScreenPlay",

	planet = "rori",

	gcwMobs = {
		{"stormtrooper", "rebel_trooper", 0, 0, 0, 0, 0, "", ""},
	},
}


function RoriGcwScreenPlay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		self:spawnGcwMobiles()
	end
end
