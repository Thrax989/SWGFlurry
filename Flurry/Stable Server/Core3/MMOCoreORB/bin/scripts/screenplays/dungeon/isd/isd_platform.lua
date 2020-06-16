--/////////////////////////////////////////////////////////
--//		    Boss Spawn System					//
--//			Created By TOXIC:6/11/2020				//
--////////////////////////////////////////////////////////

--////////////////////////////////////////////////////////
--//		Current Boss Planet Dungeon2			//
--//		Current Boss Type NPC			//
--///////////////////////////////////////////////////////
isd_platformScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "dungeon2",
}
registerScreenPlay("isd_platformScreenplay", true)
-----------------------------
--Start Thrawn ScreenPlay
-----------------------------
function isd_platformScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		print("Thrawn Loaded")
	end
end
--------------------------------------------------
--   spawn elevator pads for dungeon
--------------------------------------------------
function isd_platformScreenplay:spawnSceneObjects()
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_up.iff", 20.058, 170.585, 430.548, 14201210, 0, 0, -1, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_down.iff", 19.8045, 453.359, 430.494, 14201210, 0, 0, -1, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_up.iff", -54, 173.835, 20.3058, 14201200, -0.707107, 0, -0.707107, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_down.iff", -53.0554, 181.335, 20.3764, 14201200, -0.707107, 0, -0.707107, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_up.iff", 54, 173.835, 20.0022, 14201199, 0.707107, 0, -0.707107, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_elevator_down.iff", 54, 181.335, 20.3601, 14201199, 0.707107, 0, -0.707107, 0)
spawnSceneObject("dungeon2", "object/tangible/terminal/terminal_quad_screen.iff", -38.3662, 173.835, 67.0904, 14201198, 1, 0, 0, 0)
end
--------------------------------------------------
--   spawn mobiles for dungeon
--------------------------------------------------
-----------------------
--Thrawn Has Spawned
-----------------------
function isd_platformScreenplay:spawnMobiles()
--Main Spawn Room
spawnMobile("dungeon2", "isd_stormtrooper", 300, 34.452, 173.835, 36.0281, 265, 14201198)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 34.4445, 173.835, 27.0723, 272, 14201198)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 30.0845, 173.835, 9.40103, 299, 14201198)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 23.9617, 173.835, 3.32356, 17, 14201198)
spawnMobile("dungeon2", "isd_stormtrooper", 300, -0.0402867, 173.835, 0.294756, 73, 14201198)
spawnMobile("dungeon2", "isd_stormtrooper", 300, -23.5692, 173.835, 2.95916, 90, 14201198)
spawnMobile("dungeon2", "isd_stormtrooper", 300, -29.9028, 173.835, 9.24134, 110, 14201198)
spawnMobile("dungeon2", "isd_stormtrooper", 300, -34.4891, 173.835, 27.1564, 121, 14201198)
spawnMobile("dungeon2", "isd_stormtrooper", 300, -34.4541, 173.835, 36.1355, 136, 14201198)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 6.8299, 177.335, -57.0574, 325, 14201193)
spawnMobile("dungeon2", "isd_stormtrooper", 300, -6.83028, 177.335, -56.4635, 326, 14201193)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 8.93966, 175.335, -31.7196, 358, 14201191)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 69.1725, 173.835, 25.9111, 349, 14201187)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 64.5691, 173.835, 25.8934, 30, 14201187)
spawnMobile("dungeon2", "isd_stormtrooper", 300, -69.0112, 173.835, 34.0492, 151, 14201197)
spawnMobile("dungeon2", "isd_stormtrooper", 300, -15.2133, 175.335, -24.3627, 90, 14201194)
spawnMobile("dungeon2", "isd_stormtrooper", 300, -9.90025, 175.335, -31.5628, 76, 14201195)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 0.0159999, 175.335, -13.1841, 181, 14201192)

--Mini Boss Room
spawnMobile("dungeon2", "isd_stormtrooper", 300, -0.0410455, 177.335, -58.3967, 355, 14201193)--Save For Mini Boss

--Entrance to creature mutation room
spawnMobile("dungeon2", "isd_stormtrooper", 300, 59.344, 173.835, 70.5219, 121, 14201188)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 59.4756, 173.835, 73.7074, 89, 14201188)


--entrance to boss mutation room
spawnMobile("dungeon2", "isd_stormtrooper", 300, 81.8535, 173.835, 69.755, 358, 14201177)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 78.1821, 173.835, 69.906, 358, 14201177)
--boss in for mutation room
spawnMobile("dungeon2", "isd_stormtrooper", 300, 80.178, 173.835, 63.479, 352, 14201181)


--mutation room 1
spawnMobile("dungeon2", "isd_stormtrooper", 300, 89.7521, 173.835, 94.8365, 265, 14201180)
--mutation room2
spawnMobile("dungeon2", "isd_stormtrooper", 300, 89.4285, 173.835, 114.51, 268, 14201179)
--mutation room 3
spawnMobile("dungeon2", "isd_stormtrooper", 300, 79.897, 173.835, 146.539, 179, 14201178)
--mutation room 4
spawnMobile("dungeon2", "isd_stormtrooper", 300, 57.7598, 173.835, 100.133, 128, 14201184)
--guards for muation room 4
spawnMobile("dungeon2", "isd_stormtrooper", 300, 65.8852, 173.835, 83.8533, 265, 14201185)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 65.7755, 173.835, 81.6075, 268, 14201185)

--exit mutation room 4 guards
spawnMobile("dungeon2", "isd_stormtrooper", 300, 69.5949, 173.835, 116.89, 267, 14201183)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 54.0397, 173.835, 113.848, 354, 14201183)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 51.8217, 173.835, 113.764, 354, 14201183)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 50.3441, 173.835, 115.545, 88, 14201183)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 50.5408, 173.835, 117.646, 80, 14201183)


--middle entance hallway gaurds
spawnMobile("dungeon2", "isd_stormtrooper", 300, 62.7065, 173.835, 168.518, 162, 14201175)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 67.3617, 173.835, 168.516, 186, 14201175)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 64.8666, 173.835, 133.389, 359, 14201175)
spawnMobile("dungeon2", "isd_stormtrooper", 300, 52.9773, 173.835, 138.086, 157, 14201182)
		local pBoss = spawnMobile("dungeon2", "isd_thrawn", -1, 0.0534111, 173.835, 9.2723, 357, 14201198)--Spawn Thrawn
		local creature = CreatureObject(pBoss)
		print("Thrawn Spawned")
		createObserver(OBJECTDESTRUCTION, "isd_platformScreenplay", "bossDead", pBoss)--Thrawn Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--Thrawn Has Died Respawn Thrawn With A New Dynamic Spawn
---------------------------------------------------------------
function isd_platformScreenplay:bossDead(pBoss, pPlayer)
	local player = LuaCreatureObject(pPlayer)
	player:broadcastToServer("\\#63C8F9 Thrawn Has Died!")
	player:broadcastToServer("\\#63C8F9 Thrawn Will Respawn In 3 Hours")
	player:broadcastToDiscord("Thrawn Has Died!")
	player:broadcastToDiscord("Thrawn Will Respawn In 3 Hours")
	print("Thrawn Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "isd_platformScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "isd_platformScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(10797 * 1000, "isd_platformScreenplay", "KillSpawnCast", pBoss, "")--Broadcast Respawn
	createEvent(10798 * 1000, "isd_platformScreenplay", "KillSpawnCast1", pBoss, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "isd_platformScreenplay", "KillSpawnCast2", pBoss, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "isd_platformScreenplay", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn Thrawn Boss
-----------------------
function isd_platformScreenplay:KillSpawn()
		local pBoss = spawnMobile("dungeon2", "isd_thrawn", -1, 0.0534111, 173.835, 9.2723, 357, 14201198)--Spawn Thrawn After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("Thrawn Respawned")
		createObserver(OBJECTDESTRUCTION, "isd_platformScreenplay", "bossDead", pBoss)
end
-----------------------
--Broadcast Respawn
-----------------------
function isd_platformScreenplay:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 Thrawn Respawning In ..")
		player:broadcastToDiscord("Thrawn Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function isd_platformScreenplay:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 3")
		player:broadcastToDiscord("3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function isd_platformScreenplay:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 2")
		player:broadcastToDiscord("2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function isd_platformScreenplay:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 1")
		player:broadcastToDiscord("1")
end
-----------------------------------------------------------------------------
--Thrawn Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function isd_platformScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Thrawn Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
