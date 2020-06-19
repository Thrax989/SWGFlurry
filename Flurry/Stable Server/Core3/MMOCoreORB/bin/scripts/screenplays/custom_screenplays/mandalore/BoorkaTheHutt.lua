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
BoorkaTheHuttScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "mandalore",
}
registerScreenPlay("BoorkaTheHuttScreenplay", true)
-----------------------------
--Start World Boss ScreenPlay
-----------------------------
function BoorkaTheHuttScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("Boorka The Hutt has Loaded")
	end
end
-----------------------
--The Boss Has Spawned
-----------------------
function BoorkaTheHuttScreenplay:spawnMobiles()
		local pBoss = spawnMobile("mandalore", "boorka_the_hutt", -1, -8.5, -23.0, 170.5, 25, 8565767)--Spawn World Boss
		local creature = CreatureObject(pBoss)
		print("Boorka The Hutt has Spawned")
		createObserver(OBJECTDESTRUCTION, "BoorkaTheHuttScreenplay", "bossDead", pBoss)--World Boss Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--The Boss Has Died Respawn WorldBoss With A New Dynamic Spawn
---------------------------------------------------------------
function BoorkaTheHuttScreenplay:bossDead(pBoss, pPlayer)
	local player = LuaCreatureObject(pPlayer)
	--player:broadcastToServer("\\#63C8F9 Boorka The Hutt Has Died!")
	--player:broadcastToServer("\\#63C8F9 Boorka The Hutt Will Respawn In 3 Hours")
	player:broadcastToDiscord("Boorka The Hutt Has Died!")
	player:broadcastToDiscord("Boorka The Hutt Will Respawn In 3 Hours")
	print("Boorka The Hutt Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "BoorkaTheHuttScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "BoorkaTheHuttScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(10797 * 1000, "BoorkaTheHuttScreenplay", "KillSpawnCast", pBoss, "")--Broadcast Respawn
	createEvent(10798 * 1000, "BoorkaTheHuttScreenplay", "KillSpawnCast1", pBoss, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "BoorkaTheHuttScreenplay", "KillSpawnCast2", pBoss, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "BoorkaTheHuttScreenplay", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn World Boss
-----------------------
function BoorkaTheHuttScreenplay:KillSpawn()
		local pBoss = spawnMobile("mandalore", "boorka_the_hutt", -1, -8.5, -23.0, 170.5, 25, 8565767)--Spawn WorldBoss After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("Boorka The Hutt has Spawned")
		createObserver(OBJECTDESTRUCTION, "BoorkaTheHuttScreenplay", "bossDead", pBoss)
end
-----------------------
--Broadcast Respawn
-----------------------
function BoorkaTheHuttScreenplay:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		--player:broadcastToServer("\\#63C8F9 Boorka The Hutt Respawning In ..")
		player:broadcastToDiscord("Boorka The Hutt Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function BoorkaTheHuttScreenplay:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		--player:broadcastToServer("\\#63C8F9 3")
		player:broadcastToDiscord("3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function BoorkaTheHuttScreenplay:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		--player:broadcastToServer("\\#63C8F9 2")
		player:broadcastToDiscord("2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function BoorkaTheHuttScreenplay:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		--player:broadcastToServer("\\#63C8F9 1")
		player:broadcastToDiscord("1")
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function BoorkaTheHuttScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted Boorka The Hutt Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
