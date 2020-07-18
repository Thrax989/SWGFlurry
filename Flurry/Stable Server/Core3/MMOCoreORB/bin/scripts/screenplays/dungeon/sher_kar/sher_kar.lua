--/////////////////////////////////////////////////////////
--//		    Boss Spawn System					//
--//			Created By TOXIC:6/11/2020				//
--////////////////////////////////////////////////////////

--////////////////////////////////////////////////////////
--//		Current Boss Planet Dungeon2			//
--//		Current Boss Type NPC			//
--///////////////////////////////////////////////////////
sher_karScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "mustafar",
}
registerScreenPlay("sher_karScreenplay", true)
-----------------------------
--Start SherKar ScreenPlay
-----------------------------
function sher_karScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("SherKar Loaded")
	end
end
-----------------------
--SherKar Has Spawned
-----------------------
function sher_karScreenplay:spawnMobiles()
		local pBoss = spawnMobile("mustafar", "sherkar", -1, -79.9848, -20.4863, -121.67, 277, 12116005)--Spawn SherKar
		local creature = CreatureObject(pBoss)
		print("SherKar Spawned")
		createObserver(OBJECTDESTRUCTION, "sher_karScreenplay", "bossDead", pBoss)--SherKar Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--SherKar Has Died Respawn SherKar With A New Dynamic Spawn
---------------------------------------------------------------
function sher_karScreenplay:bossDead(pBoss)
	print("SherKar Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "sher_karScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "sher_karScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	return 0
end
-----------------------
--Respawn SherKar Boss
-----------------------
function sher_karScreenplay:KillSpawn()
		local pBoss = spawnMobile("mustafar", "sherkar", -1, -79.9848, -20.4863, -121.67, 277, 12116005)--Spawn SherKar After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("SherKar Respawned")
		createObserver(OBJECTDESTRUCTION, "sher_karScreenplay", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--SherKar Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function sher_karScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("SherKar Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
