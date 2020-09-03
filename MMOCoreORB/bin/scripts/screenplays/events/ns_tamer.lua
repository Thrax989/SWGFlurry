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
spawnSceneObject("mandalore", "object/tangible/camp/camp_tent_s4.iff", -1133, 27, 2597, 0, 1, 0, 0, 0)
spawnSceneObject("mandalore", "object/tangible/camp/campfire_logs_smoldering.iff", -1139, 27, 2596, 0, 1, 0, 0, 0)
spawnSceneObject("mandalore", "object/tangible/camp/camp_lawn_chair.iff", -1138, 27, 2592, 0, 1, 0, 0, 0)
spawnSceneObject("mandalore", "object/tangible/camp/camp_lawn_chair.iff", -1142, 27, 2597, 0, 1, 0, 0, 0)	
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
		createObserver(DAMAGERECEIVED, "ns_tamer", "npcDamageObserver", pBoss)
		createObserver(OBJECTDESTRUCTION, "ns_tamer", "bossDead", pBoss)--Exar Has Died Trigger Respawn Function
end
-----------------------------
--NSTamer Damage Observers
-----------------------------
function ns_tamer:npcDamageObserver(bossObject, playerObject, damage)

	local player = LuaCreatureObject(playerObject)
	local boss = LuaCreatureObject(bossObject)
	
	health = boss:getHAM(0)
	action = boss:getHAM(3)
	mind = boss:getHAM(6)
	
	maxHealth = boss:getMaxHAM(0)
	maxAction = boss:getMaxHAM(3)
	maxMind = boss:getMaxHAM(6)
  -----------------------
--NSTamer Boss 90% health
-----------------------
	if (((health <= (maxHealth * 0.9)) or (action <= (maxAction * 0.9)) or (mind <= (maxMind * 0.9))) and readData("ns_tamer:spawnState") == 0) then
      			writeData("ns_tamer:spawnState",1)
			createEvent(0 * 1000, "ns_tamer", "bomb", playerObject, "")
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect//mustafar/som_force_crystal_buff.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/mustafar/som_force_crystal_drain.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 90%")
	end
-----------------------
--NSTamer Boss 70% health
-----------------------
	if (((health <= (maxHealth * 0.7)) or (action <= (maxAction * 0.7)) or (mind <= (maxMind * 0.7))) and readData("ns_tamer:spawnState") == 1) then
      			writeData("ns_tamer:spawnState",2)
			createEvent(0 * 1000, "ns_tamer", "bomb", playerObject, "")
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/incubator_mutation.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 70%")
	end
-----------------------
--NSTamer Boss 50% health
-----------------------
	if (((health <= (maxHealth * 0.5)) or (action <= (maxAction * 0.5)) or (mind <= (maxMind * 0.5))) and readData("ns_tamer:spawnState") == 2) then
      			writeData("ns_tamer:spawnState",3)
			createEvent(0 * 1000, "ns_tamer", "bomb", playerObject, "")
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/incubator_mutation.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 50%")
	end
-----------------------
--NSTamer Boss 30% health
-----------------------
	if (((health <= (maxHealth * 0.3)) or (action <= (maxAction * 0.3)) or (mind <= (maxMind * 0.3))) and readData("ns_tamer:spawnState") == 3) then
      			writeData("ns_tamer:spawnState",4)
			createEvent(0 * 1000, "ns_tamer", "bomb", playerObject, "")
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/incubator_mutation.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 30%")
	end
-----------------------
--NSTamer Boss 10% health
-----------------------
	if (((health <= (maxHealth * 0.1)) or (action <= (maxAction * 0.1)) or (mind <= (maxMind * 0.1))) and readData("ns_tamer:spawnState") == 4) then
      			writeData("ns_tamer:spawnState",5)
			createEvent(0 * 1000, "ns_tamer", "bomb", playerObject, "")
			self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/incubator_mutation.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 10%")
		end
	return 0

end
--------------------------------
--Deploy Boss Trigger Trap Bomb
--------------------------------
function ns_tamer:bomb(playerObject)
if (CreatureObject(playerObject):isGrouped()) then
	local groupSize = CreatureObject(playerObject):getGroupSize()
	for i = 0, groupSize - 1, 1 do
		local pMember = CreatureObject(playerObject):getGroupMember(i)
		if pMember ~= nil and SceneObject(pMember):isInRangeWithObject(playerObject, 200) then
		local trapDmg = getRandomNumber(2000, 2500)
		CreatureObject(pMember):inflictDamage(pMember, 0, trapDmg, 1)
      		CreatureObject(pMember):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      		CreatureObject(pMember):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
		end
	end
else
	local trapDmg = getRandomNumber(2000, 2500)
	CreatureObject(playerObject):inflictDamage(playerObject, 0, trapDmg, 1)
      	CreatureObject(playerObject):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      	CreatureObject(playerObject):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
	end
end
-----------------------
--NSTamer Boss Support
-----------------------
function ns_tamer:spawnSupport(playerObject)
	local pGuard1 = spawnMobile("mandalore", "narglatch_bruiser", -1, -1137, 26, 2597, 0, 0) 
	spatialChat(pGuard1, "!!!!!!!!")
	CreatureObject(pGuard1):engageCombat(playerObject)
      	CreatureObject(pGuard1):playEffect("clienteffect/hh_15_torpedo_warhead.cef", "")
	local pGuard2 = spawnMobile("mandalore", "graul_brute", 300, -1129, 26, 2620, 0, 0) 
	spatialChat(pGuard2, "!!!!!!!!")
	CreatureObject(pGuard2):engageCombat(playerObject)
      	CreatureObject(pGuard2):playEffect("clienteffect/hh_15_torpedo_warhead.cef", "")
end
---------------------------------------------------------------
--NSTamer Has Died Respawn Exar With A New Dynamic Spawn
---------------------------------------------------------------
function ns_tamer:bossDead(pBoss)
	print("NSTamer Has Died")
	local creature = CreatureObject(pBoss)
	createEvent(120 * 1000, "ns_tamer", "KillBoss", pBoss, "")--Despawn Corpse
	createEvent(10800 * 1000, "ns_tamer", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
	createEvent(1 * 1000, "ns_tamer", "BroadcastDead", pBoss, "")--Broadcast Dead
	createEvent(1 * 1000, "ns_tamer", "BroadcastRespawn", pBoss, "")--Broadcast 3 Hour Respawn
	createEvent(10795 * 1000, "ns_tamer", "KillSpawnCast", pBoss, "")--Broadcast Respawn
	createEvent(10798 * 1000, "ns_tamer", "KillSpawnCast1", pBoss, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "ns_tamer", "KillSpawnCast2", pBoss, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "ns_tamer", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn NSTamer Boss
-----------------------
function ns_tamer:KillSpawn()
		local pBoss = spawnMobile("mandalore", "worldboss_8", -1, -1137, 26, 2607, 0, 0)--Spawn NSTamer After Death 3 Hour Timer
		print("NSTamer Respawned")
		createObserver(DAMAGERECEIVED, "ns_tamer", "npcDamageObserver", pBoss)
		createObserver(OBJECTDESTRUCTION, "ns_tamer", "bossDead", pBoss)
end
-----------------------------------------------------------------------------
--NSTamer Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function ns_tamer:KillBoss(pBoss)
      	writeData("ns_tamer:spawnState",0)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("NSTamer Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
----------------------------
--Broadcast Dead
----------------------------
function ns_tamer:BroadcastDead(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 Nightsister Tamer Boss Has Died!")
		CreatureObject(bossObject):broadcastToDiscord("Nightsister Tamer Boss Has Died!")
end
----------------------------
--Broadcast Initial Respawn
----------------------------
function ns_tamer:BroadcastRespawn(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 Nightsister Tamer Boss Respawning In 3 Hours")
		CreatureObject(bossObject):broadcastToDiscord("Nightsister Tamer Boss Respawning In 3 Hours")
end
-----------------------
--Broadcast Respawn
-----------------------
function ns_tamer:KillSpawnCast(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 Nightsister Tamer Boss Respawning In ..")
		CreatureObject(bossObject):broadcastToDiscord("Nightsister Tamer Boss Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function ns_tamer:KillSpawnCast1(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 3")
		CreatureObject(bossObject):broadcastToDiscord("3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function ns_tamer:KillSpawnCast2(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 2")
		CreatureObject(bossObject):broadcastToDiscord("2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function ns_tamer:KillSpawnCast3(bossObject)
		local boss = LuaCreatureObject(bossObject)
		CreatureObject(bossObject):broadcastToServer("\\#63C8F9 1")
		CreatureObject(bossObject):broadcastToDiscord("1")
end
