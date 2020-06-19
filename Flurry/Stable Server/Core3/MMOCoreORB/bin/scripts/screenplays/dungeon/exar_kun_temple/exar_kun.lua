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
		spawnMobile("dungeon2", "exar_guard", 1800, -18.336, 0.230914, -90.2677, 353, 14200873)
		spawnMobile("dungeon2", "exar_guard", 1800, -5.34595, 0.230444, -90.253, 354, 14200873)
		spawnMobile("dungeon2", "exar_guard", 1800, 8.63837, -0.0594431, -78.3088, 279, 14200873)
		spawnMobile("dungeon2", "exar_guard", 1800, 12.503, -0.0075657, -56.5522, 239, 14200873)
		spawnMobile("dungeon2", "exar_guard", 1800, -2.02189, -0.073005, -42.7131, 336, 14200873)
		spawnMobile("dungeon2", "exar_guard", 1800, -6.48184, -0.073003, -42.1362, 64, 14200873)
		spawnMobile("dungeon2", "exar_guard", 1800, -16.0898, -0.0730027, -42.5834, 293, 14200873)
		spawnMobile("dungeon2", "exar_guard", 1800, -20.3572, -0.0730028, -43.8532, 356, 14200873)
		spawnMobile("dungeon2", "exar_guard", 1800, -35.7563, -0.073005, -64.2672, 78, 14200873)
		spawnMobile("dungeon2", "exar_guard", 1800, 36.439, 1.03967e-07, -66.3123, 322, 14200874)
		spawnMobile("dungeon2", "exar_guard", 1800, 41.7927, 8.69412e-08, -62.7877, 243, 14200874)
		spawnMobile("dungeon2", "exar_guard", 1800, 30.0415, 0.0481389, -48.8871, 126, 14200874)
		spawnMobile("dungeon2", "exar_guard", 1800, 43.9904, 0, -46.6325, 291, 14200874)
		spawnMobile("dungeon2", "exar_guard", 1800, 45.5865, 1.47995e-10, -40.3613, 124, 14200874)
		spawnMobile("dungeon2", "exar_guard", 1800, 59.0871, -9.14087e-09, -37.6087, 148, 14200874)
		spawnMobile("dungeon2", "exar_guard", 1800, 50.0483, 2.6886e-08, -23.9976, 199, 14200874)
		spawnMobile("dungeon2", "exar_guard", 1800, 56.222, 0, -8.93476, 101, 14200874)
		spawnMobile("dungeon2", "exar_guard", 1800, 40.8638, -0.282756, -3.30831, 81, 14200874)
		spawnMobile("dungeon2", "exar_guard", 1800, 31.8826, -2.0582e-08, 7.79434, 245, 14200875)
		spawnMobile("dungeon2", "exar_guard", 1800, 26.4994, 4.72207e-08, 18.5824, 110, 14200875)
		spawnMobile("dungeon2", "exar_guard", 1800, 22.2911, 1.48364e-08, 18.4854, 235, 14200875)
		spawnMobile("dungeon2", "exar_guard", 1800, 24.9813, 3.73068, 22.5541, 35, 14200875)
		spawnMobile("dungeon2", "exar_guard", 1800, 9.14445, 3.73361, 23.8163, 355, 14200875)
		spawnMobile("dungeon2", "exar_guard", 1800, -12.7134, 3.72579, 23.0671, 167, 14200875)
		spawnMobile("dungeon2", "exar_guard", 1800, -12.8111, 2.189e-07, 5.82071, 202, 14200875)
		spawnMobile("dungeon2", "exar_guard", 1800, -12.5628, -3.79284e-07, -0.265207, 314, 14200875)
		spawnMobile("dungeon2", "exar_guard", 1800, -11.7271, -1.81483e-08, -16.8616, 90, 14200875)
		spawnMobile("dungeon2", "exar_guard", 1800, -12.3114, 3.73461, -28.1851, 148, 14200875)
		spawnMobile("dungeon2", "exar_guard", 1800, -11.1999, 3.73439, -31.4396, 26, 14200875)
		spawnMobile("dungeon2", "exar_guard", 1800, 7.65783, 3.7337, -29.8118, 217, 14200875)
		spawnMobile("dungeon2", "exar_guard", 1800, 19.1414, 3.73361, -30.2423, 186, 14200875)
		spawnMobile("dungeon2", "exar_guard", 1800, 16.3503, 0.00143669, -25.4512, 174, 14200875)
		spawnMobile("dungeon2", "exar_guard", 1800, 18.9166, 0.00043262, -25.791, 158, 14200875)
		spawnMobile("dungeon2", "exar_guard", 1800, 30.2456, 0.00460108, -13.4478, 46, 14200875)
		spawnMobile("dungeon2", "exar_guard", 1800, 29.2896, 0.00112588, -9.60125, 110, 14200875)
		spawnMobile("dungeon2", "exar_guard", 1800, 31.7231, -2.67253e-08, -4.45347, 298, 14200875)
		spawnMobile("dungeon2", "exar_guard", 1800, -17.8128, 0.00329914, -24.9968, 87, 14200876)
		spawnMobile("dungeon2", "exar_guard", 1800, -26.3125, -0.366251, -24.0849, 53, 14200876)
		spawnMobile("dungeon2", "exar_guard", 1800, -31.8507, 0.0220552, 11.4749, 186, 14200876)
		spawnMobile("dungeon2", "exar_guard", 1800, -37.2831, -0.0164593, 12.1371, 192, 14200876)
		spawnMobile("dungeon2", "exar_guard", 1800, -17.8948, -7.716e-10, 34.8493, 52, 14200876)
		spawnMobile("dungeon2", "exar_guard", 1800, -21.529, -0.234192, 39.1009, 52, 14200876)
		spawnMobile("dungeon2", "exar_guard", 1800, 27.9179, -0.0967803, 66.9628, 214, 14200878)
		spawnMobile("dungeon2", "exar_guard", 1800, 42.7979, 9.68168e-09, 80.7347, 251, 14200878)
		spawnMobile("dungeon2", "exar_guard", 1800, 15.1374, -3.58883e-09, 85.2292, 184, 14200878)
		spawnMobile("dungeon2", "exar_guard", 1800, 1.52829, -0.0157904, 69.9522, 137, 14200878)
		spawnMobile("dungeon2", "exar_guard", 1800, -8.53399, -4.81847e-08, 80.7342, 98, 14200878)
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
	--player:broadcastToServer("\\#63C8F9 Exar Has Died!")
	--player:broadcastToServer("\\#63C8F9 Exar Will Respawn In 3 Hours")
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
		--player:broadcastToServer("\\#63C8F9 Exar Respawning In ..")
		player:broadcastToDiscord("Exar Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function exar_kunScreenplay:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		--player:broadcastToServer("\\#63C8F9 3")
		player:broadcastToDiscord("3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function exar_kunScreenplay:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		--player:broadcastToServer("\\#63C8F9 2")
		player:broadcastToDiscord("2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function exar_kunScreenplay:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		--player:broadcastToServer("\\#63C8F9 1")
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
