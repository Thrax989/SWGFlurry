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
DarthCaedusScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "mandalore",
}
registerScreenPlay("DarthCaedusScreenplay", true)
-----------------------------
--Start World Boss ScreenPlay
-----------------------------
function DarthCaedusScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("Darth Caedus has Loaded")
	end
end
-----------------------
--The Boss Has Spawned
-----------------------
function DarthCaedusScreenplay:spawnMobiles()
		local pBoss = spawnMobile("mandalore", "darth_caedus", -1, -91.1, -100.7, -95.8, 170, 8566162)--Spawn World Boss
		local creature = CreatureObject(pBoss)
		print("Darth Caedus has Spawned")
		createObserver(OBJECTDESTRUCTION, "DarthCaedusScreenplay", "bossDead", pBoss)--World Boss Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--The Boss Has Died Respawn WorldBoss With A New Dynamic Spawn
---------------------------------------------------------------
function DarthCaedusScreenplay:bossDead(pBoss, pPlayer)
	local player = LuaCreatureObject(pPlayer)
	player:broadcastToServer("\\#63C8F9 Darth Caedus Has Died!")
	player:broadcastToServer("\\#63C8F9 Darth Caedus Will Respawn In 3 Hours")
	player:broadcastToDiscord("Darth Caedus Has Died!")
	player:broadcastToDiscord("Darth Caedus Will Respawn In 3 Hours")
	print("Darth Caedus Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "DarthCaedusScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "DarthCaedusScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(10797 * 1000, "DarthCaedusScreenplay", "KillSpawnCast", pBoss, "")--Broadcast Respawn
	createEvent(10798 * 1000, "DarthCaedusScreenplay", "KillSpawnCast1", pBoss, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "DarthCaedusScreenplay", "KillSpawnCast2", pBoss, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "DarthCaedusScreenplay", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn World Boss
-----------------------
function DarthCaedusScreenplay:KillSpawn()
		local pBoss = spawnMobile("mandalore", "darth_caedus", -1, -91.1, -100.7, -95.8, 170, 8566162)--Spawn WorldBoss After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("Darth Caedus has Spawned")
		createObserver(OBJECTDESTRUCTION, "DarthCaedusScreenplay", "bossDead", pBoss)
end
-----------------------
--Broadcast Respawn
-----------------------
function DarthCaedusScreenplay:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 Darth Caedus Respawning In ..")
		player:broadcastToDiscord("Darth Caedus Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function DarthCaedusScreenplay:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 3")
		player:broadcastToDiscord("3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function DarthCaedusScreenplay:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 2")
		player:broadcastToDiscord("2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function DarthCaedusScreenplay:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 1")
		player:broadcastToDiscord("1")
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function DarthCaedusScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted Darth Caedus Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
