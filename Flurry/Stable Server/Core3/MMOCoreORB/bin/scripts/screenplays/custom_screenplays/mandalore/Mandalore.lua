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
MandaloreBossScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "mandalore",
}
registerScreenPlay("MandaloreBossScreenplay", true)
-----------------------------
--Start World Boss ScreenPlay
-----------------------------
function MandaloreBossScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("Mandalore The Resurrector has Loaded")
	end
end
-----------------------
--The Boss Has Spawned
-----------------------
function MandaloreBossScreenplay:spawnMobiles()
		local pBoss = spawnMobile("mandalore", "mandalore_the_resurrector", -1, -20.40, -50.0, 0.25, 0.71, 8566237)--Spawn World Boss
		local creature = CreatureObject(pBoss)
		print("Mandalore The Resurrector has Spawned")
		createObserver(OBJECTDESTRUCTION, "MandaloreBossScreenplay", "bossDead", pBoss)--World Boss Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--The Boss Has Died Respawn WorldBoss With A New Dynamic Spawn
---------------------------------------------------------------
function MandaloreBossScreenplay:bossDead(pBoss)
	print("Mandalore The Resurrector Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "MandaloreBossScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "MandaloreBossScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	return 0
end
-----------------------
--Respawn World Boss
-----------------------
function MandaloreBossScreenplay:KillSpawn()
		local pBoss = spawnMobile("mandalore", "mandalore_the_resurrector", -1, -20.40, -50.0, 0.25, 0.71, 8566237)--Spawn WorldBoss After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("Mandalore The Resurrector")
		createObserver(OBJECTDESTRUCTION, "MandaloreBossScreenplay", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function MandaloreBossScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted Mandalore The Resurrector Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
