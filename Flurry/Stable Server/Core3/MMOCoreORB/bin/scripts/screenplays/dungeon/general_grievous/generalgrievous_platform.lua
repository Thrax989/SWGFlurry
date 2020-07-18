--/////////////////////////////////////////////////////////
--//		    Boss Spawn System					//
--//			Created By TOXIC:6/11/2020				//
--////////////////////////////////////////////////////////

--////////////////////////////////////////////////////////
--//		Current Boss Planet Dungeon2			//
--//		Current Boss Type NPC			//
--///////////////////////////////////////////////////////
generalgrievous_platformScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "kashyyyk",
}
registerScreenPlay("generalgrievous_platformScreenplay", true)
-----------------------------
--Start NKNecrosis ScreenPlay
-----------------------------
function generalgrievous_platformScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("NKNecrosis Loaded")
	end
end
-----------------------
--NKNecrosis Has Spawned
-----------------------
function generalgrievous_platformScreenplay:spawnMobiles()
		local pBoss = spawnMobile("kashyyyk", "general_grievous", -1, -1935.09, 111.439, 1910.85, 307, 0)--Spawn NKNecrosis
		local creature = CreatureObject(pBoss)
		print("NKNecrosis Spawned")
		createObserver(OBJECTDESTRUCTION, "generalgrievous_platformScreenplay", "bossDead", pBoss)--NKNecrosis Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--generalgrievous Has Died Respawn generalgrievous With A New Dynamic Spawn
---------------------------------------------------------------
function generalgrievous_platformScreenplay:bossDead(pBoss)
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "generalgrievous_platformScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "generalgrievous_platformScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	return 0
end
-----------------------
--Respawn generalgrievous Boss
-----------------------
function generalgrievous_platformScreenplay:KillSpawn()
		local pBoss = spawnMobilespawnMobile("kashyyyk", "general_grievous", -1, -1935.09, 111.439, 1910.85, 307, 0)--Spawn NKNecrosis After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("NKNecrosis Respawned")
		createObserver(OBJECTDESTRUCTION, "generalgrievous_platformScreenplay", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--NKNecrosis Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function generalgrievous_platformScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("NKNecrosis Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
