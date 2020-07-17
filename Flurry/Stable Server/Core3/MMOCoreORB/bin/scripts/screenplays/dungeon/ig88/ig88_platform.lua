--/////////////////////////////////////////////////////////
--//		    Boss Spawn System					//
--//			Created By TOXIC:6/11/2020				//
--////////////////////////////////////////////////////////

--////////////////////////////////////////////////////////
--//		Current Boss Planet Dungeon2			//
--//		Current Boss Type NPC			//
--///////////////////////////////////////////////////////
ig88_platformScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "dungeon2",
}
registerScreenPlay("ig88_platformScreenplay", true)
-----------------------------
--Start Ig88 ScreenPlay
-----------------------------
function ig88_platformScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("Ig88 Loaded")
	end
end
-----------------------
--Ig88 Has Spawned
-----------------------
function ig88_platformScreenplay:spawnMobiles()
		local pBoss = spawnMobile("dungeon2", "ig_88_boss", -1, -0.0831865, 0.031546, 10.1614, 6, 14200863)--Spawn Ig88
		local creature = CreatureObject(pBoss)
		print("Ig88 Spawned")
		createObserver(OBJECTDESTRUCTION, "ig88_platformScreenplay", "bossDead", pBoss)--Ig88 Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--Ig88 Has Died Respawn Ig88 With A New Dynamic Spawn
---------------------------------------------------------------
function ig88_platformScreenplay:bossDead(pBoss)
	print("Ig88 Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "ig88_platformScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(getRandomNumber(7200000) + 7200000, "ig88_platformScreenplay", "KillSpawn", pBoss, "")--Random Boss Respawn In 2-4 Hours
	return 0
end
-----------------------
--Respawn Ig88 Boss
-----------------------
function ig88_platformScreenplay:KillSpawn()
		local pBoss = spawnMobile("dungeon2", "ig_88_boss", -1, -0.0831865, 0.031546, 10.1614, 6, 14200863)--Spawn Ig88 After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("Ig88 Respawned")
		createObserver(OBJECTDESTRUCTION, "ig88_platformScreenplay", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--Ig88 Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function ig88_platformScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Ig88 Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
