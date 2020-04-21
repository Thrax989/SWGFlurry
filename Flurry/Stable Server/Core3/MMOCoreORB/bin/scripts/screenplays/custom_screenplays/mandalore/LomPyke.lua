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
function LomPykeScreenplay:bossDead(pBoss, pPlayer)
	local player = LuaCreatureObject(pPlayer)
	player:broadcastToServer("\\#63C8F9 Lom Pyke Has Died!")
	player:broadcastToServer("\\#63C8F9 Lom Pyke Will Respawn In 3 Hours")
	print("Lom Pyke Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "LomPykeScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "LomPykeScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(10797 * 1000, "LomPykeScreenplay", "KillSpawnCast", pBoss, "")--Broadcast Respawn
	createEvent(10798 * 1000, "LomPykeScreenplay", "KillSpawnCast1", pBoss, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "LomPykeScreenplay", "KillSpawnCast2", pBoss, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "LomPykeScreenplay", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
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
-----------------------
--Broadcast Respawn
-----------------------
function LomPykeScreenplay:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 Lom Pyke Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function LomPykeScreenplay:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function LomPykeScreenplay:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function LomPykeScreenplay:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 1")
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function LomPykeScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted Lom Pyke Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
		SceneObject(pBoss):destroyObjectFromDatabase()
	end
	return 0
end