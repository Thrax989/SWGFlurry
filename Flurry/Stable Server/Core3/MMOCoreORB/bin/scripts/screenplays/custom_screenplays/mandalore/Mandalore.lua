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
		local pBoss = spawnMobile("mandalore", "mandalore_the_resurrector", -1, -22.8, -50.0, 0.4, -93, 8566237)--Spawn World Boss
		local creature = CreatureObject(pBoss)
		print("Mandalore The Resurrector has Spawned")
		createObserver(OBJECTDESTRUCTION, "MandaloreBossScreenplay", "bossDead", pBoss)--World Boss Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--The Boss Has Died Respawn WorldBoss With A New Dynamic Spawn
---------------------------------------------------------------
function MandaloreBossScreenplay:bossDead(pBoss, pPlayer)
	local player = LuaCreatureObject(pPlayer)
	player:broadcastToServer("\\#63C8F9 Mandalore The Resurrector Has Died!")
	player:broadcastToServer("\\#63C8F9 Mandalore The Resurrector Will Respawn In 3 Hours")
	print("Darth Caedus Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "MandaloreBossScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "MandaloreBossScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(10797 * 1000, "MandaloreBossScreenplay", "KillSpawnCast", pBoss, "")--Broadcast Respawn
	createEvent(10798 * 1000, "MandaloreBossScreenplay", "KillSpawnCast1", pBoss, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "MandaloreBossScreenplay", "KillSpawnCast2", pBoss, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "MandaloreBossScreenplay", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn World Boss
-----------------------
function MandaloreBossScreenplay:KillSpawn()
		local pBoss = spawnMobile("mandalore", "mandalore_the_resurrector", -1, -22.8, -50.0, 0.4, -93, 8566237)--Spawn WorldBoss After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("Mandalore The Resurrector")
		createObserver(OBJECTDESTRUCTION, "MandaloreBossScreenplay", "bossDead", pBoss)
end
-----------------------
--Broadcast Respawn
-----------------------
function MandaloreBossScreenplay:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 Mandalore The Resurrector Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function MandaloreBossScreenplay:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function MandaloreBossScreenplay:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function MandaloreBossScreenplay:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 1")
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function MandaloreBossScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted Mandalore The Resurrector Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
		SceneObject(pBoss):destroyObjectFromDatabase()
	end
	return 0
end
