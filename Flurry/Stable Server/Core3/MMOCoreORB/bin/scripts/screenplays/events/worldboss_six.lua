--/////////////////////////////////////////////////////////
--//		  World Boss Dynamic Spawn System	 //
--//			Created By TOXIC:11/20/2019      //
--////////////////////////////////////////////////////////
--//		Change your world boss under WORLDBOSS	//
--//Spawn Points Will Determain The Boss Spawn location //
--////////////////////////////////////////////////////////
--//		Current World Boss Planet naboo		//
--//		Current World Boss Type CREATURE 	//
--///////////////////////////////////////////////////////
worldboss_sixScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "lok",
}
registerScreenPlay("worldboss_sixScreenplay", true)
-----------------------------
--Start World Boss ScreenPlay
-----------------------------
function worldboss_sixScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("World Boss Six Loaded")
	end
end
-----------------------
--The Boss Has Spawned
-----------------------
function worldboss_sixScreenplay:spawnMobiles()
		local pBoss = spawnMobile("lok", "worldboss_6", -1, 3324, 0, 1727, 196, 0)--Spawn World Boss
		local creature = CreatureObject(pBoss)
		print("World Boss Six Spawned")
		createObserver(OBJECTDESTRUCTION, "worldboss_sixScreenplay", "bossDead", pBoss)--World Boss Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--The Boss Has Died Respawn WorldBoss With A New Dynamic Spawn
---------------------------------------------------------------
function worldboss_sixScreenplay:bossDead(pBoss, pPlayer)
	local player = LuaCreatureObject(pPlayer)
	player:broadcastToServer("\\#63C8F9 Lok World Boss Has Died!")
	player:broadcastToServer("\\#63C8F9 Lok World Boss Will Respawn In 3 Hours")
	player:broadcastToDiscord("Lok World Boss Has Died!")
	player:broadcastToDiscord("Lok World Boss Will Respawn In 3 Hours")
	print("World Boss Six Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "worldboss_sixScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "worldboss_sixScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(10797 * 1000, "worldboss_sixScreenplay", "KillSpawnCast", pBoss, "")--Broadcast Respawn
	createEvent(10798 * 1000, "worldboss_sixScreenplay", "KillSpawnCast1", pBoss, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "worldboss_sixScreenplay", "KillSpawnCast2", pBoss, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "worldboss_sixScreenplay", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn World Boss
-----------------------
function worldboss_sixScreenplay:KillSpawn()
		local pBoss = spawnMobile("lok", "worldboss_6", -1, 3324, 0, 1727, 196, 0)--Spawn WorldBoss After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("World Boss Spawned 6")
		createObserver(OBJECTDESTRUCTION, "worldboss_sixScreenplay", "bossDead", pBoss)
end
-----------------------
--Broadcast Respawn
-----------------------
function worldboss_sixScreenplay:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 Lok World Boss Respawning In ..")
		player:broadcastToDiscord("Lok World Boss Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function worldboss_sixScreenplay:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 3")
		player:broadcastToDiscord("3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function worldboss_sixScreenplay:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 2")
		player:broadcastToDiscord("2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function worldboss_sixScreenplay:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 1")
		player:broadcastToDiscord("1")
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function worldboss_sixScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted World Boss Six Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
		SceneObject(pBoss):destroyObjectFromDatabase()
	end
	return 0
end
