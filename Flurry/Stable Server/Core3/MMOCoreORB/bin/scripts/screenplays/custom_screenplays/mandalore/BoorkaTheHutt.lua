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
BoorkaTheHuttScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "mandalore",
}
registerScreenPlay("BoorkaTheHuttScreenplay", true)
-----------------------------
--Start World Boss ScreenPlay
-----------------------------
function BoorkaTheHuttScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("Boorka The Hutt has Loaded")
	end
end
-----------------------
--The Boss Has Spawned
-----------------------
function BoorkaTheHuttScreenplay:spawnMobiles()
		local pBoss = spawnMobile("mandalore", "boorka_the_hutt", -1, -8.5, -23.0, 170.5, 25, 8565767)--Spawn World Boss
		local creature = CreatureObject(pBoss)
		print("Boorka The Hutt has Spawned")
		createObserver(OBJECTDESTRUCTION, "BoorkaTheHuttScreenplay", "bossDead", pBoss)--World Boss Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--The Boss Has Died Respawn WorldBoss With A New Dynamic Spawn
---------------------------------------------------------------
function BoorkaTheHuttScreenplay:bossDead(pBoss)
	print("Boorka The Hutt Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "BoorkaTheHuttScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "BoorkaTheHuttScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	return 0
end
-----------------------
--Respawn World Boss
-----------------------
function BoorkaTheHuttScreenplay:KillSpawn()
		local pBoss = spawnMobile("mandalore", "boorka_the_hutt", -1, -8.5, -23.0, 170.5, 25, 8565767)--Spawn WorldBoss After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("Boorka The Hutt has Spawned")
		createObserver(OBJECTDESTRUCTION, "BoorkaTheHuttScreenplay", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function BoorkaTheHuttScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted Boorka The Hutt Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
