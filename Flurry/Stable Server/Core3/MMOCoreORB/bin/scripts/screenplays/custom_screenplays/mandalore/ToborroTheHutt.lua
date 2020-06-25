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
ToborroTheHuttScreenplay = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "mandalore",
}
registerScreenPlay("ToborroTheHuttScreenplay", true)
-----------------------------
--Start World Boss ScreenPlay
-----------------------------
function ToborroTheHuttScreenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("Toborro The Hutt has Loaded")
	end
end
-----------------------
--The Boss Has Spawned
-----------------------
function ToborroTheHuttScreenplay:spawnMobiles()
		local pBoss = spawnMobile("mandalore", "toborro_the_hutt", -1, -23.7, -23.0, 138.7, -177, 8565767)--Spawn World Boss
		local creature = CreatureObject(pBoss)
		print("Toborro The Hutt has Spawned")
		createObserver(OBJECTDESTRUCTION, "ToborroTheHuttScreenplay", "bossDead", pBoss)--World Boss Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--The Boss Has Died Respawn WorldBoss With A New Dynamic Spawn
---------------------------------------------------------------
function ToborroTheHuttScreenplay:bossDead(pBoss)
	print("Toborro The Hutt Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "ToborroTheHuttScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "ToborroTheHuttScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	return 0
end
-----------------------
--Respawn World Boss
-----------------------
function ToborroTheHuttScreenplay:KillSpawn()
		local pBoss = spawnMobile("mandalore", "toborro_the_hutt", -1, -23.7, -23.0, 138.7, -177, 8565767)--Spawn WorldBoss After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("Toborro The Hutt has Spawned")
		createObserver(OBJECTDESTRUCTION, "ToborroTheHuttScreenplay", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function ToborroTheHuttScreenplay:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted Toborro The Hutt Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
