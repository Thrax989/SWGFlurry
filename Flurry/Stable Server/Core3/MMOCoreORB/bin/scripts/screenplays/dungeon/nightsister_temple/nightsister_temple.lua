--/////////////////////////////////////////////////////////
--//		    Boss Spawn System					//
--//			Created By TOXIC:6/11/2020				//
--////////////////////////////////////////////////////////

--////////////////////////////////////////////////////////
--//		Current Boss Planet Dungeon2			//
--//		Current Boss Type NPC			//
--///////////////////////////////////////////////////////
nightsister_templeScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "dungeon2",
}
registerScreenPlay("nightsister_templeScreenplay", true)
-----------------------------
--Start NightsisterQueen ScreenPlay
-----------------------------
function nightsister_templeScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		print("NightsisterQueen Loaded")
	end
end
--------------------------------------------------
--   Terminal
--------------------------------------------------
function nightsister_temple:spawnSceneObjects()
spawnSceneObject("dantooine", "object/tangible/terminal/terminal_quad_screen.iff", -40.4491, 0.61331, 29.3437, 14200816, 1, 0, 0, 0)
end
-----------------------
--NightsisterQueen Has Spawned
-----------------------
function nightsister_templeScreenplay:spawnMobiles()
		local pBoss = spawnMobile("dungeon2", "nightsisterqueenboss", -1, -79.1685, 17.8173, 23.93, 100, 14201105)--Spawn NightsisterQueen
		local creature = CreatureObject(pBoss)
		print("NightsisterQueen Spawned")
		createObserver(OBJECTDESTRUCTION, "nightsister_templeScreenplay", "bossDead", pBoss)--NightsisterQueen Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--NightsisterQueen Has Died Respawn NightsisterQueen With A New Dynamic Spawn
---------------------------------------------------------------
function nightsister_templeScreenplay:bossDead(pBoss, pPlayer)
	local player = LuaCreatureObject(pPlayer)
	player:broadcastToServer("\\#63C8F9 NightsisterQueen Has Died!")
	player:broadcastToServer("\\#63C8F9 NightsisterQueen Will Respawn In 3 Hours")
	player:broadcastToDiscord("NightsisterQueen Has Died!")
	player:broadcastToDiscord("NightsisterQueen Will Respawn In 3 Hours")
	print("NightsisterQueen Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "nightsister_templeScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "nightsister_templeScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(10797 * 1000, "nightsister_templeScreenplay", "KillSpawnCast", pBoss, "")--Broadcast Respawn
	createEvent(10798 * 1000, "nightsister_templeScreenplay", "KillSpawnCast1", pBoss, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "nightsister_templeScreenplay", "KillSpawnCast2", pBoss, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "nightsister_templeScreenplay", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn NightsisterQueen Boss
-----------------------
function nightsister_templeScreenplay:KillSpawn()
		local pBoss = spawnMobile("dungeon2", "nightsisterqueenboss", -1, -79.1685, 17.8173, 23.93, 100, 14201105)--Spawn NightsisterQueen After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("NightsisterQueen Respawned")
		createObserver(OBJECTDESTRUCTION, "nightsister_templeScreenplay", "bossDead", pBoss)
end
-----------------------
--Broadcast Respawn
-----------------------
function nightsister_templeScreenplay:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 NightsisterQueen Respawning In ..")
		player:broadcastToDiscord("NightsisterQueen Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function nightsister_templeScreenplay:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 3")
		player:broadcastToDiscord("3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function nightsister_templeScreenplay:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 2")
		player:broadcastToDiscord("2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function nightsister_templeScreenplay:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 1")
		player:broadcastToDiscord("1")
end
-----------------------------------------------------------------------------
--NightsisterQueen Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function nightsister_templeScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("NightsisterQueen Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
