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
SC87Screenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "mandalore",
}
registerScreenPlay("SC87Screenplay", true)
-----------------------------
--Start World Boss ScreenPlay
-----------------------------
function SC87Screenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("SC87 has Loaded")
	end
end
-----------------------
--The Boss Has Spawned
-----------------------
function SC87Screenplay:spawnMobiles()
		local pBoss = spawnMobile("mandalore", "shadow_collective_sc87", -1, 190.1, -66.5, -102.8, -83, 8566289)--Spawn World Boss
		local creature = CreatureObject(pBoss)
		print("SC87 has Spawned")
		createObserver(OBJECTDESTRUCTION, "SC87Screenplay", "bossDead", pBoss)--World Boss Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--The Boss Has Died Respawn WorldBoss With A New Dynamic Spawn
---------------------------------------------------------------
function SC87Screenplay:bossDead(pBoss, pPlayer)
	local player = LuaCreatureObject(pPlayer)
	player:broadcastToServer("\\#63C8F9 SC87 Has Died!")
	player:broadcastToServer("\\#63C8F9 SC87 Will Respawn In 3 Hours")
	player:broadcastToDiscord("SC87 Has Died!")
	player:broadcastToDiscord("SC87 Will Respawn In 3 Hours")
	print("SC87 Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "SC87Screenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "SC87Screenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(10797 * 1000, "SC87Screenplay", "KillSpawnCast", pBoss, "")--Broadcast Respawn
	createEvent(10798 * 1000, "SC87Screenplay", "KillSpawnCast1", pBoss, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "SC87Screenplay", "KillSpawnCast2", pBoss, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "SC87Screenplay", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn World Boss
-----------------------
function SC87Screenplay:KillSpawn()
		local pBoss = spawnMobile("mandalore", "shadow_collective_sc87", -1, 190.1, -66.5, -102.8, -83, 8566289)--Spawn WorldBoss After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("SC87 has Spawned")
		createObserver(OBJECTDESTRUCTION, "SC87Screenplay", "bossDead", pBoss)
end
-----------------------
--Broadcast Respawn
-----------------------
function SC87Screenplay:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 SC87 Respawning In ..")
		player:broadcastToDiscord("SC87 Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function SC87Screenplay:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 3")
		player:broadcastToDiscord("3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function SC87Screenplay:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 2")
		player:broadcastToDiscord("2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function SC87Screenplay:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 1")
		player:broadcastToDiscord("1")
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function SC87Screenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted SC87 Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
