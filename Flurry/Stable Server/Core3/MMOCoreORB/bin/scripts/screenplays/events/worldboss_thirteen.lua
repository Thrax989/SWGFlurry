--////////////////////////////////////////////////////////
--//		  World Boss Dynamic Spawn System	 		//
--//			Created By TOXIC:11/20/2019       		//
--////////////////////////////////////////////////////////
--//		Change your world boss under WORLDBOSS		//
--//Spawn Points Will Determain The Boss Spawn location //
--////////////////////////////////////////////////////////
--//		Current World Boss Planet 					//
--//		Current World Boss Type  					//
--////////////////////////////////////////////////////////
worldboss_thirteenScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "",
 --TODO Create Random Dynamic Spawn Locations The Following Are Test Place Holders
---------------------------------------
--World Boss Random Dynamic Spawn Table
---------------------------------------
	spawnPoints = {
		{x= 1,y= 1,radius= 500 },
		{x= 1,y= 1,radius= 1000 },
		{x= 1,y= 1,radius= 1500 },
		{x= 1,y= 1,radius= 2000 },
	}
}
registerScreenPlay("worldboss_thirteenScreenplay", true)
-----------------------------
--Start World Boss ScreenPlay
-----------------------------
function worldboss_thirteenScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles(self.spawnPoints)
		print("World Boss One Loaded")
	end
end
-----------------------
--The Boss Has Spawned
-----------------------
function worldboss_thirteenScreenplay:spawnMobiles(spawnList)
	for k,v in ipairs(spawnList) do 
		local pBoss = spawnMobile(self.planet, "WORLDBOSS", -1, math.random(v.radius) + v.x, 0, math.random(v.radius) + v.y, math.random(360), 0)
		local creature = CreatureObject(pBoss)
		print("World Boss Spawned")
		creature:setScreenPlayState(k, "worldboss_thirteenScreenplay")
		createObserver(OBJECTDESTRUCTION, "worldboss_thirteenScreenplay", "bossDead", pBoss)
	end
end
---------------------------------------------------------------
--The Boss Has Died Respawn WorldBoss With A New Dynamic Spawn
---------------------------------------------------------------
function worldboss_thirteenScreenplay:bossDead(pBoss)
	print("World Boss One Has Died")
	local creature = CreatureObject(pBoss)
	local listNum = creature:getScreenPlayState("worldboss_thirteenScreenplay")
	local v = self.spawnPoints[listNum]
	createEvent(120 * 1000, "worldboss_thirteenScreenplay", "KillBoss", pBoss, "")
	local pBoss = spawnMobile(self.planet, "WORLDBOSS", -1, math.random(v.radius) + v.x, 0, math.random(v.radius) + v.y, math.random(360), 0)
	local creature = CreatureObject(pBoss)
	print("Respawning World Boss One")
	creature:setScreenPlayState(listNum, "worldboss_thirteenScreenplay")
	createObserver(OBJECTDESTRUCTION, "worldboss_thirteenScreenplay", "bossDead", pBoss)
	return 0
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function worldboss_thirteenScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted World Boss One Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
		SceneObject(pBoss):destroyObjectFromDatabase()
	end
	return 0
end
