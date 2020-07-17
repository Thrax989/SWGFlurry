--/////////////////////////////////////////////////////////
--//		    Boss Spawn System					//
--//			Created By TOXIC:6/11/2020				//
--////////////////////////////////////////////////////////

--////////////////////////////////////////////////////////
--//		Current Boss Planet Dungeon2			//
--//		Current Boss Type NPC			//
--///////////////////////////////////////////////////////
worldboss_seven = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "corellia",
}
registerScreenPlay("worldboss_seven", true)
-----------------------------
--Start MeatLumpKing ScreenPlay
-----------------------------
function worldboss_seven:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("MeatLumpKing Loaded")
	end
end
-----------------------
--MeatLumpKing Has Spawned
-----------------------
function worldboss_seven:spawnMobiles()
		spawnMobile("corellia", "meatlump_guard", 10800, -2156, 26, -4365, 0, 0)
		spawnMobile("corellia", "meatlump_guard", 10800, -2155, 27, -4375, 0, 0)
		spawnMobile("corellia", "meatlump_guard", 10800, -2158, 26, -4370, 0, 0)
		spawnMobile("corellia", "meatlump_guard", 10800, -2149, 27, -4368, 0, 0)
		local pBoss = spawnMobile("corellia", "worldboss_7", -1, -2157, 26, -4369, 0, 0)--Spawn MeatLumpKing
		local creature = CreatureObject(pBoss)
		print("MeatLumpKing Spawned")
		createObserver(OBJECTDESTRUCTION, "worldboss_seven", "bossDead", pBoss)--MeatLumpKing Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--MeatLumpKing Has Died Respawn MeatLumpKing With A New Dynamic Spawn
---------------------------------------------------------------
function worldboss_seven:bossDead(pBoss)
	print("MeatLumpKing Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "worldboss_seven", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(getRandomNumber(7200000) + 7200000, "worldboss_seven", "KillSpawn", pBoss, "")--Random Boss Respawn In 2-4 Hours
	return 0
end
-----------------------
--Respawn MeatLumpKing Boss
-----------------------
function worldboss_seven:KillSpawn()
		local pBoss = spawnMobile("corellia", "worldboss_7", -1, -2157, 26, -4369, 0, 0)--Spawn MeatLumpKing After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("MeatLumpKing Respawned")
		createObserver(OBJECTDESTRUCTION, "worldboss_seven", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--MeatLumpKing Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function worldboss_seven:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("MeatLumpKing Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
