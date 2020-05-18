--/////////////////////////////////////////////////////////
--//		  World Boss Spawn System					//
--//			Created By Sygnum 04/13/20				//
--////////////////////////////////////////////////////////
--//		Change your world boss under WORLDBOSS		//
--//Spawn Points Will Determain The Boss Spawn location //
--////////////////////////////////////////////////////////
--//		Current World Boss Planet Mandalore			//
--//		Current World Boss Type CREATURE			//
--///////////////////////////////////////////////////////
ToborroTheHuttScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "mandalore",
}
registerScreenPlay("ToborroTheHuttScreenplay", true)
-----------------------------
--Start World Boss ScreenPlay
-----------------------------
function ToborroTheHuttScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("Toborro The Hutt has Loaded")
	end
end
-----------------------
--The Boss Has Spawned
-----------------------
function ToborroTheHuttScreenplay:spawnMobiles()
		local pBoss = spawnMobile("mandalore", "toborro_the_hutt", -1, -23.7, -23.0, 138.7, -177, 8565767)--Spawn World Boss
		local creature = CreatureObject(pBoss)
		print("Toborro The Hutt has Spawned")
		createObserver(OBJECTDESTRUCTION, "ToborroTheHuttScreenplay", "bossDead", pBoss)--World Boss Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--The Boss Has Died Respawn WorldBoss With A New Dynamic Spawn
---------------------------------------------------------------
function ToborroTheHuttScreenplay:bossDead(pBoss, pPlayer)
	local player = LuaCreatureObject(pPlayer)
	player:broadcastToServer("\\#63C8F9 Toborro The Hutt Has Died!")
	player:broadcastToServer("\\#63C8F9 Toborro The Hutt Will Respawn In 3 Hours")
	player:broadcastToDiscord("Toborro The Hutt Has Died!")
	player:broadcastToDiscord("Toborro The Hutt Will Respawn In 3 Hours")
	print("Toborro The Hutt Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "ToborroTheHuttScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "ToborroTheHuttScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(10797 * 1000, "ToborroTheHuttScreenplay", "KillSpawnCast", pBoss, "")--Broadcast Respawn
	createEvent(10798 * 1000, "ToborroTheHuttScreenplay", "KillSpawnCast1", pBoss, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "ToborroTheHuttScreenplay", "KillSpawnCast2", pBoss, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "ToborroTheHuttScreenplay", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn World Boss
-----------------------
function ToborroTheHuttScreenplay:KillSpawn()
		local pBoss = spawnMobile("mandalore", "toborro_the_hutt", -1, -23.7, -23.0, 138.7, -177, 8565767)--Spawn WorldBoss After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("Toborro The Hutt has Spawned")
		createObserver(OBJECTDESTRUCTION, "ToborroTheHuttScreenplay", "bossDead", pBoss)
end
-----------------------
--Broadcast Respawn
-----------------------
function ToborroTheHuttScreenplay:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 Toborro The Hutt Respawning In ..")
		player:broadcastToDiscord("Toborro The Hutt Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function ToborroTheHuttScreenplay:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 3")
		player:broadcastToDiscord("3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function ToborroTheHuttScreenplay:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 2")
		player:broadcastToDiscord("2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function ToborroTheHuttScreenplay:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 1")
		player:broadcastToDiscord("1")
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function ToborroTheHuttScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted Toborro The Hutt Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
		SceneObject(pBoss):destroyObjectFromDatabase()
	end
	return 0
end
