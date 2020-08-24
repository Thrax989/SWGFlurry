--/////////////////////////////////////////////////////////
--//		  World Boss Dynamic Spawn System	 //
--//			Created By TOXIC:11/20/2019      //
--////////////////////////////////////////////////////////
--//		Change your world boss under WORLDBOSS	//
--//Spawn Points Will Determain The Boss Spawn location //
--////////////////////////////////////////////////////////
--//		Current World Boss Planet Lok		//
--//		Current World Boss Type CREATURE 	//
--///////////////////////////////////////////////////////
worldboss_sixScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "lok",
}
registerScreenPlay("worldboss_sixScreenplay", true)
-----------------------------
--Start World Boss ScreenPlay
-----------------------------
function worldboss_sixScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("World Boss Six Loaded")
	end
end
-----------------------
--The Boss Has Spawned
-----------------------
function worldboss_sixScreenplay:spawnMobiles()
		local pBoss = spawnMobile("lok", "worldboss_6", -1, 3324, 0, 1727, 196, 0)--Spawn World Boss
		local creature = CreatureObject(pBoss)
		print("World Boss Six Spawned")
		createObserver(OBJECTDESTRUCTION, "worldboss_sixScreenplay", "bossDead", pBoss)--World Boss Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--The Boss Has Died Respawn WorldBoss With A New Dynamic Spawn
---------------------------------------------------------------
function worldboss_sixScreenplay:bossDead(pBoss)
	print("World Boss Six Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "worldboss_sixScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "worldboss_sixScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	return 0
end
-----------------------
--Respawn World Boss
-----------------------
function worldboss_sixScreenplay:KillSpawn()
		local pBoss = spawnMobile("lok", "worldboss_6", -1, 3324, 0, 1727, 196, 0)--Spawn WorldBoss After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("World Boss Spawned 6")
		createObserver(OBJECTDESTRUCTION, "worldboss_sixScreenplay", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function worldboss_sixScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted World Boss Six Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
