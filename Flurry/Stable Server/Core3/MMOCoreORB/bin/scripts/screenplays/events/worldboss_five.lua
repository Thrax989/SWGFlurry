--/////////////////////////////////////////////////////////
--//		  World Boss Dynamic Spawn System	 //
--//			Created By TOXIC:11/20/2019      //
--////////////////////////////////////////////////////////
--//		Change your world boss under WORLDBOSS	//
--//Spawn Points Will Determain The Boss Spawn location //
--////////////////////////////////////////////////////////
--//		Current World Boss Planet Dathomir		//
--//		Current World Boss Type CREATURE 	//
--///////////////////////////////////////////////////////
worldboss_fiveScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "dathomir",
}
registerScreenPlay("worldboss_fiveScreenplay", true)
-----------------------------
--Start World Boss ScreenPlay
-----------------------------
function worldboss_fiveScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("World Boss Five Loaded")
	end
end
-----------------------
--The Boss Has Spawned
-----------------------
function worldboss_fiveScreenplay:spawnMobiles()
		local pBoss = spawnMobile("dathomir", "worldboss_5", -1, -2095.27, 20.4676, 3134.11, 222, 0)--Spawn World Boss
		local creature = CreatureObject(pBoss)
		print("World Boss Five Spawned")
		createObserver(OBJECTDESTRUCTION, "worldboss_fiveScreenplay", "bossDead", pBoss)--World Boss Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--The Boss Has Died Respawn WorldBoss With A New Dynamic Spawn
---------------------------------------------------------------
function worldboss_fiveScreenplay:bossDead(pBoss)
	print("World Boss Five Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "worldboss_fiveScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(getRandomNumber(7200000) + 7200000, "worldboss_fiveScreenplay", "KillSpawn", pBoss, "")--Random Boss Respawn In 2-4 Hours
	return 0
end
-----------------------
--Respawn World Boss
-----------------------
function worldboss_fiveScreenplay:KillSpawn()
		local pBoss = spawnMobile("dathomir", "worldboss_5", -1, -2095.27, 20.4676, 3134.11, 222, 0)--Spawn WorldBoss After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("World Boss Spawned 5")
		createObserver(OBJECTDESTRUCTION, "worldboss_fiveScreenplay", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function worldboss_fiveScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted World Boss One Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
