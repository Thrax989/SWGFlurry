--/////////////////////////////////////////////////////////
--//		  World Boss Dynamic Spawn System	 //
--//			Created By TOXIC:11/20/2019      //
--////////////////////////////////////////////////////////
--//		Change your world boss under WORLDBOSS	//
--//Spawn Points Will Determain The Boss Spawn location //
--////////////////////////////////////////////////////////
--//		Current World Boss Planet dantooine		//
--//		Current World Boss Type CREATURE 	//
--///////////////////////////////////////////////////////
worldboss_fourScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "dantooine",
}
registerScreenPlay("worldboss_fourScreenplay", true)
-----------------------------
--Start World Boss ScreenPlay
-----------------------------
function worldboss_fourScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("World Boss Four Loaded")
	end
end
-----------------------
--The Boss Has Spawned
-----------------------
function worldboss_fourScreenplay:spawnMobiles()
		local pBoss = spawnMobile("dantooine", "worldboss_4", -1, 4203.6, 8, 5242.33, 19, 0)--Spawn World Boss
		local creature = CreatureObject(pBoss)
		print("World Boss Four Spawned")
		createObserver(OBJECTDESTRUCTION, "worldboss_fourScreenplay", "bossDead", pBoss)--World Boss Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--The Boss Has Died Respawn WorldBoss With A New Dynamic Spawn
---------------------------------------------------------------
function worldboss_fourScreenplay:bossDead(pBoss)
	print("World Boss Four Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "worldboss_fourScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(getRandomNumber(7200000) + 7200000, "worldboss_fourScreenplay", "KillSpawn", pBoss, "")--Random Boss Respawn In 2-4 Hours
	return 0
end
-----------------------
--Respawn World Boss
-----------------------
function worldboss_fourScreenplay:KillSpawn()
		local pBoss = spawnMobile("dantooine", "worldboss_4", -1, 4203.6, 8, 5242.33, 19, 0)--Spawn WorldBoss After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("World Boss Spawned 4")
		createObserver(OBJECTDESTRUCTION, "worldboss_fourScreenplay", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function worldboss_fourScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted World Boss One Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
