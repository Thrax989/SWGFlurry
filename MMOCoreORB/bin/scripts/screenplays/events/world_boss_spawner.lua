local ObjectManager = require("managers.object.object_manager")
includeFile("events/world_boss_spt.lua")

WorldBossSpawner = ScreenPlay:new {

	numberOfActs = 1,
	bossesToSpawn = 5,
	initSpawnTimer = 900,
	numReferencePoints = 29,
	secondsToDespawn = 18000, 
	secondsToRespawn = 21600, 
	maxRadius = 2000,
	randomVariance = 1800,

	bossMobileTemplates =  {
		{template = "corrupted_acklay_boss", name = "Corrupted Acklay"}, 
		{template = "corrupted_rancor_boss", name = "Corrupted Rancor"},
		{template = "corrupted_wampa_boss", name = "Corrupted Wampa"},
		{template = "corrupted_geonosian_boss", name = "Corrupted Geonosian"},
		{template = "corrupted_deathsting_boss", name = "Corrupted Deathsting"},
		{template = "corrupted_the_hand", name = "Corrupted Emperors Hand"},
		{template = "corrupted_general_hark", name = "Corrupted General Hark"},

	},

	screenplayName = "WorldBossSpawner",
}

registerScreenPlay("WorldBossSpawner", true)

function WorldBossSpawner:start()
	createEvent(self.initSpawnTimer * 1000, "WorldBossSpawner", "spawnMobiles", pBoss, "")
end

function WorldBossSpawner:spawnMobiles()
	local spawns = 1
	local pBoss

	while (spawns < self.bossesToSpawn + 1) do
		self:respawnBoss(pBoss)		
		spawns = spawns + 1
	end
end


function WorldBossSpawner:setupBoss(pBoss)
	createObserver(OBJECTDESTRUCTION, "WorldBossSpawner", "notifyBossDead", pBoss)
	createEvent(getRandomNumber(self.secondsToDespawn - self.randomVariance, self.secondsToDespawn + self.randomVariance) * 1000, "WorldBossSpawner", "despawnBoss", pBoss, "")
end

function WorldBossSpawner:notifyBossDead(pBoss, pKiller)
	if (pBoss == nil) then
		return 1
	end

	if (pKiller == nil) then
		return 1
	end
	createEvent(getRandomNumber(self.secondsToRespawn - self.randomVariance, self.secondsToRespawn + self.randomVariance) * 1000, "WorldBossSpawner", "respawnBoss", pBoss, "")
	local bossName = self:getBossName(pBoss)
	local zone = self:getBossZone(pBoss)

	if (bossName ~= nil and zone ~= nil) then
		CreatureObject(pBoss):broadcastToServer("\\#6699ff Incomming Transmission \n\n \\#ffff99" .. bossName .. " \\#ff9966 has been slain on " .. zone)
		CreatureObject(pBoss):broadcastToDiscord(" a " .. bossName .. " has been slain on " .. zone) 
		deleteStringData(SceneObject(pBoss):getObjectID() .. ":name")
		deleteStringData(SceneObject(pBoss):getObjectID() .. ":zone")
		for i = 1, self.bossesToSpawn, 1 do
			local checkBossPlanetData = readData(zone .. ":" .. i)
			if (checkBossPlanetData ~= nil and checkBossPlanetData == SceneObject(pBoss):getObjectID()) then
				deleteData(zone .. ":" .. i)
				break
			end
		end
	end
	
	return 1
end

function WorldBossSpawner:respawnBoss(pOldBoss)

	local bossObject = self.bossMobileTemplates[getRandomNumber(1, #self.bossMobileTemplates)]
	local bossTemplate = bossObject.template
	local referencePoint = getRandomNumber(1, self.numReferencePoints)
	local zone = BossSpawnPoint[referencePoint].planetName
		
	if (not isZoneEnabled(zone)) then
		
		local counter = 1
			
		while (not isZoneEnabled(zone) and counter <= 11) do
			referencePoint = getRandomNumber(0, self.numReferencePoints - 1)
			zone = BossSpawnPoint[referencePoint].planetName
				
			if (counter == 11) then
				return
			end
				
			counter = counter + 1
		end
	end

	local xPos = BossSpawnPoint[referencePoint].xPos
	local yPos = BossSpawnPoint[referencePoint].yPos
	local pSpawner = spawnSceneObject(zone, "object/tangible/spawning/quest_spawner.iff", xPos, 0, yPos, 0, 0)

	if (pSpawner == nil) then
		return
	end

	local spawnPoint = getSpawnPoint(zone, xPos, yPos, self.minimumDistance, self.maxRadius, false)
		
	if (spawnPoint == nil) then
			spawnPoint = { spawnerX, getTerrainHeight(pSpawner, xPos, yPos), yPos }
	end

	local pBoss = spawnMobile(zone, bossTemplate, 0, spawnPoint[1], spawnPoint[2], spawnPoint[3], getRandomNumber(360) - 180, 0)
	SceneObject(pSpawner):destroyObjectFromWorld()	

		if (pBoss ~= nil) then

			createEvent(30, "WorldBossSpawner", "setupBoss", pBoss, "")

			writeStringData(SceneObject(pBoss):getObjectID() .. ":name", bossObject.name)
			writeStringData(SceneObject(pBoss):getObjectID() .. ":zone", zone)

			for i = 1, self.bossesToSpawn, 1 do
				if (readData(zone .. ":" .. i) == nil or readData(zone .. ":" .. i) == 0) then
					writeData(zone .. ":" .. i, SceneObject(pBoss):getObjectID())
					break
				end
			end

			CreatureObject(pBoss):broadcastToServer("\\#6699ff Incomming Transmission \n\n ".." a \\#ffff99" .. bossObject.name .. " \\#66ff99 has been sighted on " .. zone) 
			CreatureObject(pBoss):broadcastToDiscord(" a " .. bossObject.name .. " has been sighted on " .. zone)
		end

end

function WorldBossSpawner:despawnBoss(pBoss)
	if (pBoss == nil) then
		return
	end

	if (CreatureObject(pBoss):isDead()) then
		local bossZone = readStringData(SceneObject(pBoss):getObjectID() .. ":zone")
		deleteStringData(SceneObject(pBoss):getObjectID() .. ":name")
		deleteStringData(SceneObject(pBoss):getObjectID() .. ":zone")

		for i = 1, self.bossesToSpawn, 1 do
			local checkBossPlanetData = readData(bossZone .. ":" .. i)
			if (checkBossPlanetData ~= nil and checkBossPlanetData == SceneObject(pBoss):getObjectID()) then
				deleteData(bossZone .. ":" .. i)
				break
			end
		end
		return
	end

	if (CreatureObject(pBoss):isInCombat()) then
		createEvent(getRandomNumber(self.secondsToDespawn - self.randomVariance, self.secondsToDespawn + self.randomVariance) * 1000, "WorldBossSpawner", "despawnBoss", pBoss, "")
		return		
	end

	--print("Boss was not killed, initiating despawn/respawn.")
	
	local bossName = self:getBossName(pBoss)
	local zone = self:getBossZone(pBoss)

	if (bossName ~= nil and zone ~= nil) then
		CreatureObject(pBoss):broadcastToServer("\\#6699ff Incomming Transmission \n\n \\#ffff99" .. bossName .. " \\#ffccff has gone back into hiding on " .. zone) 
		CreatureObject(pBoss):broadcastToDiscord(" a " .. bossName .. " has gone back into hiding on " .. zone)
	end

	for i = 1, self.bossesToSpawn, 1 do
		local checkBossPlanetData = readData(zone .. ":" .. i)
		if (checkBossPlanetData ~= nil and checkBossPlanetData == SceneObject(pBoss):getObjectID()) then
			deleteData(zone .. ":" .. i)
			break
		end
	end
	SceneObject(pBoss):destroyObjectFromWorld()
	deleteStringData(SceneObject(pBoss):getObjectID() .. ":name")
	deleteStringData(SceneObject(pBoss):getObjectID() .. ":zone")
	createEvent(2 * 1000, "WorldBossSpawner", "respawnBoss", pNewBoss, "")
	return 1
end

function WorldBossSpawner:getBossName(pBoss)
	local bossName = readStringData(SceneObject(pBoss):getObjectID() .. ":name")
	return bossName
end

function WorldBossSpawner:getBossZone(pBoss)
	local bossZone = readStringData(SceneObject(pBoss):getObjectID() .. ":zone")
	return bossZone
end
