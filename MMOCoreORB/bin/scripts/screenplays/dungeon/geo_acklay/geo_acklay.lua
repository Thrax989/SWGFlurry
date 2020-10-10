--/////////////////////////////////////////////////////////
--//		    Boss Spawn System					//
--//			Created By TOXIC:6/11/2020				//
--////////////////////////////////////////////////////////

--////////////////////////////////////////////////////////
--//		Current Boss Planet Dungeon2			//
--//		Current Boss Type NPC			//
--///////////////////////////////////////////////////////
geo_acklayScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "yavin4",
}
registerScreenPlay("geo_acklayScreenplay", true)
-----------------------------
--Start GeoAcklay ScreenPlay
-----------------------------
function geo_acklayScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("GeoAcklay Loaded")
	end
end
-----------------------
--GeoAcklay Has Spawned
-----------------------
function geo_acklayScreenplay:spawnMobiles()
		local pBoss = spawnMobile("yavin4", "acklay", -1,101.1,-34.3,-321.6,-136,1627823)--Spawn GeoAcklay
		local creature = CreatureObject(pBoss)
		print("GeoAcklay Spawned")
		createObserver(OBJECTDESTRUCTION, "geo_acklayScreenplay", "bossDead", pBoss)--GeoAcklay Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--GeoAcklay Has Died Respawn GeoAcklay With A New Dynamic Spawn
---------------------------------------------------------------
function geo_acklayScreenplay:bossDead(pBoss)
	print("GeoAcklay Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "geo_acklayScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "geo_acklayScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(1 * 1000, "geo_acklayScreenplay", "BroadcastDead", pBoss, "")--Broadcast Dead
	createEvent(10800 * 1000, "geo_acklayScreenplay", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn GeoAcklay Boss
-----------------------
function geo_acklayScreenplay:KillSpawn()
		local pBoss = spawnMobile("yavin4", "acklay", -1,101.1,-34.3,-321.6,-136,1627823)--Spawn GeoAcklay After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("GeoAcklay Respawned")
		createObserver(OBJECTDESTRUCTION, "geo_acklayScreenplay", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--GeoAcklay Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function geo_acklayScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("GeoAcklay Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end

----------------------------
--Broadcast Dead
----------------------------
function geo_acklayScreenplay:BroadcastDead(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 Acklay Boss Has Died.")
		CreatureObject(bossObject):broadcastToDiscord("Acklay Boss Has Died.")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function geo_acklayScreenplay:KillSpawnCast3(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 Acklay Boss Respawning.")
		CreatureObject(bossObject):broadcastToDiscord("Acklay Boss Respawning.")
end
