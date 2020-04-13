ShadowCollectiveCave = ScreenPlay:new {
	numberOfActs = 1,
	screenplayName = "ShadowCollectiveCave"
}

registerScreenPlay("ShadowCollectiveCave", true)

function ShadowCollectiveCave:start()
	if (isZoneEnabled("mandalore")) then
		self:spawnMobiles()
	end
end

function ShadowCollectiveCave:spawnMobiles()
	--Shadow Collective Cave 
	
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 3.7, -10.9, -7.7, -96, 8566281)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 11.4, -21.8, -7.0, -92, 8566281)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 24.3, -27.8, -8.9, -78, 8566281)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 24.1, -38.8, -36.1, 47, 8566282)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 24.8, -42.7, -66.7, -2, 8566282)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 49.9, -48.8, -62.9, -57, 8566282)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 76.8, -46.5, -143.4, 80, 8566291)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 92.9, -46.4, -132.2, 2, 8566291)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 95.4, -45.5, -100.8, -134, 8566285)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 89.5, -46.6, -111.1, -76, 8566285)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 76.1, -46.4, -108.0, -76, 8566285)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 53.3, -48.7, -105.2, -13, 8566290)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 50.4, -51.7, -84.4, 9, 8566290)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 44.9, -47.1, -9.0, 173, 8566282)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 66.3, -55.6, -11.2, -97, 8566283)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 82.0, -61.1, -5.1, -167, 8566283)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 90.6, -63.3, -23.5, -56, 8566283)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 74.0, -67.9, -37.9, 58, 8566283)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 51.6, -67.7, -45.7, 26, 8566282)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 86.6, -71.0, -46.9, -22, 8566283)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 62.2, -75.5, -64.8, 33, 8566284)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 90.8, -76.1, -67.8, -28, 8566284)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 90.3, -76.3, -87.3, -41, 8566284)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 66.5, -76.8, -85.2, 9, 8566284)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 53.9, -75.3, -101.3, -1, 8566286)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 57.9, -69.5, -123.7, -9, 8566286)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 73.3, -66.4, -139.3, -69, 8566287)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 89.6, -66.9, -140.4, -82, 8566287)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 96.0, -66.1, -110.1, -165, 8566285)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 113.7, -66.3, -121.1, -15, 8566288)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 113.8, -67.2, -90.3, -176, 8566288)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 133.2, -66.9, -89.5, -178, 8566288)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 127.7, -66.6, -107.2, -94, 8566288)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 136.4, -66.4, -119.0, -45, 8566288)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 154.2, -66.2, -123.7, -65, 8566288)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 142.9, -66.5, -88.3, -140, 8566288)
	spawnMobile("mandalore", "shadow_collective_criminal", 1800, 164.1, -66.8, -97.5, -96, 8566289)
--	spawnMobile("mandalore", "shadow_collective_sc87", 10800, 190.1, -66.5, -102.8, -83, 8566289)
		
end

--/////////////////////////////////////////////////////////
--//		  World Boss Spawn System					//
--//			Created By TOXIC:11/20/2019				//
--////////////////////////////////////////////////////////
--//		Change your world boss under WORLDBOSS		//
--//Spawn Points Will Determain The Boss Spawn location //
--////////////////////////////////////////////////////////
--//		Current World Boss Planet Mandalore			//
--//		Current World Boss Type NPC			//
--///////////////////////////////////////////////////////

-----------------------------
--Start World Boss ScreenPlay
-----------------------------
function ShadowCollectiveCave:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("SC-87 has Loaded")
	end
end
-----------------------
--The Boss Has Spawned
-----------------------
function ShadowCollectiveCave:spawnMobiles()
		local pBoss = spawnMobile("mandalore", "tor_vizsla", -1, 190.1, -66.5, -102.8, -83, 8566289)--Spawn World Boss
		local creature = CreatureObject(pBoss)
		print("SC-87 has Spawned")
		createObserver(OBJECTDESTRUCTION, "ShadowCollectiveCave", "bossDead", pBoss)--World Boss Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--The Boss Has Died Respawn WorldBoss With A New Dynamic Spawn
---------------------------------------------------------------
function ShadowCollectiveCave:bossDead(pBoss, pPlayer)
	local player = LuaCreatureObject(pPlayer)
	player:broadcastToServer("\\#63C8F9 SC-87 Has Died!")
	player:broadcastToServer("\\#63C8F9 SC-87 Will Respawn In 3 Hours")
	print("SC-87 Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "ShadowCollectiveCave", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "ShadowCollectiveCave", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(10797 * 1000, "ShadowCollectiveCave", "KillSpawnCast", pBoss, "")--Broadcast Respawn
	createEvent(10798 * 1000, "ShadowCollectiveCave", "KillSpawnCast1", pBoss, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "ShadowCollectiveCave", "KillSpawnCast2", pBoss, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "ShadowCollectiveCave", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn World Boss
-----------------------
function ShadowCollectiveCave:KillSpawn()
		local pBoss = spawnMobile("mandalore", "tor_vizsla", -1, 190.1, -66.5, -102.8, -83, 8566289)--Spawn WorldBoss After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("SC-87 has Spawned")
		createObserver(OBJECTDESTRUCTION, "ShadowCollectiveCave", "bossDead", pBoss)
end
-----------------------
--Broadcast Respawn
-----------------------
function ShadowCollectiveCave:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 SC-87 is Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function ShadowCollectiveCave:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function ShadowCollectiveCave:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function ShadowCollectiveCave:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 1")
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function ShadowCollectiveCave:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted SC-87 One Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
		SceneObject(pBoss):destroyObjectFromDatabase()
	end
	return 0
end