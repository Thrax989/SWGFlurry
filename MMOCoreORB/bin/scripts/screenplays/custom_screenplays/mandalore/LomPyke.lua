--/////////////////////////////////////////////////////////
--//		  World Boss Spawn System					//
--//			Created By Sygnum 04/13/20				//
--////////////////////////////////////////////////////////
--//		Change your world boss under WORLDBOSS		//
--//Spawn Points Will Determain The Boss Spawn location //
--////////////////////////////////////////////////////////
--//		Current World Boss Planet Mandalore			//
--//		Current World Boss Type CREATURE			//
--///////////////////////////////////////////////////////
LomPykeScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "mandalore",
}
registerScreenPlay("LomPykeScreenplay", true)
-----------------------------
--Start World Boss ScreenPlay
-----------------------------
function LomPykeScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("Lom Pyke has Loaded")
	end
end
-----------------------
--The Boss Has Spawned
-----------------------
function LomPykeScreenplay:spawnMobiles()
		local pBoss = spawnMobile("mandalore", "lom_pyke", -1, -85.8, -50.0, 59.8, 0.7, 8565775)--Spawn World Boss
		local creature = CreatureObject(pBoss)
		print("Lom Pyke has Spawned")
		createObserver(OBJECTDESTRUCTION, "LomPykeScreenplay", "bossDead", pBoss)--World Boss Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--The Boss Has Died Respawn WorldBoss With A New Dynamic Spawn
---------------------------------------------------------------
function LomPykeScreenplay:bossDead(pBoss)
	print("Lom Pyke Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "LomPykeScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "LomPykeScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	return 0
end
-----------------------
--Respawn World Boss
-----------------------
function LomPykeScreenplay:KillSpawn()
		local pBoss = spawnMobile("mandalore", "lom_pyke", -1, -85.8, -50.0, 59.8, 0.7, 8565775)--Spawn WorldBoss After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("Lom Pyke has Spawned")
		createObserver(OBJECTDESTRUCTION, "LomPykeScreenplay", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function LomPykeScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted Lom Pyke Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
