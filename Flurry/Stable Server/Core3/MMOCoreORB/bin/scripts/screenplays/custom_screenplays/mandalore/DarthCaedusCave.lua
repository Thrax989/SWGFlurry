DarthCaedusCave = ScreenPlay:new {
	numberOfActs = 1,
	screenplayName = "DarthCaedusCave"
}

registerScreenPlay("DarthCaedusCave", true)

function DarthCaedusCave:start()
	if (isZoneEnabled("mandalore")) then
		self:spawnMobiles()
	end
end

function DarthCaedusCave:spawnMobiles()
	--Cave of Darth Caedus 
	
	spawnMobile("mandalore", "darth_caedus_follower", 1800, 9.6, -15.6, -8.5, -47, 8566152)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, 9.9, -23.8, -27.6, 0, 8566153)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -10.1, -30.9, -29.6, 71, 8566153)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -8.8, -38.6, -51.5, -3, 8566153)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, 0.8, -40.9, -72.8, 122, 8566154)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -13.5, -40.9, -77.5, 51, 8566154)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, 20.1, -43.1, -56.6, -127, 8566154)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, 38.9, -45.9, -53.3, -112, 8566155)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, 46.2, -47.1, -56.4, -89, 8566155)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, 49.1, -46.1, -94.5, -48, 8566155)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, 24.8, -45.7, -107.4, 48, 8566155)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, 0.6, -45.2, -43.6, -35, 8566156)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -9.3, -45.5, -146.5, 30, 8566156)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -10.7, -44.9, -133.1, 80, 8566156)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, 24.8, -49.0, -136.7, -22, 8566156)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, 57.6, -49.5, -133.6, -67, 8566156)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, 57.9, -55.7, -152.1, -116, 8566156)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, 61.7, -56.6, -162.8, -71, 8566156)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, 56.1, -56.7, -168.0, -18, 8566156)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, 45.9, -56.6, -165.5, 8, 8566156)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, 4.7, -64.1, -180.3, 98, 8566157)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -11.5, -65.2, -205.2, -8, 8566158)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -2.7, -64.1, -236.0, -23, 8566158)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -21.7, -65.6, -242.6, 64, 8566158)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -33.4, -66.3, -180.7, 89, 8566157)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -55.1, -70.8, -191.1, 6, 8566159)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -68.2, -70.0, -198.4, 23, 8566159)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -85.0, -69.9, -203.0, 82, 8566159)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -110.2, -69.0, -205.3, 12, 8566159)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -123.3, -69.8, -195.4, 61, 8566159)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -122.0, -70.1, -178.3, 164, 8566159)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -95.8, -72.2, -181.4, 26, 8566159)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -95.5, -73.9, -168.0, 128, 8566159)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -70.2, -70.7, -158.2, 154, 8566159)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -100.9, -69.1, -138.9, 174, 8566159)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -124.0, -69.7, -144.0, 174, 8566159)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -111.4, -69.2, -119.4, 138, 8566159)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -92.2, -70.4, -124.1, -158, 8566159)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -86.4, -69.9, -97.8, -145, 8566159)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -66.3, -68.4, -101.8, -97, 8566160)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, 68.2, -70.6, -86.3, -128, 8566160)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -35.0, -71.0, -87.7, -114, 8566160)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -19.9, -69.1, -98.4, -145, 8566160)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -38.9, -70.3, -108.6, -53, 8566160)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -24.5, -78.2, -133.7, -8, 8566161)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -48.4, -87.2, -146.7, 80, 8566161)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -76.3, -99.3, -156.4, 34, 8566159)
	spawnMobile("mandalore", "darth_caedus_follower", 1800, -79.2, -100.6, -136.5, 116, 8566159)
	spawnMobile("mandalore", "darth_caedus", 10800, -91.1, -100.7, -95.8, 170, 8566162)
		
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
function DarthCaedusCave:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		print("Darth Caedus has Loaded")
	end
end
-----------------------
--The Boss Has Spawned
-----------------------
function DarthCaedusCave:spawnMobiles()
		local pBoss = spawnMobile("mandalore", "darth_caedus", -1, -91.1, -100.7, -95.8, 170, 8566162)--Spawn World Boss
		local creature = CreatureObject(pBoss)
		print("Darth Caedus has Spawned")
		createObserver(OBJECTDESTRUCTION, "DarthCaedusCave", "bossDead", pBoss)--World Boss Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--The Boss Has Died Respawn WorldBoss With A New Dynamic Spawn
---------------------------------------------------------------
function DarthCaedusCave:bossDead(pBoss, pPlayer)
	local player = LuaCreatureObject(pPlayer)
	player:broadcastToServer("\\#63C8F9 Darth Caedus Has Died!")
	player:broadcastToServer("\\#63C8F9 Darth Caedus Will Respawn In 3 Hours")
	print("Darth Caedus Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "DarthCaedusCave", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "DarthCaedusCave", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(10797 * 1000, "DarthCaedusCave", "KillSpawnCast", pBoss, "")--Broadcast Respawn
	createEvent(10798 * 1000, "DarthCaedusCave", "KillSpawnCast1", pBoss, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "DarthCaedusCave", "KillSpawnCast2", pBoss, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "DarthCaedusCave", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn World Boss
-----------------------
function DarthCaedusCave:KillSpawn()
		local pBoss = spawnMobile("mandalore", "darth_caedus", -1, -91.1, -100.7, -95.8, 170, 8566162)--Spawn WorldBoss After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("Darth Caedus has Spawned")
		createObserver(OBJECTDESTRUCTION, "DarthCaedusCave", "bossDead", pBoss)
end
-----------------------
--Broadcast Respawn
-----------------------
function DarthCaedusCave:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 Darth Caedus is Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function DarthCaedusCave:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function DarthCaedusCave:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function DarthCaedusCave:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 1")
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function DarthCaedusCave:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted Darth Caedus One Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
		SceneObject(pBoss):destroyObjectFromDatabase()
	end
	return 0
end
