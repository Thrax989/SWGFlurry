--/////////////////////////////////////////////////////////
--//		    Boss Spawn System					//
--//			Created By TOXIC:6/11/2020				//
--////////////////////////////////////////////////////////

--////////////////////////////////////////////////////////
--//		Current Boss Planet Dungeon2			//
--//		Current Boss Type NPC			//
--///////////////////////////////////////////////////////
DarthCaedus = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "mandalore",
}
registerScreenPlay("DarthCaedus", true)
-----------------------------
--Start DarthCaedus ScreenPlay
-----------------------------
function DarthCaedus:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("DarthCaedus Loaded")
	end
end
-----------------------
--DarthCaedus Has Spawned
-----------------------
function DarthCaedus:spawnMobiles()
		local pBoss = spawnMobile("mandalore", "darth_caedus", -1, -91.1, -100.7, -95.8, 170, 8566162)--Spawn DarthCaedus
		local creature = CreatureObject(pBoss)
		print("DarthCaedus Spawned")
		createObserver(OBJECTDESTRUCTION, "DarthCaedus", "bossDead", pBoss)--DarthCaedus Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--DarthCaedus Has Died Respawn DarthCaedus With A New Dynamic Spawn
---------------------------------------------------------------
function DarthCaedus:bossDead(pBoss)
	print("DarthCaedus Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "DarthCaedus", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "DarthCaedus", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	return 0
end
-----------------------
--Respawn DarthCaedus Boss
-----------------------
function DarthCaedus:KillSpawn()
		local pBoss = spawnMobile("mandalore", "darth_caedus", -1, -91.1, -100.7, -95.8, 170, 8566162)--Spawn DarthCaedus After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("DarthCaedus Respawned")
		createObserver(OBJECTDESTRUCTION, "DarthCaedus", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--DarthCaedus Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function DarthCaedus:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("DarthCaedus Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
