--////////////////////////////////////////////////////////
--//   		      World Boss Spawner	 	  //
--//    	          screenplay	        //
--////////////////////////////////////////////////////////
--// On server launch, eight be/bosses are spawned  	//
--// on random planets throughout the galaxy. Each boss //
--// has a 100% chance of dropping desireable loot - 	//
--// but you have to find one first!  A new world boss  //
--// will spawn three days after one is killed. Every  	//
--// 24 hours, bosses who haven't been killed will be   //
--// despawned, and a new one will spawn in a new     	//
--// location.  					//
--////////////////////////////////////////////////////////

local ObjectManager = require("managers.object.object_manager")
includeFile("events/spawn_points_table.lua")

FlurryWorldBossScreenPlay = ScreenPlay:new {

	numberOfActs = 1,
	
	--Config Values
	bossesToSpawn = 10, --Number of world bosses this screenplay will spawn 
	numReferencePoints = 29, --Number of locations declared in spawn_points_table.lua
	secondsToDespawn = 86400, --Number of seconds before a boss will despawn if it has not been killed (24h = 86,400s)
	secondsToRespawn = 259200, --Number of seconds before a boss will respawn after it has been killed (3d = 259,200s)
	maxRadius = 2500, --Maximum distance in meters from a known reference point to spawn boss mobiles
	numBosses = 19, --Number of boss mobile templates to choose from, as declared below
	
	bossMobileTemplates =  {"vsh", "vvl", "iv", "lg", "mhs", "sr", "jf", "dn", "geoworld_boss2", "rare_force2", "geoworld_boss4", "rare_force4", "geoworld_boss7", "rare_force6", "rare_force1", "rare_force3", "rare_force5", "rare_force7", "geoworld_boss5"},

	screenplayName = "FlurryWorldBossScreenPlay",
	
}

registerScreenPlay("FlurryWorldBossScreenPlay", true)

function FlurryWorldBossScreenPlay:start()
		self:spawnMobiles()
end

function FlurryWorldBossScreenPlay:spawnMobiles()
	local spawns = 1 --Number of world boss spawns created
	local pBoss

	while (spawns < self.bossesToSpawn + 1) do
		self:respawnBoss(pBoss)		
		spawns = spawns + 1
	end
end


function FlurryWorldBossScreenPlay:setupBoss(pBoss)
	createObserver(OBJECTDESTRUCTION, "FlurryWorldBossScreenPlay", "notifyBossDead", pBoss)
	createEvent(self.secondsToDespawn * 1000, "FlurryWorldBossScreenPlay", "despawnBoss", pBoss, "")
end

function FlurryWorldBossScreenPlay:notifyBossDead(pBoss, pKiller)
	if (pBoss == nil) then
		return 1
	end

	if (pKiller == nil) then
		return 1
	end

	createEvent(self.secondsToRespawn * 1000, "FlurryWorldBossScreenPlay", "respawnBoss", pBoss, "")
	--print("Boss was killed, initiating despawn/respawn.")
	return 1
end

function FlurryWorldBossScreenPlay:respawnBoss(pOldBoss)

	local bossTemplate = self.bossMobileTemplates[getRandomNumber(1, self.numBosses)]
	local referencePoint = getRandomNumber(1, self.numReferencePoints)
	local zone = SpawnPointsTable[referencePoint].planetName
		
	if (not isZoneEnabled(zone)) then --If the zone from the SpawnPointsTable is not enabled, pick another reference point.  Do this up to ten times before giving up and erroring out.
		
		local counter = 1
			
		while (not isZoneEnabled(zone) and counter <= 11) do
			referencePoint = getRandomNumber(0, self.numReferencePoints - 1)
			zone = SpawnPointsTable[referencePoint].planetName
				
			if (counter == 11) then
				printLuaError("Unable to spawn world boss.  Necessary zones were not enabled.")	
				return
			end
				
			counter = counter + 1
		end
	end

	local xRef = SpawnPointsTable[referencePoint].xRef
	local yRef = SpawnPointsTable[referencePoint].yRef
	local minRadius = SpawnPointsTable[referencePoint].minRadius
	local pSpawner = spawnSceneObject(zone, "object/tangible/spawning/quest_spawner.iff", xRef, 0, yRef, 0, 0)

	if (pSpawner == nil) then
		printLuaError("QuestSpawner:createQuestSpawner, unable to create spawner object.")
		return
	end

	local spawnPoint = getSpawnPoint(zone, xRef, yRef, minRadius, self.maxRadius, false)
		
	if (spawnPoint == nil) then
			spawnPoint = { spawnerX, getTerrainHeight(pSpawner, xRef, yRef), yRef }
	end

	local pBoss = spawnMobile(zone, bossTemplate, 0, spawnPoint[1], spawnPoint[2], spawnPoint[3], getRandomNumber(360) - 180, 0)
	SceneObject(pSpawner):destroyObjectFromWorld()	

		if (pBoss ~= nil) then
			createEvent(10, "FlurryWorldBossScreenPlay", "setupBoss", pBoss, "")
			--print("Boss: " .. bossTemplate .. " spawned at " .. spawnPoint[1] .. ", " .. spawnPoint[3] .. ", " .. zone) -- debug message, comment out
		end

end

function FlurryWorldBossScreenPlay:despawnBoss(pBoss)
	if (pBoss == nil or CreatureObject(pBoss):isDead()) then
		--print ("Despawn function triggered, but boss was nil or dead - do nothing.")
		return
	end

	if (CreatureObject(pBoss):isInCombat()) then --If Boss is in combat at the scheduled despawn time, don't actually complete the despawn.  Instead, set a new despawn timer.
		createEvent(self.secondsToDespawn * 1000, "FlurryWorldBossScreenPlay", "despawnBoss", pBoss, "")
		--print ("Boss was in combat, rescheduling despawn.")
		return		
	end

	--print("Boss was not killed, initiating despawn/respawn.")
	SceneObject(pBoss):destroyObjectFromWorld()
	createEvent(2 * 1000, "FlurryWorldBossScreenPlay", "respawnBoss", pNewBoss, "")
	return 1
end