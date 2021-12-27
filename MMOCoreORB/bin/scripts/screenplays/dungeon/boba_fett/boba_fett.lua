--/////////////////////////////////////////////////////////
--//		    Buba Fett Dungeon						//
--//			Created By TOXIC:12/27/2021				//
--////////////////////////////////////////////////////////

--////////////////////////////////////////////////////////
--//		Current Boss Planet endor					//
--//		Current Boss Type NPC						//
--///////////////////////////////////////////////////////
boba_fett_dungeonScreenplay = ScreenPlay:new {
				numberOfActs = 1,
				planet = "endor",
}
registerScreenPlay("boba_fett_dungeonScreenplay", true)
-----------------------------
--Start Boba Fett ScreenPlay
-----------------------------
function boba_fett_dungeonScreenplay:start()
				if (isZoneEnabled(self.planet)) then
				self:spawnMobiles()
				self:spawnSceneObjects()
				print("Boba Fett Loaded")
	end
end
---------------------------
--Boba Fett Spawn Scene Objects
---------------------------
function boba_fett_dungeonScreenplay:spawnSceneObjects()
				spawnSceneObject("endor", "object/tangible/terminal/terminal_quad_screen.iff", -40.4491, 0.61331, 29.3437, 14200816, 1, 0, 0, 0)
end
-----------------------
--Boba Fett Has Spawned
-----------------------
function boba_fett_dungeonScreenplay:spawnMobiles()
				local pBoss = spawnMobile("endor", "boba_fett_boss", -1, 15.1374, -3.58883e-09, 85.2292, 184, 14200878)--Spawn boba
				print("Boba Fett Spawned")
				createObserver(DAMAGERECEIVED, "boba_fett_dungeonScreenplay", "npcDamageObserver", pBoss)
				createObserver(OBJECTDESTRUCTION, "boba_fett_dungeonScreenplay", "bossDead", pBoss)--Boba Fett Has Died Trigger Respawn Function
end
-----------------------------
--boba Damage Observers
-----------------------------
function boba_fett_dungeonScreenplay:npcDamageObserver(bossObject, playerObject, damage)
				local player = LuaCreatureObject(playerObject)
				local boss = LuaCreatureObject(bossObject)
				health = boss:getHAM(0)
				action = boss:getHAM(3)
				mind = boss:getHAM(6)
				maxHealth = boss:getMaxHAM(0)
				maxAction = boss:getMaxHAM(3)
				maxMind = boss:getMaxHAM(6)
----------------------------
--Boba Fett Boss 90% health
----------------------------
				if (((health <= (maxHealth * 0.9)) or (action <= (maxAction * 0.9)) or (mind <= (maxMind * 0.9))) and readData("boba_fett_dungeonScreenplay:spawnState") == 0) then
      			writeData("boba_fett_dungeonScreenplay:spawnState",1)
				createEvent(0 * 1000, "boba_fett_dungeonScreenplay", "bomb", playerObject, "")
				createEvent(0 * 1000, "boba_fett_dungeonScreenplay", "grenadebomb", bossObject, "")
				self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
   				CreatureObject(playerObject):playMusicMessage("sound/boba_fett_dungeon.snd")
      			CreatureObject(bossObject):playEffect("clienteffect//mustafar/som_force_crystal_buff.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/mustafar/som_force_crystal_drain.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 90%")
end
----------------------------
--Boba Fett Boss 80% health
----------------------------
				if (((health <= (maxHealth * 0.8)) or (action <= (maxAction * 0.8)) or (mind <= (maxMind * 0.8))) and readData("boba_fett_dungeonScreenplay:spawnState") == 1) then
      			writeData("boba_fett_dungeonScreenplay:spawnState",2)
				createEvent(0 * 1000, "boba_fett_dungeonScreenplay", "bomb", playerObject, "")
				createEvent(0 * 1000, "boba_fett_dungeonScreenplay", "grenadebomb", bossObject, "")
				self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/incubator_mutation.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 80%")
end
----------------------------
--Boba Fett Boss 70% health
----------------------------
				if (((health <= (maxHealth * 0.7)) or (action <= (maxAction * 0.7)) or (mind <= (maxMind * 0.7))) and readData("boba_fett_dungeonScreenplay:spawnState") == 2) then
      			writeData("boba_fett_dungeonScreenplay:spawnState",3)
				createEvent(0 * 1000, "boba_fett_dungeonScreenplay", "bomb", playerObject, "")
				createEvent(0 * 1000, "boba_fett_dungeonScreenplay", "grenadebomb", bossObject, "")
				self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/incubator_mutation.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 70%")
end
----------------------------
--Boba Fett Boss 60% health
----------------------------
				if (((health <= (maxHealth * 0.6)) or (action <= (maxAction * 0.6)) or (mind <= (maxMind * 0.6))) and readData("boba_fett_dungeonScreenplay:spawnState") == 3) then
      			writeData("boba_fett_dungeonScreenplay:spawnState",4)
				createEvent(0 * 1000, "boba_fett_dungeonScreenplay", "bomb", playerObject, "")
				createEvent(0 * 1000, "boba_fett_dungeonScreenplay", "grenadebomb", bossObject, "")
				self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/incubator_mutation.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 60%")
end
----------------------------
--Boba Fett Boss 50% health
----------------------------
				if (((health <= (maxHealth * 0.5)) or (action <= (maxAction * 0.5)) or (mind <= (maxMind * 0.5))) and readData("boba_fett_dungeonScreenplay:spawnState") == 4) then
      			writeData("boba_fett_dungeonScreenplay:spawnState",5)
				createEvent(0 * 1000, "boba_fett_dungeonScreenplay", "bomb", playerObject, "")
				createEvent(0 * 1000, "boba_fett_dungeonScreenplay", "grenadebomb", bossObject, "")
				createEvent(0 * 1000, "boba_fett_dungeonScreenplay", "starthealing", bossObject, "")
				createEvent(0 * 1000, "boba_fett_dungeonScreenplay", "npchealingmessage", bossObject, "")
				self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/incubator_mutation.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/mustafar/som_force_crystal_drain.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/droid_effect_dry_ice.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/death_trooper_infection_03.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 50%")
end
----------------------------
--Boba Fett Boss 40% health
----------------------------
				if (((health <= (maxHealth * 0.4)) or (action <= (maxAction * 0.4)) or (mind <= (maxMind * 0.4))) and readData("boba_fett_dungeonScreenplay:spawnState") == 5) then
      			writeData("boba_fett_dungeonScreenplay:spawnState",6)
				createEvent(0 * 1000, "boba_fett_dungeonScreenplay", "bomb", playerObject, "")
				createEvent(0 * 1000, "boba_fett_dungeonScreenplay", "grenadebomb", bossObject, "")
				self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/incubator_mutation.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 40%")
end
----------------------------
--Boba Fett Boss 30% health
----------------------------
				if (((health <= (maxHealth * 03)) or (action <= (maxAction * 0.3)) or (mind <= (maxMind * 0.3))) and readData("boba_fett_dungeonScreenplay:spawnState") == 6) then
      			writeData("boba_fett_dungeonScreenplay:spawnState",7)
				createEvent(0 * 1000, "boba_fett_dungeonScreenplay", "bomb", playerObject, "")
				createEvent(0 * 1000, "boba_fett_dungeonScreenplay", "grenadebomb", bossObject, "")
				self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/incubator_mutation.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 30%")
end
----------------------------
--Boba Fett Boss 20% health
----------------------------
				if (((health <= (maxHealth * 0.2)) or (action <= (maxAction * 0.2)) or (mind <= (maxMind * 0.2))) and readData("boba_fett_dungeonScreenplay:spawnState") == 7) then
      			writeData("boba_fett_dungeonScreenplay:spawnState",8)
				createEvent(0 * 1000, "boba_fett_dungeonScreenplay", "bomb", playerObject, "")
				createEvent(0 * 1000, "boba_fett_dungeonScreenplay", "grenadebomb", bossObject, "")
				self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/incubator_mutation.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 20%")
end
----------------------------
--Boba Fett Boss 10% health
----------------------------
				if (((health <= (maxHealth * 0.1)) or (action <= (maxAction * 0.1)) or (mind <= (maxMind * 0.1))) and readData("boba_fett_dungeonScreenplay:spawnState") == 8) then
      			writeData("boba_fett_dungeonScreenplay:spawnState",9)
				createEvent(0 * 1000, "boba_fett_dungeonScreenplay", "bomb", playerObject, "")
				createEvent(0 * 1000, "boba_fett_dungeonScreenplay", "grenadebomb", bossObject, "")
				self:spawnSupport(playerObject)
      			CreatureObject(playerObject):sendSystemMessage("Enemy Wave Starting!")
      			CreatureObject(bossObject):playEffect("clienteffect/incubator_mutation.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      			spatialChat(bossObject, "Boss Current Health = 10%")
end
----------------------------
--Boba Fett Boss 1% health
----------------------------
				if (((health <= (maxHealth * 0.001)) or (action <= (maxAction * 0.001)) or (mind <= (maxMind * 0.001))) and readData("boba_fett_dungeonScreenplay:spawnState") == 9) then
      			writeData("boba_fett_dungeonScreenplay:spawnState",10)
				createEvent(0 * 1000, "boba_fett_dungeonScreenplay", "bomb", playerObject, "")
				createEvent(0 * 1000, "boba_fett_dungeonScreenplay", "grenadebomb", bossObject, "")
				spatialChat(bossObject, "We Shall Meet Again!!!!!!!!")
      			CreatureObject(bossObject):playEffect("clienteffect/mustafar/som_force_crystal_drain.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/droid_effect_dry_ice.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/death_trooper_infection_03.cef", "")
      			CreatureObject(bossObject):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
				self:spawnSupport(playerObject)
			end
	return 0
end
--------------------------------
--Deploy Boss Trigger Trap Bomb
--------------------------------
function boba_fett_dungeonScreenplay:bomb(playerObject)
				if (CreatureObject(playerObject):isGrouped()) then
				local groupSize = CreatureObject(playerObject):getGroupSize()
				for i = 0, groupSize - 1, 1 do
				local pMember = CreatureObject(playerObject):getGroupMember(i)
				if pMember ~= nil and SceneObject(pMember):isInRangeWithObject(playerObject, 200) then
				local trapDmg = getRandomNumber(1500, 3000)
				CreatureObject(pMember):inflictDamage(pMember, 0, trapDmg, 1)
				CreatureObject(pMember):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
				CreatureObject(pMember):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
		end
	end
else
				local trapDmg = getRandomNumber(1500, 3000)
				CreatureObject(playerObject):inflictDamage(playerObject, 0, trapDmg, 1)
				CreatureObject(playerObject):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
				CreatureObject(playerObject):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
	end
end
-----------------------------------
--Deploy Boss Trigger Grenade Bomb
-----------------------------------
function boba_fett_dungeonScreenplay:grenadebomb(playerObject)
				if (CreatureObject(playerObject):isGrouped()) then
				local groupSize = CreatureObject(playerObject):getGroupSize()
				for i = 0, groupSize - 1, 1 do
				local pMember = CreatureObject(playerObject):getGroupMember(i)
				if pMember ~= nil and SceneObject(pMember):isInRangeWithObject(playerObject, 250) then
				local trapDmg = getRandomNumber(2000, 3500)
				CreatureObject(pMember):inflictDamage(pMember, 0, trapDmg, 1)
				CreatureObject(pMember):playEffect("clienteffect/commando_position_secured.cef", "")
				CreatureObject(pMember):playEffect("clienteffect/combat_grenade_fragmentation.cef", "")
		end
	end
else
				local trapDmg = getRandomNumber(2000, 3500)
				CreatureObject(playerObject):inflictDamage(playerObject, 0, trapDmg, 1)
				CreatureObject(playerObject):playEffect("clienteffect/commando_position_secured.cef", "")
				CreatureObject(playerObject):playEffect("clienteffect/combat_grenade_fragmentation.cef", "")
	end
end
-----------------------------
--Boba Healing Observers
-----------------------------
function boba_fett_dungeonScreenplay:starthealing(bossObject)
				local boss = LuaCreatureObject(bossObject)
				boss:healDamage(1000000, 0)
				boss:healDamage(1000000, 3)
				boss:healDamage(1000000, 6)
	return 0
end
-----------------------------
--Boba message Observers
-----------------------------
function boba_fett_dungeonScreenplay:npchealingmessage(bossObject)
				local boss = LuaCreatureObject(bossObject)
				CreatureObject(bossObject):playEffect("clienteffect/droid_effect_mind_bloom.cef", "")
				CreatureObject(bossObject):playEffect("clienteffect/combat_trap_melee_ranged_def_1.cef", "")
				CreatureObject(bossObject):playEffect("clienteffect/bacta_jab.cef", "")
				spatialChat(bossObject, "Health Illuminates Within Me!")
end
-----------------------
--Boba Boss Support
-----------------------
function boba_fett_dungeonScreenplay:spawnSupport(playerObject)
				local pGuard1 = spawnMobile("endor", "bobba_guard", -1, 24.3953, -0.0114183, 97.9868, 176, 14200878)
				spatialChat(pGuard1, "At Your Service!!!!!!!!")
				CreatureObject(pGuard1):engageCombat(playerObject)
				CreatureObject(pGuard1):playEffect("clienteffect/hh_15_torpedo_warhead.cef", "")
				local pGuard2 = spawnMobile("endor", "bobba_guard", -1, 6.5411, -0.027719, 98.041, 173, 14200878)
				spatialChat(pGuard2, "At Your Service!!!!!!!!")
				CreatureObject(pGuard2):engageCombat(playerObject)
				CreatureObject(pGuard2):playEffect("clienteffect/hh_15_torpedo_warhead.cef", "")
end
---------------------------------------------------------------
--Boba Fett Has Died Respawn Boba Fett With A New Dynamic Spawn
---------------------------------------------------------------
function boba_fett_dungeonScreenplay:bossDead(pBoss)
				print("Boba Has Died")
				local creature = CreatureObject(pBoss)
				createEvent(120 * 1000, "boba_fett_dungeonScreenplay", "KillBoss", pBoss, "")--Despawn Corpse
				createEvent(10800 * 1000, "boba_fett_dungeonScreenplay", "KillSpawn", pBoss, "")--Respawn Boss In 3 Hours
				createEvent(1 * 1000, "boba_fett_dungeonScreenplay", "BroadcastDead", pBoss, "")--Broadcast Dead
				createEvent(10800 * 1000, "boba_fett_dungeonScreenplay", "KillSpawnCast3", pBoss, "")--Broadcast Respawn 1
	return 0
end
-----------------------
--Respawn Boba Boss
-----------------------
function boba_fett_dungeonScreenplay:KillSpawn()
				local pBoss = spawnMobile("endor", "boba__fett_boss", -1, 15.1374, -3.58883e-09, 85.2292, 184, 14200878)--Spawn Boba After Death 3 Hour Timer
				print("Boba Respawned")
				createObserver(DAMAGERECEIVED, "boba_fett_dungeonScreenplay", "npcDamageObserver", pBoss)
				createObserver(OBJECTDESTRUCTION, "boba_fett_dungeonScreenplay", "bossDead", pBoss)
end
------------------------------------------------------------------------------
--Boba Fett Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
------------------------------------------------------------------------------
function boba_fett_dungeonScreenplay:KillBoss(pBoss)
				writeData("boba_fett_dungeonScreenplay:spawnState",0)
				dropObserver(pBoss, OBJECTDESTRUCTION)
				if SceneObject(pBoss) then
				print("Boba Fett Destroyed")
				SceneObject(pBoss):destroyObjectFromWorld()
	end
	return 0
end
----------------------------
--Broadcast Dead Boss
----------------------------
function boba_fett_dungeonScreenplay:BroadcastDead(bossObject)
				local boss = LuaCreatureObject(bossObject)
				CreatureObject(bossObject):broadcastToServer("\\#63C8F9 Boba Fett Boss Has Died.")
				CreatureObject(bossObject):broadcastToDiscord("Boba Fett Boss Has Died.")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function boba_fett_dungeonScreenplay:KillSpawnCast3(bossObject)
				local boss = LuaCreatureObject(bossObject)
				CreatureObject(bossObject):broadcastToServer("\\#63C8F9 Bob Fett Boss Respawning.")
				CreatureObject(bossObject):broadcastToDiscord("Boba Fett Boss Respawning.")
end
