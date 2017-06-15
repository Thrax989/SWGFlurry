RoriPvpScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "RoriPvpScreenPlay",

	planet = "",

	pvpgcwMobs = {},
}

function RoriPvpScreenPlay:spawnPvpGcwMobiles()
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

		for i = 1, #self.pvpgcwMobs do
			self:spawnMob(i, controllingFaction)
		end
	end
end

function RoriPvpScreenPlay:spawnMob(num, controllingFaction)
	local mobsTable = self.pvpgcwMobs

	if num <= 0 or num > #mobsTable then
		return
	end

	local mobTable = mobsTable[num]
	local pNpc = nil

	if controllingFaction == FACTIONIMPERIAL then
		pNpc = spawnMobile(self.planet, mobTable[1], 0, mobTable[3], mobTable[4], mobTable[5], mobTable[6], mobTable[7])

		if pNpc ~= nil and mobTable[8] ~= "" then
			self:setMoodString(pNpc, mobTable[8])
		end
	elseif controllingFaction == FACTIONREBEL then
		pNpc = spawnMobile(self.planet, mobTable[2], 0, mobTable[3], mobTable[4], mobTable[5], mobTable[6], mobTable[7])

		if pNpc ~= nil and mobTable[9] ~= "" then
			self:setMoodString(pNpc, mobTable[9])
		end
	end

	if pNpc ~= nil then
		createObserver(CREATUREDESPAWNED, self.screenplayName, "onDespawn", pNpc)
		writeData(SceneObject(pNpc):getObjectID(), num)
	end
end