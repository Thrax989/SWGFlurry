--/////////////////////////////////////////////////////////
--//		    Boss Spawn System					//
--//			Created By TOXIC:6/11/2020				//
--////////////////////////////////////////////////////////

--////////////////////////////////////////////////////////
--//		Current Boss Planet Dungeon2			//
--//		Current Boss Type NPC			//
--///////////////////////////////////////////////////////
nightsister_templeScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "dungeon2",
}
registerScreenPlay("nightsister_templeScreenplay", true)
-----------------------------
--Start NightsisterQueen ScreenPlay
-----------------------------
function nightsister_templeScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		print("NightsisterQueen Loaded")
	end
end
--------------------------------------------------
--   Terminal
--------------------------------------------------
function nightsister_templeScreenplay:spawnSceneObjects()
spawnSceneObject("dantooine", "object/tangible/terminal/terminal_quad_screen.iff", -40.4491, 0.61331, 29.3437, 14200816, 1, 0, 0, 0)
end
-----------------------
--NightsisterQueen Has Spawned
-----------------------
function nightsister_templeScreenplay:spawnMobiles()
		local pBoss = spawnMobile("dungeon2", "nightsisterqueenboss", -1, -79.1685, 17.8173, 23.93, 100, 14201105)--Spawn NightsisterQueen
		local creature = CreatureObject(pBoss)
		print("NightsisterQueen Spawned")
		createObserver(OBJECTDESTRUCTION, "nightsister_templeScreenplay", "bossDead", pBoss)--NightsisterQueen Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--NightsisterQueen Has Died Respawn NightsisterQueen With A New Dynamic Spawn
---------------------------------------------------------------
function nightsister_templeScreenplay:bossDead(pBoss)
	print("NightsisterQueen Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "nightsister_templeScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(getRandomNumber(7200000) + 7200000, "nightsister_templeScreenplay", "KillSpawn", pBoss, "")--Random Boss Respawn In 2-4 Hours
	return 0
end
-----------------------
--Respawn NightsisterQueen Boss
-----------------------
function nightsister_templeScreenplay:KillSpawn()
		local pBoss = spawnMobile("dungeon2", "nightsisterqueenboss", -1, -79.1685, 17.8173, 23.93, 100, 14201105)--Spawn NightsisterQueen After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("NightsisterQueen Respawned")
		createObserver(OBJECTDESTRUCTION, "nightsister_templeScreenplay", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--NightsisterQueen Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function nightsister_templeScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("NightsisterQueen Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
