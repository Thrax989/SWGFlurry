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
LomPikeScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "mandalore",
}
registerScreenPlay("LomPikeScreenplay", true)
-----------------------------
--Start World Boss ScreenPlay
-----------------------------
function LomPikeScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("Lom Pike has Loaded")
	end
end
-----------------------
--The Boss Has Spawned
-----------------------
function LomPikeScreenplay:spawnMobiles()
		local pBoss = spawnMobile("mandalore", "lom_pike", -1, 43.4, -23.0, 280.6, 178, 8565775)--Spawn World Boss
		local creature = CreatureObject(pBoss)
		print("Lom Pike has Spawned")
		createObserver(OBJECTDESTRUCTION, "LomPikeScreenplay", "bossDead", pBoss)--World Boss Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--The Boss Has Died Respawn WorldBoss With A New Dynamic Spawn
---------------------------------------------------------------
function LomPikeScreenplay:bossDead(pBoss, pPlayer)
	local player = LuaCreatureObject(pPlayer)
	player:broadcastToServer("\\#63C8F9 Lom Pike Has Died!")
	player:broadcastToServer("\\#63C8F9 Lom Pike Will Respawn In 3 Hours")
	print("Lom Pike Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "LomPikeScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "LomPikeScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(10797 * 1000, "LomPikeScreenplay", "KillSpawnCast", pBoss, "")--Broadcast Respawn
	createEvent(10798 * 1000, "LomPikeScreenplay", "KillSpawnCast1", pBoss, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "LomPikeScreenplay", "KillSpawnCast2", pBoss, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "LomPikeScreenplay", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn World Boss
-----------------------
function LomPikeScreenplay:KillSpawn()
		local pBoss = spawnMobile("mandalore", "lom_pike", -1, 43.4, -23.0, 280.6, 178, 8565775)--Spawn WorldBoss After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("Lom Pike has Spawned")
		createObserver(OBJECTDESTRUCTION, "LomPikeScreenplay", "bossDead", pBoss)
end
-----------------------
--Broadcast Respawn
-----------------------
function LomPikeScreenplay:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 Lom Pike Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function LomPikeScreenplay:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function LomPikeScreenplay:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function LomPikeScreenplay:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 1")
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function LomPikeScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted Lom Pike Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
		SceneObject(pBoss):destroyObjectFromDatabase()
	end
	return 0
end
