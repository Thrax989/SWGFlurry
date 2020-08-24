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
SC87Screenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "mandalore",
}
registerScreenPlay("SC87Screenplay", true)
-----------------------------
--Start World Boss ScreenPlay
-----------------------------
function SC87Screenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("SC87 has Loaded")
	end
end
-----------------------
--The Boss Has Spawned
-----------------------
function SC87Screenplay:spawnMobiles()
		local pBoss = spawnMobile("mandalore", "shadow_collective_sc87", -1, 190.1, -66.5, -102.8, -83, 8566289)--Spawn World Boss
		local creature = CreatureObject(pBoss)
		print("SC87 has Spawned")
		createObserver(OBJECTDESTRUCTION, "SC87Screenplay", "bossDead", pBoss)--World Boss Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--The Boss Has Died Respawn WorldBoss With A New Dynamic Spawn
---------------------------------------------------------------
function SC87Screenplay:bossDead(pBoss)
	print("SC87 Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "SC87Screenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "SC87Screenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	return 0
end
-----------------------
--Respawn World Boss
-----------------------
function SC87Screenplay:KillSpawn()
		local pBoss = spawnMobile("mandalore", "shadow_collective_sc87", -1, 190.1, -66.5, -102.8, -83, 8566289)--Spawn WorldBoss After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("SC87 has Spawned")
		createObserver(OBJECTDESTRUCTION, "SC87Screenplay", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function SC87Screenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted SC87 Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
