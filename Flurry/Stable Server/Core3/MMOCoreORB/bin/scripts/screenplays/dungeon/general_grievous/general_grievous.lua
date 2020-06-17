--/////////////////////////////////////////////////////////
--//		    Boss Spawn System					//
--//			Created By TOXIC:6/11/2020				//
--////////////////////////////////////////////////////////

--////////////////////////////////////////////////////////
--//		Current Boss Planet Dungeon2			//
--//		Current Boss Type NPC			//
--///////////////////////////////////////////////////////
generalgrievous_platformScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "kashyyyk",
}
registerScreenPlay("generalgrievous_platformScreenplay", true)
-----------------------------
--Start generalgrievous ScreenPlay
-----------------------------
function generalgrievous_platformScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("generalgrievous Loaded")
	end
end
-----------------------
--generalgrievous Has Spawned
-----------------------
function generalgrievous_platformScreenplay:spawnMobiles()
		local pBoss = spawnMobile("kashyyyk", "general_grievous", 1, -1935.09, 111.439, 1910.85, 307, 0)--Spawn generalgrievous
		local creature = CreatureObject(pBoss)
		print("generalgrievous Spawned")
		createObserver(OBJECTDESTRUCTION, "generalgrievous_platformScreenplay", "bossDead", pBoss)--generalgrievous Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--generalgrievous Has Died Respawn generalgrievous With A New Dynamic Spawn
---------------------------------------------------------------
function generalgrievous_platformScreenplay:bossDead(pBoss, pPlayer)
	local player = LuaCreatureObject(pPlayer)
	player:broadcastToServer("\\#63C8F9 generalgrievous Has Died!")
	player:broadcastToServer("\\#63C8F9 generalgrievous Will Respawn In 3 Hours")
	player:broadcastToDiscord("generalgrievous Has Died!")
	player:broadcastToDiscord("generalgrievous Will Respawn In 3 Hours")
	print("generalgrievous Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "generalgrievous_platformScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "generalgrievous_platformScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(10797 * 1000, "generalgrievous_platformScreenplay", "KillSpawnCast", pBoss, "")--Broadcast Respawn
	createEvent(10798 * 1000, "generalgrievous_platformScreenplay", "KillSpawnCast1", pBoss, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "generalgrievous_platformScreenplay", "KillSpawnCast2", pBoss, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "generalgrievous_platformScreenplay", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn generalgrievous Boss
-----------------------
function generalgrievous_platformScreenplay:KillSpawn()
		local pBoss = spawnMobilespawnMobile("kashyyyk", "general_grievous", 1, -1935.09, 111.439, 1910.85, 307, 0)--Spawn generalgrievous After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("generalgrievous Respawned")
		createObserver(OBJECTDESTRUCTION, "generalgrievous_platformScreenplay", "bossDead", pBoss)
end
-----------------------
--Broadcast Respawn
-----------------------
function generalgrievous_platformScreenplay:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 generalgrievous Respawning In ..")
		player:broadcastToDiscord("generalgrievous Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function generalgrievous_platformScreenplay:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 3")
		player:broadcastToDiscord("3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function generalgrievous_platformScreenplay:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 2")
		player:broadcastToDiscord("2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function generalgrievous_platformScreenplay:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 1")
		player:broadcastToDiscord("1")
end
-----------------------------------------------------------------------------
--generalgrievous Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function generalgrievous_platformScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("generalgrievous Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
