--////////////////////////////////////////////////////////
--//		  World Boss Dynamic Spawn System	 		//
--//			Created By TOXIC:11/20/2019       		//
--////////////////////////////////////////////////////////
--//		Change your world boss under WORLDBOSS		//
--//Spawn Points Will Determain The Boss Spawn location //
--////////////////////////////////////////////////////////
--//		Current World Boss Planet Yavin4			//
--//		Current World Boss Type CREATURE 			//
--////////////////////////////////////////////////////////
worldboss_fifteenScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "yavin4",
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
registerScreenPlay("worldboss_fifteenScreenplay", true)
-----------------------------
--Start World Boss ScreenPlay
-----------------------------
function worldboss_fifteenScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles(self.spawnPoints)
		print("World Boss One Loaded")
	end
end
-----------------------
--The Boss Has Spawned
-----------------------
function worldboss_fifteenScreenplay:spawnMobiles(spawnList)
	for k,v in ipairs(spawnList) do 
		local pBoss = spawnMobile(self.planet, "WORLDBOSS", -1, math.random(v.radius) + v.x, 0, math.random(v.radius) + v.y, math.random(360), 0)
		local creature = CreatureObject(pBoss)
		print("World Boss Spawned")
		creature:setScreenPlayState(k, "worldboss_fifteenScreenplay")
		createObserver(OBJECTDESTRUCTION, "worldboss_fifteenScreenplay", "bossDead", pBoss)
	end
end
---------------------------------------------------------------
--The Boss Has Died Respawn WorldBoss With A New Dynamic Spawn
---------------------------------------------------------------
function worldboss_fifteenScreenplay:bossDead(pBoss)
	print("World Boss One Has Died")
	local creature = CreatureObject(pBoss)
	local listNum = creature:getScreenPlayState("worldboss_fifteenScreenplay")
	local v = self.spawnPoints[listNum]
	createEvent(120 * 1000, "worldboss_fifteenScreenplay", "KillBoss", pBoss, "")
	local pBoss = spawnMobile(self.planet, "WORLDBOSS", -1, math.random(v.radius) + v.x, 0, math.random(v.radius) + v.y, math.random(360), 0)
	local creature = CreatureObject(pBoss)
	print("Respawning World Boss One")
	creature:setScreenPlayState(listNum, "worldboss_fifteenScreenplay")
	createObserver(OBJECTDESTRUCTION, "worldboss_fifteenScreenplay", "bossDead", pBoss)
	return 0
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function worldboss_fifteenScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted World Boss One Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
