--/////////////////////////////////////////////////////////
--//		    Boss Spawn System					//
--//			Created By TOXIC:6/11/2020				//
--////////////////////////////////////////////////////////

--////////////////////////////////////////////////////////
--//		Current Boss Planet Dungeon2			//
--//		Current Boss Type NPC			//
--///////////////////////////////////////////////////////
geo_acklaybossScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "yavin4",
}
registerScreenPlay("geo_acklaybossScreenplay", true)
-----------------------------
--Start GeoAcklayBoss ScreenPlay
-----------------------------
function geo_acklaybossScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("GeoAcklayBoss Loaded")
	end
end
-----------------------
--GeoAcklayBoss Has Spawned
-----------------------
function geo_acklaybossScreenplay:spawnMobiles()
		local pBoss = spawnMobile("yavin4", "acklayboss", -1,-139.8,-34,-194.3,57,1627815)--Spawn GeoAcklayBoss
		local creature = CreatureObject(pBoss)
		print("GeoAcklayBoss Spawned")
		createObserver(OBJECTDESTRUCTION, "geo_acklaybossScreenplay", "bossDead", pBoss)--GeoAcklayBoss Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--GeoAcklayBoss Has Died Respawn GeoAcklayBoss With A New Dynamic Spawn
---------------------------------------------------------------
function geo_acklaybossScreenplay:bossDead(pBoss)
	print("GeoAcklayBoss Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "geo_acklaybossScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(getRandomNumber(7200000) + 7200000, "geo_acklaybossScreenplay", "KillSpawn", pBoss, "")---Random Boss Respawn In 2-4 Hours
	return 0
end
-----------------------
--Respawn GeoAcklayBoss Boss
-----------------------
function geo_acklaybossScreenplay:KillSpawn()
		local pBoss = spawnMobile("yavin4", "acklayboss", -1,-139.8,-34,-194.3,57,1627815)--Spawn GeoAcklayBoss After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("GeoAcklayBoss Respawned")
		createObserver(OBJECTDESTRUCTION, "geo_acklaybossScreenplay", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--GeoAcklayBoss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function geo_acklaybossScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("GeoAcklayBoss Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
