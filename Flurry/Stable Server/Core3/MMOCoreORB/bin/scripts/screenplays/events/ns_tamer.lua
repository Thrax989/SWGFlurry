ns_tamer = ScreenPlay:new {
	numberOfActs = 1,
  	planet = "mandalore",
}
registerScreenPlay("ns_tamer", true)
-----------------------------
--Start NsTamer ScreenPlay
-----------------------------
function ns_tamer:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		print("NsTamer Loaded")
	end
end
-----------------------
--NsTamer Objects
-----------------------
function ns_tamer:spawnSceneObjects()
spawnSceneObject("mandalore", "object/tangible/camp/camp_tent_s4.iff", -1133, 29, 2597, 0, 1, 0, 0, 0)
spawnSceneObject("mandalore", "object/tangible/camp/campfire_logs_smoldering.iff", -1139, 28, 2596, 0, 1, 0, 0, 0)
spawnSceneObject("mandalore", "object/tangible/camp/camp_lawn_chair.iff", -1138, 28, 2592, 0, 1, 0, 0, 0)
spawnSceneObject("mandalore", "object/tangible/camp/camp_lawn_chair.iff", -1142, 28, 2597, 0, 1, 0, 0, 0)	
end
-----------------------
--NsTamer Has Spawned
-----------------------
function ns_tamer:spawnMobiles()
		spawnMobile("mandalore", "nightsister_rancor", 600, -1146, 26, 2603, 0, 0)
		spawnMobile("mandalore", "nightsister_rancor", 600, -1122, 26, 2614, 0, 0)
		spawnMobile("mandalore", "nightsister_rancor", 600, -1122, 26, 2599, 0, 0)
		spawnMobile("mandalore", "nightsister_rancor", 600, -1124, 26, 2578, 0, 0)
		spawnMobile("mandalore", "narglatch_bruiser", 180, -1139, 26, 2587, 0, 0)
		spawnMobile("mandalore", "baz_nitch_terror", 120, -1131, 26, 2586, 0, 0)
		spawnMobile("mandalore", "graul_brute", 300, -1129, 26, 2620, 0, 0)
		spawnMobile("mandalore", "baz_nitch_terror", 120, -1155, 26, 2602, 0, 0)
		spawnMobile("mandalore", "narglatch_bruiser", 180, -1137, 26, 2597, 0, 0)	
		local pBoss = spawnMobile("mandalore", "worldboss_8", -1, -1137, 26, 2607, 0, 0)--Spawn NsTamer
		local creature = CreatureObject(pBoss)
		print("NsTamer Spawned")
		createObserver(OBJECTDESTRUCTION, "ns_tamer", "bossDead", pBoss)--NsTamer Has Died Trigger Respawn Function
end
---------------------------------------------------------------
--NsTamer Has Died Respawn NsTamer With A New Dynamic Spawn
---------------------------------------------------------------
function ns_tamer:bossDead(pBoss, pPlayer)
	local player = LuaCreatureObject(pPlayer)
	--player:broadcastToServer("\\#63C8F9 NsTamer Has Died!")
	--player:broadcastToServer("\\#63C8F9 NsTamer Will Respawn In 3 Hours")
	--player:broadcastToDiscord("NsTamer Has Died!")
	--player:broadcastToDiscord("NsTamer Will Respawn In 3 Hours")
	print("NsTamer Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "ns_tamer", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "ns_tamer", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	return 0
end
-----------------------
--Respawn NsTamer Boss
-----------------------
function ns_tamer:KillSpawn()
		local pBoss = spawnMobile("mandalore", "worldboss_8", -1, -1137, 26, 2607, 0, 0)--Spawn NsTamer After Death 3 Hour Timer
		local creature = CreatureObject(pBoss)
		print("NsTamer Respawned")
		createObserver(OBJECTDESTRUCTION, "ns_tamer", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--NsTamer Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function ns_tamer:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("NsTamer Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
