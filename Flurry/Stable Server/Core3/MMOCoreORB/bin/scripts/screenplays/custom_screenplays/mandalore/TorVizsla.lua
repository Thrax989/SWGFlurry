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
TorVizslaScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "mandalore",
}
registerScreenPlay("TorVizslaScreenplay", true)
-----------------------------
--Start World Boss ScreenPlay
-----------------------------
function TorVizslaScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("Tor Vizsla II has Loaded")
	end
end
-----------------------
--The Boss Has Spawned
-----------------------
function TorVizslaScreenplay:spawnMobiles()
		local pBoss = spawnMobile("mandalore", "tor_vizsla", -1, -90.7, -101.1, -102.6, -176, 8566175)--Spawn World Boss
		local creature = CreatureObject(pBoss)
		print("Tor Vizsla II has Spawned")
		createObserver(OBJECTDESTRUCTION, "TorVizslaScreenplay", "bossDead", pBoss)--World Boss Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--The Boss Has Died Respawn WorldBoss With A New Dynamic Spawn
---------------------------------------------------------------
function TorVizslaScreenplay:bossDead(pBoss, pPlayer)
	local player = LuaCreatureObject(pPlayer)
	--player:broadcastToServer("\\#63C8F9 Tor Vizsla II Has Died!")
	--player:broadcastToServer("\\#63C8F9 Tor Vizsla II Will Respawn In 3 Hours")
	player:broadcastToDiscord("Tor Vizsla II Has Died!")
	player:broadcastToDiscord("Tor Vizsla II Will Respawn In 3 Hours")
	print("Tor Vizsla II Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "TorVizslaScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "TorVizslaScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(10797 * 1000, "TorVizslaScreenplay", "KillSpawnCast", pBoss, "")--Broadcast Respawn
	createEvent(10798 * 1000, "TorVizslaScreenplay", "KillSpawnCast1", pBoss, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "TorVizslaScreenplay", "KillSpawnCast2", pBoss, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "TorVizslaScreenplay", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn World Boss
-----------------------
function TorVizslaScreenplay:KillSpawn()
		local pBoss = spawnMobile("mandalore", "tor_vizsla", -1, -90.7, -101.1, -102.6, -176, 8566175)--Spawn WorldBoss After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("Tor Vizsla II has Spawned")
		createObserver(OBJECTDESTRUCTION, "TorVizslaScreenplay", "bossDead", pBoss)
end
-----------------------
--Broadcast Respawn
-----------------------
function TorVizslaScreenplay:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		--player:broadcastToServer("\\#63C8F9 Tor Vizsla II Respawning In ..")
		player:broadcastToDiscord("Tor Vizsla II Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function TorVizslaScreenplay:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		--player:broadcastToServer("\\#63C8F9 3")
		player:broadcastToDiscord("3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function TorVizslaScreenplay:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		--player:broadcastToServer("\\#63C8F9 2")
		player:broadcastToDiscord("2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function TorVizslaScreenplay:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		--player:broadcastToServer("\\#63C8F9 1")
		player:broadcastToDiscord("1")
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function TorVizslaScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted Tor Vizsla II Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
