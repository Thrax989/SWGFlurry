--/////////////////////////////////////////////////////////
--//		    Boss Spawn System					//
--//			Created By TOXIC:6/11/2020				//
--////////////////////////////////////////////////////////

--////////////////////////////////////////////////////////
--//		Current Boss Planet Dungeon2			//
--//		Current Boss Type NPC			//
--///////////////////////////////////////////////////////
DarthCaedus = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "mandalore",
}
registerScreenPlay("DarthCaedus", true)
-----------------------------
--Start DarthCaedus ScreenPlay
-----------------------------
function DarthCaedus:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("DarthCaedus Loaded")
	end
end
-----------------------
--DarthCaedus Has Spawned
-----------------------
function DarthCaedus:spawnMobiles()
		local pBoss = spawnMobile("mandalore", "darth_caedus", -1, -91.1, -100.7, -95.8, 170, 8566162)--Spawn DarthCaedus
		local creature = CreatureObject(pBoss)
		print("DarthCaedus Spawned")
		createObserver(OBJECTDESTRUCTION, "DarthCaedus", "bossDead", pBoss)--DarthCaedus Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--DarthCaedus Has Died Respawn DarthCaedus With A New Dynamic Spawn
---------------------------------------------------------------
function DarthCaedus:bossDead(pBoss, pPlayer)
	local player = LuaCreatureObject(pPlayer)
	player:broadcastToServer("\\#63C8F9 DarthCaedus Has Died!")
	player:broadcastToServer("\\#63C8F9 DarthCaedus Will Respawn In 3 Hours")
	player:broadcastToDiscord("DarthCaedus Has Died!")
	player:broadcastToDiscord("DarthCaedus Will Respawn In 3 Hours")
	print("DarthCaedus Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "DarthCaedus", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "DarthCaedus", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(10797 * 1000, "DarthCaedus", "KillSpawnCast", pBoss, "")--Broadcast Respawn
	createEvent(10798 * 1000, "DarthCaedus", "KillSpawnCast1", pBoss, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "DarthCaedus", "KillSpawnCast2", pBoss, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "DarthCaedus", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn DarthCaedus Boss
-----------------------
function DarthCaedus:KillSpawn()
		local pBoss = spawnMobile("mandalore", "darth_caedus", -1, -91.1, -100.7, -95.8, 170, 8566162)--Spawn DarthCaedus After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("DarthCaedus Respawned")
		createObserver(OBJECTDESTRUCTION, "DarthCaedus", "bossDead", pBoss)
end
-----------------------
--Broadcast Respawn
-----------------------
function DarthCaedus:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 DarthCaedus Respawning In ..")
		player:broadcastToDiscord("DarthCaedus Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function DarthCaedus:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 3")
		player:broadcastToDiscord("3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function DarthCaedus:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 2")
		player:broadcastToDiscord("2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function DarthCaedus:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 1")
		player:broadcastToDiscord("1")
end
-----------------------------------------------------------------------------
--DarthCaedus Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function DarthCaedus:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("DarthCaedus Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
