--/////////////////////////////////////////////////////////
--//		  World Boss Dynamic Spawn System	 //
--//			Created By TOXIC:11/20/2019      //
--////////////////////////////////////////////////////////
--//		Change your world boss under WORLDBOSS	//
--//Spawn Points Will Determain The Boss Spawn location //
--////////////////////////////////////////////////////////
--//		Current World Boss Planet Dathomir		//
--//		Current World Boss Type CREATURE 	//
--///////////////////////////////////////////////////////
worldboss_fiveScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "dathomir",
}
registerScreenPlay("worldboss_fiveScreenplay", true)
-----------------------------
--Start World Boss ScreenPlay
-----------------------------
function worldboss_fiveScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("World Boss Five Loaded")
	end
end
-----------------------
--The Boss Has Spawned
-----------------------
function worldboss_fiveScreenplay:spawnMobiles()
		local pBoss = spawnMobile("dathomir", "worldboss_5", -1, -2095.27, 20.4676, 3134.11, 222, 0)--Spawn World Boss
		local creature = CreatureObject(pBoss)
		print("World Boss Five Spawned")
		createObserver(OBJECTDESTRUCTION, "worldboss_fiveScreenplay", "bossDead", pBoss)--World Boss Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--The Boss Has Died Respawn WorldBoss With A New Dynamic Spawn
---------------------------------------------------------------
function worldboss_fiveScreenplay:bossDead(pBoss, pPlayer)
	local player = LuaCreatureObject(pPlayer)
	player:broadcastToServer("\\#63C8F9 Dathomir World Boss Has Died!")
	player:broadcastToServer("\\#63C8F9 Dathomir World Boss Will Respawn In 3 Hours")
	player:broadcastToDiscord("Dathomir World Boss Has Died!")
	player:broadcastToDiscord("Dathomir World Boss Will Respawn In 3 Hours")
	print("World Boss Five Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "worldboss_fiveScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "worldboss_fiveScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(10797 * 1000, "worldboss_fiveScreenplay", "KillSpawnCast", pBoss, "")--Broadcast Respawn
	createEvent(10798 * 1000, "worldboss_fiveScreenplay", "KillSpawnCast1", pBoss, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "worldboss_fiveScreenplay", "KillSpawnCast2", pBoss, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "worldboss_fiveScreenplay", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn World Boss
-----------------------
function worldboss_fiveScreenplay:KillSpawn()
		local pBoss = spawnMobile("dathomir", "worldboss_5", -1, -2095.27, 20.4676, 3134.11, 222, 0)--Spawn WorldBoss After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("World Boss Spawned 5")
		createObserver(OBJECTDESTRUCTION, "worldboss_fiveScreenplay", "bossDead", pBoss)
end
-----------------------
--Broadcast Respawn
-----------------------
function worldboss_fiveScreenplay:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 Dathomir World Boss Respawning In ..")
		player:broadcastToDiscord("Dathomir World Boss Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function worldboss_fiveScreenplay:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 3")
		player:broadcastToDiscord("3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function worldboss_fiveScreenplay:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 2")
		player:broadcastToDiscord("2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function worldboss_fiveScreenplay:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 1")
		player:broadcastToDiscord("1")
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function worldboss_fiveScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted World Boss One Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
		SceneObject(pBoss):destroyObjectFromDatabase()
	end
	return 0
end
