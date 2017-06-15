RoriPvpScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "RoriPvpScreenPlay",

	planet = "",

	gcwMobs = {},
}

function RoriPvpScreenPlay:spawnGcwMobiles()
	if (isZoneEnabled(self.planet)) then
		local controllingFaction = getControllingFaction(self.planet)

		if controllingFaction == FACTIONNEUTRAL then
			local rand = getRandomNumber(1, 2)

			if rand == 1 then
				controllingFaction = FACTIONIMPERIAL
			else
				controllingFaction = FACTIONREBEL
			end
		end

		for i = 1, #self.gcwMobs do
			self:spawnMob(i, controllingFaction)
		end
	end
end