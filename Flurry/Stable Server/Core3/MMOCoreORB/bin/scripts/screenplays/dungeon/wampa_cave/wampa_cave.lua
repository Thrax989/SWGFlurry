--/////////////////////////////////////////////////////////
--//		    Boss Spawn System					//
--//			Created By TOXIC:6/11/2020				//
--////////////////////////////////////////////////////////

--////////////////////////////////////////////////////////
--//		Current Boss Planet Dungeon2			//
--//		Current Boss Type NPC			//
--///////////////////////////////////////////////////////
wampa_caveScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "hoth",
}
registerScreenPlay("wampa_caveScreenplay", true)
-----------------------------
--Start WampaKing ScreenPlay
-----------------------------
function wampa_caveScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		print("WampaKing Loaded")
	end
end
--------------------------------------------------
--   Terminal
--------------------------------------------------
function wampa_cave:spawnSceneObjects()
--spawnSceneObject("hoth", "object/tangible/terminal/terminal_quad_screen.iff", -40.4491, 0.61331, 29.3437, 14200816, 1, 0, 0, 0)
end
-----------------------
--WampaKing Has Spawned
-----------------------
function wampa_caveScreenplay:spawnMobiles()
		local pBoss = spawnMobile("hoth", "wampa_boss", -1, 15.1374, -3.58883e-09, 85.2292, 184, 14200878)--Spawn WampaKing
		local creature = CreatureObject(pBoss)
		print("WampaKing Spawned")
		createObserver(OBJECTDESTRUCTION, "wampa_caveScreenplay", "bossDead", pBoss)--WampaKing Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--WampaKing Has Died Respawn WampaKing With A New Dynamic Spawn
---------------------------------------------------------------
function wampa_caveScreenplay:bossDead(pBoss, pPlayer)
	local player = LuaCreatureObject(pPlayer)
	player:broadcastToServer("\\#63C8F9 WampaKing Has Died!")
	player:broadcastToServer("\\#63C8F9 WampaKing Will Respawn In 3 Hours")
	player:broadcastToDiscord("WampaKing Has Died!")
	player:broadcastToDiscord("WampaKing Will Respawn In 3 Hours")
	print("WampaKing Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "wampa_caveScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "wampa_caveScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(10797 * 1000, "wampa_caveScreenplay", "KillSpawnCast", pBoss, "")--Broadcast Respawn
	createEvent(10798 * 1000, "wampa_caveScreenplay", "KillSpawnCast1", pBoss, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "wampa_caveScreenplay", "KillSpawnCast2", pBoss, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "wampa_caveScreenplay", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn WampaKing Boss
-----------------------
function wampa_caveScreenplay:KillSpawn()
		local pBoss = spawnMobile("hoth", "wampa_boss", -1, 15.1374, -3.58883e-09, 85.2292, 184, 14200878)--Spawn WampaKing After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("WampaKing Respawned")
		createObserver(OBJECTDESTRUCTION, "wampa_caveScreenplay", "bossDead", pBoss)
end
-----------------------
--Broadcast Respawn
-----------------------
function wampa_caveScreenplay:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 WampaKing Respawning In ..")
		player:broadcastToDiscord("WampaKing Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function wampa_caveScreenplay:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 3")
		player:broadcastToDiscord("3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function wampa_caveScreenplay:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 2")
		player:broadcastToDiscord("2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function wampa_caveScreenplay:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 1")
		player:broadcastToDiscord("1")
end
-----------------------------------------------------------------------------
--WampaKing Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function wampa_caveScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("WampaKing Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
