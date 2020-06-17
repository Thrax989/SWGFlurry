--/////////////////////////////////////////////////////////
--//		    Boss Spawn System					//
--//			Created By TOXIC:6/11/2020				//
--////////////////////////////////////////////////////////

--////////////////////////////////////////////////////////
--//		Current Boss Planet Dungeon2			//
--//		Current Boss Type NPC			//
--///////////////////////////////////////////////////////
worldboss_seven = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "corellia",
}
registerScreenPlay("worldboss_seven", true)
-----------------------------
--Start MeatLumpKing ScreenPlay
-----------------------------
function worldboss_seven:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("MeatLumpKing Loaded")
	end
end
-----------------------
--MeatLumpKing Has Spawned
-----------------------
function worldboss_seven:spawnMobiles()
		spawnMobile("corellia", "meatlump_guard", 10800, -2156, 26, -4365, 0, 0)
		spawnMobile("corellia", "meatlump_guard", 10800, -2155, 27, -4375, 0, 0)
		spawnMobile("corellia", "meatlump_guard", 10800, -2158, 26, -4370, 0, 0)
		spawnMobile("corellia", "meatlump_guard", 10800, -2149, 27, -4368, 0, 0)
		local pBoss = spawnMobile("corellia", "worldboss_7", -1, -2157, 26, -4369, 0, 0)--Spawn MeatLumpKing
		local creature = CreatureObject(pBoss)
		print("MeatLumpKing Spawned")
		createObserver(OBJECTDESTRUCTION, "worldboss_seven", "bossDead", pBoss)--MeatLumpKing Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--MeatLumpKing Has Died Respawn MeatLumpKing With A New Dynamic Spawn
---------------------------------------------------------------
function worldboss_seven:bossDead(pBoss, pPlayer)
	local player = LuaCreatureObject(pPlayer)
	player:broadcastToServer("\\#63C8F9 MeatLumpKing Has Died!")
	player:broadcastToServer("\\#63C8F9 MeatLumpKing Will Respawn In 3 Hours")
	player:broadcastToDiscord("MeatLumpKing Has Died!")
	player:broadcastToDiscord("MeatLumpKing Will Respawn In 3 Hours")
	print("MeatLumpKing Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "worldboss_seven", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "worldboss_seven", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(10797 * 1000, "worldboss_seven", "KillSpawnCast", pBoss, "")--Broadcast Respawn
	createEvent(10798 * 1000, "worldboss_seven", "KillSpawnCast1", pBoss, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "worldboss_seven", "KillSpawnCast2", pBoss, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "worldboss_seven", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn MeatLumpKing Boss
-----------------------
function worldboss_seven:KillSpawn()
		local pBoss = spawnMobile("corellia", "worldboss_7", -1, -2157, 26, -4369, 0, 0)--Spawn MeatLumpKing After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("MeatLumpKing Respawned")
		createObserver(OBJECTDESTRUCTION, "worldboss_seven", "bossDead", pBoss)
end
-----------------------
--Broadcast Respawn
-----------------------
function worldboss_seven:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 MeatLumpKing Respawning In ..")
		player:broadcastToDiscord("MeatLumpKing Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function worldboss_seven:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 3")
		player:broadcastToDiscord("3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function worldboss_seven:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 2")
		player:broadcastToDiscord("2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function worldboss_seven:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 1")
		player:broadcastToDiscord("1")
end
-----------------------------------------------------------------------------
--MeatLumpKing Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function worldboss_seven:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("MeatLumpKing Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
