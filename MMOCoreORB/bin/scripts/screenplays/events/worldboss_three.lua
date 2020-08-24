--/////////////////////////////////////////////////////////
--//		  World Boss Dynamic Spawn System	 //
--//			Created By TOXIC:11/20/2019      //
--////////////////////////////////////////////////////////
--//		Change your world boss under WORLDBOSS	//
--//Spawn Points Will Determain The Boss Spawn location //
--////////////////////////////////////////////////////////
--//		Current World Boss Planet yavin4		//
--//		Current World Boss Type CREATURE 	//
--///////////////////////////////////////////////////////
worldboss_threeScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "yavin4",
}
registerScreenPlay("worldboss_threeScreenplay", true)
-----------------------------
--Start World Boss ScreenPlay
-----------------------------
function worldboss_threeScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("World Boss Three Loaded")
	end
end
-----------------------
--The Boss Has Spawned
-----------------------
function worldboss_threeScreenplay:spawnMobiles()
		local pBoss = spawnMobile("yavin4", "worldboss_3", -1, 1349.7, 39.1919, -6439.2, 275, 0)--Spawn World Boss
		local creature = CreatureObject(pBoss)
		print("World Boss Three Spawned")
		createObserver(OBJECTDESTRUCTION, "worldboss_threeScreenplay", "bossDead", pBoss)--World Boss Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--The Boss Has Died Respawn WorldBoss With A New Dynamic Spawn
---------------------------------------------------------------
function worldboss_threeScreenplay:bossDead(pBoss)
	print("World Boss Three Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "worldboss_threeScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "worldboss_threeScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	return 0
end
-----------------------
--Respawn World Boss
-----------------------
function worldboss_threeScreenplay:KillSpawn()
		local pBoss = spawnMobile("yavin4", "worldboss_3", -1, 1349.7, 39.1919, -6439.2, 275, 0)--Spawn WorldBoss After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("World Boss Spawned 3")
		createObserver(OBJECTDESTRUCTION, "worldboss_threeScreenplay", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function worldboss_threeScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted World Boss One Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
