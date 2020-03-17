--/////////////////////////////////////////////////////////
--//		  World Boss Spawn System					//
--//			Created By TOXIC:11/20/2019				//
--////////////////////////////////////////////////////////
--//		Change your world boss under WORLDBOSS		//
--//Spawn Points Will Determain The Boss Spawn location //
--////////////////////////////////////////////////////////
--//		Current World Boss Planet Tatooinw			//
--//		Current World Boss Type CREATURE			//
--///////////////////////////////////////////////////////
worldboss_oneScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "tatooine",
}
registerScreenPlay("worldboss_oneScreenplay", true)
-----------------------------
--Start World Boss ScreenPlay
-----------------------------
function worldboss_oneScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("World Boss One Loaded")
	end
end
-----------------------
--The Boss Has Spawned
-----------------------
function worldboss_oneScreenplay:spawnMobiles()
		local pBoss = spawnMobile("tatooine", "worldboss_1", -1, 6617.49, 21.3744, 4249.5, 326, 0)--Spawn World Boss
		local creature = CreatureObject(pBoss)
		print("World Boss One Spawned")
		createObserver(OBJECTDESTRUCTION, "worldboss_oneScreenplay", "bossDead", pBoss)--World Boss Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--The Boss Has Died Respawn WorldBoss With A New Dynamic Spawn
---------------------------------------------------------------
function worldboss_oneScreenplay:bossDead(pBoss, pPlayer)
	local player = LuaCreatureObject(pPlayer)
	player:broadcastToServer("\\#63C8F9 Tatooine World Boss Has Died!")
	player:broadcastToServer("\\#63C8F9 Tatooine World Boss Will Respawn In 3 Hours")
	print("World Boss One Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "worldboss_oneScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "worldboss_oneScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(10797 * 1000, "worldboss_oneScreenplay", "KillSpawnCast", pBoss, "")--Broadcast Respawn
	createEvent(10798 * 1000, "worldboss_oneScreenplay", "KillSpawnCast1", pBoss, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "worldboss_oneScreenplay", "KillSpawnCast2", pBoss, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "worldboss_oneScreenplay", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn World Boss
-----------------------
function worldboss_oneScreenplay:KillSpawn()
		local pBoss = spawnMobile("tatooine", "worldboss_1", -1, 6617.49, 21.3744, 4249.5, 326, 0)--Spawn WorldBoss After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("World Boss Spawned 1")
		createObserver(OBJECTDESTRUCTION, "worldboss_oneScreenplay", "bossDead", pBoss)
end
-----------------------
--Broadcast Respawn
-----------------------
function worldboss_oneScreenplay:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 Tatooine World Boss Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function worldboss_oneScreenplay:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function worldboss_oneScreenplay:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function worldboss_oneScreenplay:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 1")
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function worldboss_oneScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted World Boss One Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
		SceneObject(pBoss):destroyObjectFromDatabase()
	end
	return 0
end
