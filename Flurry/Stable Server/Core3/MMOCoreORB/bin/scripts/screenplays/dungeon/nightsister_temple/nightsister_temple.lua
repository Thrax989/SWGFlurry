--------------------------------------
--   Creator : TOXIC
--   Date : 1/31/2020
--------------------------------------
nightsister_temple = ScreenPlay:new {
  numberOfActs = 1,
  questString = "nightsister_temple",
  questdata = Object:new {
  activePlayerName = "initial",
  }
}
-------------------------------------------------------------
--   Register Screenplay to planet Dungeon 2 nightsister temple temple
-------------------------------------------------------------
spHelper = require("screenplayHelper")
registerScreenPlay("nightsister_temple", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for nightsister temple")
--------------------------------------
--   Initialize screenplay
--------------------------------------
function nightsister_temple:start()
if (isZoneEnabled("dungeon2")) then
	self:spawnMobiles()
  end
end
--------------------------------------------------
--   spawn mobiles for dungeon
--------------------------------------------------
function nightsister_temple:spawnMobiles()
-------------------------------------------------------------------------
--  Spawn a NPC as a swtich once killed, triggers boss observer to spawn
-------------------------------------------------------------------------
local pBoss = spawnMobile("dungeon2", "nightsisterqueen", 10800, -79.1685, 17.8173, 23.93, 100, 14201105)--3 hour respawn to start the boss
	print("Spawning nightsister temple queen")
if (pBoss ~= nil ) then
    createObserver(OBJECTDESTRUCTION, "nightsister_temple", "notifyTriggerDead", pBoss)
end
    writeData("nightsister_temple:spawnState",0)
    return 0
end
-----------------------------------------
--  Notify trigger is dead to spawn Boss
-----------------------------------------
function nightsister_temple:notifyTriggerDead(pBoss, pPlayer)
local pBoss = spawnMobile("dungeon2", "nightsisterqueenboss", -1, -79.1685, 17.8173, 23.93, 100, 14201105)
    print("Spawning nightsister temple boss")
	local creature = CreatureObject(pBoss)
    CreatureObject(pPlayer):playEffect("clienteffect/sm_end_of_the_line.cef", "")
    CreatureObject(pPlayer):playMusicMessage("sound/nightsister_temple.snd")
    ObjectManager.withCreatureObject(pBoss, function(oBoss)
    writeData("nightsister_temple:spawnState", 1)
    writeData("nightsister_temple", oBoss:getObjectID())
    spatialChat(pBoss, "Intruder Alert Activating Defense Systems")
    createObserver(DAMAGERECEIVED,"nightsister_temple","boss_damage", pBoss)
    createObserver(OBJECTDESTRUCTION, "nightsister_temple", "Restart", pBoss)
end)
    return 0
end
-----------------------------------------
--  Notify trigger broadcast respawning
-----------------------------------------
function nightsister_temple:Restart(pPlayer, pBoss)
    print("Starting Boss Broadcast Scripts")
	createEvent(1 * 1000, "nightsister_temple", "Restartstates", pPlayer, "")--Restart nightsister temple States
	createEvent(1 * 1000, "nightsister_temple", "BroadcastRespawn", pPlayer, "")--Broadcast 3 Hour Respawn
	createEvent(300 * 1000, "nightsister_temple", "KillBoss", pPlayer, "")--Clean Up Dead Corpse
	createEvent(10795 * 1000, "nightsister_temple", "KillSpawnCast", pPlayer, "")--Broadcast Respawn
	createEvent(10798 * 1000, "nightsister_temple", "KillSpawnCast1", pPlayer, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "nightsister_temple", "KillSpawnCast2", pPlayer, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "nightsister_temple", "KillSpawnCast3", pPlayer, "")--Broadcast Respawn 1
    return 0
end
--------------------------------------
--   Player, Boss Functions
--------------------------------------
function nightsister_temple:boss_damage(pBoss, pPlayer, onespawn, twospawn, threespawn, fourspawn, fivespawn, sixspawn, sevenspawn, eightspawn, ninespawn, player, pMember)
local player = LuaCreatureObject(pPlayer)
local boss = LuaCreatureObject(pBoss)
createEvent(10800 * 1000, "nightsister_temple", "Remove", pBoss, "")
--------------------------------------
--   Range and health checks for boss
--------------------------------------
if (boss ~= nil) then
local heal = 999999
local bossHealth = boss:getHAM(0)
local bossAction = boss:getHAM(3)
local bossMind = boss:getHAM(6)
local bossMaxHealth = boss:getMaxHAM(0)
local bossMaxAction = boss:getMaxHAM(3)
local bossMaxMind = boss:getMaxHAM(6)
--------------------------------------
--  90% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind * 0.9))) and readData("nightsister_temple:spawnState") == 1) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 90%")
      spatialChat(pBoss, "You fools..")
      writeData("nightsister_temple:spawnState",2)
      local onespawn = spawnMobile("dungeon2", "nightsisterqueenrancor", 0, -68.1774, 14.0589, 33.5873, 132, 14201105)
      local onespawn = spawnMobile("dungeon2", "nightsisterqueenrancor", 0, -78.0045, 17.8249, 31.511, 110, 14201105)
      local onespawn = spawnMobile("dungeon2", "nightsisterqueenrancor", 0, -82.2817, 17.8345, 16.3667, 106, 14201105)
      local onespawn = spawnMobile("dungeon2", "nightsisterqueenrancor", 0, -67.8579, 12.9848, 6.15438, 78, 14201105)
      ObjectManager.withCreatureObject(onespawn, function(ofirstTime)
      writeData("countspawn", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  80% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.8)) or (bossAction <= (bossMaxAction * 0.8)) or (bossMind <= (bossMaxMind * 0.8))) and readData("nightsister_temple:spawnState") == 2) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 80%")
      writeData("nightsister_temple:spawnState",3)
      local twospawn = spawnMobile("dungeon2", "nightsisterqueenrancor", 0, -68.1774, 14.0589, 33.5873, 132, 14201105)
      local twospawn = spawnMobile("dungeon2", "nightsisterqueenrancor", 0, -78.0045, 17.8249, 31.511, 110, 14201105)
      local twospawn = spawnMobile("dungeon2", "nightsisterqueenrancor", 0, -82.2817, 17.8345, 16.3667, 106, 14201105)
      local twospawn = spawnMobile("dungeon2", "nightsisterqueenrancor", 0, -67.8579, 12.9848, 6.15438, 78, 14201105)
      ObjectManager.withCreatureObject(twospawn, function(ofirstTime)
      writeData("countspawn", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  70% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.7)) or (bossAction <= (bossMaxAction * 0.7)) or (bossMind <= (bossMaxMind * 0.7))) and readData("nightsister_temple:spawnState") == 3) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 70%")
      writeData("nightsister_temple:spawnState",4)
      local threespawn = spawnMobile("dungeon2", "nightsister_mutation1", 0, -52.9481, 9.92795, 16.3974, 284, 14201105)
      ObjectManager.withCreatureObject(threespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end	
--------------------------------------
--  60% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.6)) or (bossAction <= (bossMaxAction * 0.6)) or (bossMind <= (bossMaxMind * 0.6))) and readData("nightsister_temple:spawnState") == 4) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 60%")
      writeData("nightsister_temple:spawnState",5)
      local fourspawn = spawnMobile("dungeon2", "nightsister_mutation2", 0, -52.9481, 9.92795, 16.3974, 284, 14201105)
      ObjectManager.withCreatureObject(fourspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  50% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("nightsister_temple:spawnState") == 5) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 50%")
      writeData("nightsister_temple:spawnState",6)
      local fivespawn = spawnMobile("dungeon2", "nightsister_mutation3", 0, -52.9481, 9.92795, 16.3974, 284, 14201105)
      ObjectManager.withCreatureObject(fivespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  40% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("nightsister_temple:spawnState") == 6) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 40%")
      writeData("nightsister_temple:spawnState",7)
      local sixspawn = spawnMobile("dungeon2", "nightsister_mutation4", 0, -52.9481, 9.92795, 16.3974, 284, 14201105)
      ObjectManager.withCreatureObject(sixspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  30% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.3)) or (bossAction <= (bossMaxAction * 0.3)) or (bossMind <= (bossMaxMind * 0.3))) and readData("nightsister_temple:spawnState") == 7) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 30%")
      writeData("nightsister_temple:spawnState",8)
      local sevenspawn = spawnMobile("dungeon2", "nightsister_mutation5", 0, -52.9481, 9.92795, 16.3974, 284, 14201105)
      ObjectManager.withCreatureObject(sevenspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  20% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.2)) or (bossAction <= (bossMaxAction * 0.2)) or (bossMind <= (bossMaxMind * 0.2))) and readData("nightsister_temple:spawnState") == 8) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 20%")
      writeData("nightsister_temple:spawnState",9)  
      local eightspawn = spawnMobile("dungeon2", "nightsister_mutation6", 0, -52.9481, 9.92795, 16.3974, 284, 14201105)
      ObjectManager.withCreatureObject(eightspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  10% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.1)) or (bossAction <= (bossMaxAction * 0.1)) or (bossMind <= (bossMaxMind * 0.1))) and readData("nightsister_temple:spawnState") == 9) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 10%")
      writeData("nightsister_temple:spawnState",10)
      local ninespawn = spawnMobile("dungeon2", "nightsister_mutation7", 0, -52.9481, 9.92795, 16.3974, 284, 14201105)
      ObjectManager.withCreatureObject(ninespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------------------------------------------------
--   Check that the boss has died, Broadcast server wide, set state for players
--------------------------------------------------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.001)) or (bossAction <= (bossMaxAction * 0.001)) or (bossMind <= (bossMaxMind * 0.001))) and readData("nightsister_temple:spawnState") == 10) then
      spatialChat(pBoss, "We shall meet again uggggh!.")
      spatialChat(pBoss, "You have 5 minuets to loot my body befor it disappears.")
            writeData("nightsister_temple:spawnState",11)
        end
      end
   return 0
end
----------------------------
--Broadcast Initial Respawn
----------------------------
function nightsister_temple:BroadcastRespawn(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 Nightsister Temple Boss Has Died!")
		player:broadcastToDiscord("Nightsister Temple Boss Has Died!")
		player:broadcastToServer("\\#63C8F9 Nightsister Temple Boss Respawning In 3 Hours")
		player:broadcastToDiscord("Nightsister Temple Boss Respawning In 3 Hours")
    	print("Starting Boss Respawn Broadcast Message")
end
-----------------------
--Broadcast Respawn
-----------------------
function nightsister_temple:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 Nightsister Temple Boss Respawning In ..")
		player:broadcastToDiscord("Nightsister Temple Boss Respawning In ..")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function nightsister_temple:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 3")
		player:broadcastToDiscord("3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function nightsister_temple:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 2")
		player:broadcastToDiscord("2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function nightsister_temple:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 1")
		player:broadcastToDiscord("1")
    	print("nightsister temple boss Is Respawning")
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function nightsister_temple:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted nightsister temple Boss Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
		return 0
	end
end
----------------------------
--Remove Boss After 3 hours
----------------------------
function nightsister_temple:Remove(pBoss)
	if SceneObject(pBoss) then
		print("nightsister temple Boss Removed")
		SceneObject(pBoss):destroyObjectFromWorld()
		dropObserver(pBoss, OBJECTDESTRUCTION)
		dropObserver(pBoss, DAMAGERECEIVED)
		forcePeace(pBoss)
		forcePeace(pBoss)
		forcePeace(pBoss)
		forcePeace(pBoss)
		forcePeace(pBoss)
		forcePeace(pBoss)
		end
		return 0
end
----------------------------
--Reset Player Boss States
----------------------------
function nightsister_temple:Restartstates(pPlayer)
   writeData("nightsister_temple:spawnState", 0)
end
