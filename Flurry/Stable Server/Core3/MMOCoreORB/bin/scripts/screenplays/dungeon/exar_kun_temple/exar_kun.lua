--/////////////////////////////////////////////////////////
--//		    Boss Spawn System					//
--//			Created By TOXIC:6/11/2020				//
--////////////////////////////////////////////////////////

--////////////////////////////////////////////////////////
--//		Current Boss Planet Dungeon2			//
--//		Current Boss Type NPC			//
--///////////////////////////////////////////////////////
exar_kunScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "dungeon2",
}
registerScreenPlay("exar_kunScreenplay", true)
-----------------------------
--Start Exar ScreenPlay
-----------------------------
function exar_kunScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		print("Exar Loaded")
	end
end
---------------------------
--Exar Spawn Scene Objects
---------------------------
function exar_kunScreenplay:spawnSceneObjects()
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_quad_screen.iff", -40.4491, 0.61331, 29.3437, 14200816, 1, 0, 0, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_quad_screen.iff", 15.5419, 4.71103, 106.975, 14200878, 1, 0, 0, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_quad_screen.iff", -40.4448, 0.61331, 29.3521, 14200890, 1, 0, 0, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_quad_screen.iff", -11.4999, 0.246572, -121.8, 14200872, 1, 0, 0, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_quad_screen.iff", 5.43268, -8, 30.8895, 14200766, 1, 0, 0, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_quad_screen.iff", -209.378, 6.08163e-08, -25.2531, 14201271, 1, 0, 0, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_quad_screen.iff", 19.3, 0.1, 0.5, 14201104, 1, 0, 0, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_quad_screen.iff", 5.4443, -8, 30.8646, 14200737, 1, 0, 0, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_quad_screen.iff", 0.1, 0.0315461, 42.2, 14200863, 1, 0, 0, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_quad_screen.iff", 6193, 249.9, -5978, 0, 1, 0, 0, 0)
spawnSceneObject("mustafar", "object/tangible/terminal/terminal_quad_screen.iff", -4.9798, -0.528749, 4.48454, 12116005, 0.48481, 0, 0.87462, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_gcw_publish_gift.iff", 88.3474, 0.799999, -41.7449, 14200887, 1, 0, 0, 0)
end
-----------------------
--Exar Has Spawned
-----------------------
function exar_kunScreenplay:spawnMobiles()
		local pBoss = spawnMobile("dungeon2", "exar_boss", -1, 15.1374, -3.58883e-09, 85.2292, 184, 14200878)--Spawn Exar
		local creature = CreatureObject(pBoss)
		print("Exar Spawned")
		createObserver(OBJECTDESTRUCTION, "exar_kunScreenplay", "bossDead", pBoss)--Exar Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--Exar Has Died Respawn Exar With A New Dynamic Spawn
---------------------------------------------------------------
function exar_kunScreenplay:bossDead(pBoss, pPlayer)
	local player = LuaCreatureObject(pPlayer)
	player:broadcastToServer("\\#63C8F9 Exar Has Died!")
	player:broadcastToServer("\\#63C8F9 Exar Will Respawn In 3 Hours")
	player:broadcastToDiscord("Exar Has Died!")
	player:broadcastToDiscord("Exar Will Respawn In 3 Hours")
	print("Exar Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "exar_kunScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "exar_kunScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(10797 * 1000, "exar_kunScreenplay", "KillSpawnCast", pBoss, "")--Broadcast Respawn
	createEvent(10798 * 1000, "exar_kunScreenplay", "KillSpawnCast1", pBoss, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "exar_kunScreenplay", "KillSpawnCast2", pBoss, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "exar_kunScreenplay", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn Exar Boss
-----------------------
function exar_kunScreenplay:KillSpawn()
		local pBoss = spawnMobile("dungeon2", "exar_boss", -1, 15.1374, -3.58883e-09, 85.2292, 184, 14200878)--Spawn Exar After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("Exar Respawned")
		createObserver(OBJECTDESTRUCTION, "exar_kunScreenplay", "bossDead", pBoss)
end
-----------------------
--Broadcast Respawn
-----------------------
function exar_kunScreenplay:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 Exar Respawning In ..")
		player:broadcastToDiscord("Exar Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function exar_kunScreenplay:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 3")
		player:broadcastToDiscord("3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function exar_kunScreenplay:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 2")
		player:broadcastToDiscord("2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function exar_kunScreenplay:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 1")
		player:broadcastToDiscord("1")
end
-----------------------------------------------------------------------------
--Exar Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function exar_kunScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Exar Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
