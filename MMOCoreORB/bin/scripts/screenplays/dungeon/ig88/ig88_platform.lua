--------------------------------------
--   Creator : TOXIC
--   Date : 1/31/2020
--------------------------------------
ig88_platform = ScreenPlay:new {
  numberOfActs = 1,
  questString = "ig88_platform",
  questdata = Object:new {
  activePlayerName = "initial",
  }
}
-------------------------------------------------------------
--   Register Screenplay to planet Dungeon 2 ig88 platform temple
-------------------------------------------------------------
spHelper = require("screenplayHelper")
registerScreenPlay("ig88_platform", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for ig88 platform")
--------------------------------------
--   Initialize screenplay
--------------------------------------
function ig88_platform:start()
if (isZoneEnabled("dungeon2")) then
	self:spawnMobiles()
  end
end

--------------------------------------------------
--   spawn mobiles for dungeon
--------------------------------------------------
function ig88_platform:spawnMobiles()
-------------------------------------------------------------------------
--  Spawn a NPC as a swtich once killed, triggers boss observer to spawn
-------------------------------------------------------------------------
local pBoss = spawnMobile("dungeon2", "ig_battledroid", 10800, -0.0831865, 0.031546, 10.1614, 6, 14200863)--3 hour respawn to start the boss
	print("Spawning ig88 platform Clone")
if (pBoss ~= nil ) then
    createObserver(OBJECTDESTRUCTION, "ig88_platform", "notifyTriggerDead", pBoss)
end
    writeData("ig88_platform:spawnState",0)
    return 0
end
-----------------------------------------
--  Notify trigger is dead to spawn Boss
-----------------------------------------
function ig88_platform:notifyTriggerDead(pBoss, pPlayer)
local pBoss = spawnMobile("dungeon2", "ig_88_boss", -1, -0.0831865, 0.031546, 10.1614, 6, 14200863)
    print("Spawning ig88 platform")
	local creature = CreatureObject(pBoss)
    CreatureObject(pPlayer):playEffect("clienteffect/sm_end_of_the_line.cef", "")
    CreatureObject(pPlayer):playMusicMessage("sound/ig88_platform.snd")
    ObjectManager.withCreatureObject(pBoss, function(oBoss)
    writeData("ig88_platform:spawnState", 1)
    writeData("ig88_platform", oBoss:getObjectID())
    spatialChat(pBoss, "Intruder Alert Activating Defense Systems")
    createObserver(DAMAGERECEIVED,"ig88_platform","boss_damage", pBoss)
    createObserver(OBJECTDESTRUCTION, "ig88_platform", "Restart", pBoss)
end)
    return 0
end
-----------------------------------------
--  Notify trigger broadcast respawning
-----------------------------------------
function ig88_platform:Restart(pPlayer, pBoss)
    print("Starting Boss Broadcast Scripts")
	createEvent(1 * 1000, "ig88_platform", "Restartstates", pPlayer, "")--Restart ig88 platform States
	createEvent(1 * 1000, "ig88_platform", "BroadcastRespawn", pPlayer, "")--Broadcast 3 Hour Respawn
	createEvent(300 * 1000, "ig88_platform", "KillBoss", pPlayer, "")--Clean Up Dead Corpse
	createEvent(10795 * 1000, "ig88_platform", "KillSpawnCast", pPlayer, "")--Broadcast Respawn
	createEvent(10798 * 1000, "ig88_platform", "KillSpawnCast1", pPlayer, "")--Broadcast Respawn 3
	createEvent(10799 * 1000, "ig88_platform", "KillSpawnCast2", pPlayer, "")--Broadcast Respawn 2
	createEvent(10800 * 1000, "ig88_platform", "KillSpawnCast3", pPlayer, "")--Broadcast Respawn 1
    return 0
end
--------------------------------------
--   Player, Boss Functions
--------------------------------------
function ig88_platform:boss_damage(pBoss, pPlayer, onespawn, twospawn, threespawn, fourspawn, fivespawn, sixspawn, sevenspawn, eightspawn, ninespawn, player, pMember)
local player = LuaCreatureObject(pPlayer)
local boss = LuaCreatureObject(pBoss)
createEvent(10800 * 1000, "ig88_platform", "Remove", pBoss, "")
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

local x1 = -0.0831865
local y1 = 10.1614
local x2 = boss:getPositionX()
local y2 = boss:getPositionY()

local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
local maxDistance = 75 --Max distance you can fight the boss is 75 meeters, you must be within range to fight the boss. Resets to full health if you fail the check.
if distance > (maxDistance * maxDistance) then
      forcePeace(pBoss)
      forcePeace(pBoss)
      forcePeace(pBoss)
      forcePeace(pBoss)
      forcePeace(pBoss)
      forcePeace(pBoss)
      CreatureObject(pBoss):healDamage(heal, 0)
      CreatureObject(pBoss):healDamage(heal, 3)
      CreatureObject(pBoss):healDamage(heal, 6)
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/bacta_grenade.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_shocked_01_noshake.cef", "")
      spatialChat(pBoss, "Systems powering down you are out of combat range")
      CreatureObject(pPlayer):sendSystemMessage("You must be within 100m of the boss to fight, boss is now resetting")
end
--------------------------------------
--  90% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind * 0.9))) and readData("ig88_platform:spawnState") == 1) then
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
      writeData("ig88_platform:spawnState",2)
      local onespawn = spawnMobile("dungeon2", "igbattleforeman", 0, 0.0297941, 0.031546, 9.97488, 353, 14200863)
      ObjectManager.withCreatureObject(onespawn, function(ofirstTime)
      writeData("countspawn", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  80% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.8)) or (bossAction <= (bossMaxAction * 0.8)) or (bossMind <= (bossMaxMind * 0.8))) and readData("ig88_platform:spawnState") == 2) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 80%")
      writeData("ig88_platform:spawnState",3)
      local twospawn = spawnMobile("dungeon2", "igbattleforeman", 0, 0.0297941, 0.031546, 9.97488, 353, 14200863)
      ObjectManager.withCreatureObject(twospawn, function(ofirstTime)
      writeData("countspawn", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  70% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.7)) or (bossAction <= (bossMaxAction * 0.7)) or (bossMind <= (bossMaxMind * 0.7))) and readData("ig88_platform:spawnState") == 3) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 70%")
      writeData("ig88_platform:spawnState",4)
      local threespawn = spawnMobile("dungeon2", "igbattleforeman", 0, 0.0297941, 0.031546, 9.97488, 353, 14200863)
      ObjectManager.withCreatureObject(threespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end	
--------------------------------------
--  60% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.6)) or (bossAction <= (bossMaxAction * 0.6)) or (bossMind <= (bossMaxMind * 0.6))) and readData("ig88_platform:spawnState") == 4) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 60%")
      writeData("ig88_platform:spawnState",5)
      local fourspawn = spawnMobile("dungeon2", "igbattleforeman", 0, 0.0297941, 0.031546, 9.97488, 353, 14200863)
      ObjectManager.withCreatureObject(fourspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  50% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("ig88_platform:spawnState") == 5) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 50%")
      writeData("ig88_platform:spawnState",6)
      local fivespawn = spawnMobile("dungeon2", "igbattleforeman", 0, 0.0297941, 0.031546, 9.97488, 353, 14200863)
      ObjectManager.withCreatureObject(fivespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  40% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("ig88_platform:spawnState") == 6) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 40%")
      writeData("ig88_platform:spawnState",7)
      local sixspawn = spawnMobile("dungeon2", "igbattleforeman", 0, 0.0297941, 0.031546, 9.97488, 353, 14200863)
      ObjectManager.withCreatureObject(sixspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  30% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.3)) or (bossAction <= (bossMaxAction * 0.3)) or (bossMind <= (bossMaxMind * 0.3))) and readData("ig88_platform:spawnState") == 7) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 30%")
      writeData("ig88_platform:spawnState",8)
      local sevenspawn = spawnMobile("dungeon2", "igbattleforeman", 0, 0.0297941, 0.031546, 9.97488, 353, 14200863)
      ObjectManager.withCreatureObject(sevenspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  20% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.2)) or (bossAction <= (bossMaxAction * 0.2)) or (bossMind <= (bossMaxMind * 0.2))) and readData("ig88_platform:spawnState") == 8) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 20%")
      writeData("ig88_platform:spawnState",9)  
	  local eightspawn = spawnMobile("dungeon2", "ancientigguardian", 0, -0.010618, 0.0315461, 16.8371, 358, 14200863)
	  local eightspawn = spawnMobile("dungeon2", "ancientigguardian", 0, -6.36817, 0.031546, 16.9577, 267, 14200863)
	  local eightspawn = spawnMobile("dungeon2", "ancientigguardian", 0, -6.48728, 0.031546, 9.58395, 179, 14200863)
	  local eightspawn = spawnMobile("dungeon2", "ancientigguardian", 0, -6.4223, 0.031546, 3.01317, 179, 14200863)
	  local eightspawn = spawnMobile("dungeon2", "ancientigguardian", 0, 0.134145, 0.031546, 2.92523, 287, 14200863)
	  local eightspawn = spawnMobile("dungeon2", "ancientigguardian", 0, 6.52767, 0.0315459, 2.97562, 86, 14200863)
	  local eightspawn = spawnMobile("dungeon2", "ancientigguardian", 0, 6.54659, 0.031546, 9.76501, 356, 14200863)
	  local eightspawn = spawnMobile("dungeon2", "ancientigguardian", 0, 6.56235, 0.0315461, 17.2639, 356, 14200863)
	  local eightspawn = spawnMobile("dungeon2", "ancientigguardian", 0, 0.0297941, 0.031546, 9.97488, 353, 14200863)
      ObjectManager.withCreatureObject(eightspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  10% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.1)) or (bossAction <= (bossMaxAction * 0.1)) or (bossMind <= (bossMaxMind * 0.1))) and readData("ig88_platform:spawnState") == 9) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 10%")
      writeData("ig88_platform:spawnState",10)
	  local ninespawn = spawnMobile("dungeon2", "igsuperbattledroid", 1, -0.010618, 0.0315461, 16.8371, 358, 14200863)
	  local ninespawn = spawnMobile("dungeon2", "igsuperbattledroid", 1, -6.36817, 0.031546, 16.9577, 267, 14200863)
	  local ninespawn = spawnMobile("dungeon2", "igsuperbattledroid", 1, -6.48728, 0.031546, 9.58395, 179, 14200863)
	  local ninespawn = spawnMobile("dungeon2", "igsuperbattledroid", 1, -6.4223, 0.031546, 3.01317, 179, 14200863)
	  local ninespawn = spawnMobile("dungeon2", "igsuperbattledroid", 1, 0.134145, 0.031546, 2.92523, 287, 14200863)
	  local ninespawn = spawnMobile("dungeon2", "igsuperbattledroid", 1, 6.52767, 0.0315459, 2.97562, 86, 14200863)
	  local ninespawn = spawnMobile("dungeon2", "igsuperbattledroid", 1, 6.54659, 0.031546, 9.76501, 356, 14200863)
	  local ninespawn = spawnMobile("dungeon2", "igsuperbattledroid", 1, 6.56235, 0.0315461, 17.2639, 356, 14200863)
	  local ninespawn = spawnMobile("dungeon2", "igsuperbattledroid", 1, 0.0297941, 0.031546, 9.97488, 353, 14200863)
      ObjectManager.withCreatureObject(ninespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------------------------------------------------
--   Check that the boss has died, Broadcast server wide, set state for players
--------------------------------------------------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.001)) or (bossAction <= (bossMaxAction * 0.001)) or (bossMind <= (bossMaxMind * 0.001))) and readData("ig88_platform:spawnState") == 10) then
      spatialChat(pBoss, "We shall meet again uggggh!.")
      spatialChat(pBoss, "You have 5 minuets to loot my body befor it disappears.")
            writeData("ig88_platform:spawnState",11)
        end
      end
   return 0
end
----------------------------
--Broadcast Initial Respawn
----------------------------
function ig88_platform:BroadcastRespawn(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 Ig88 Platform Boss Respawning In 3 Hours")
    	print("Starting Boss Respawn Broadcast Message")
end
-----------------------
--Broadcast Respawn
-----------------------
function ig88_platform:KillSpawnCast(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 Ig88 Platform Boss Respawning In ...")
end
-----------------------
--Broadcast Respawn 3
-----------------------
function ig88_platform:KillSpawnCast1(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 3")
end
-----------------------
--Broadcast Respawn 2
-----------------------
function ig88_platform:KillSpawnCast2(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 2")
end
-----------------------
--Broadcast Respawn 1
-----------------------
function ig88_platform:KillSpawnCast3(pPlayer)
		local player = LuaCreatureObject(pPlayer)
		player:broadcastToServer("\\#63C8F9 1")
    	print("Ig88 Platform Is Respawning")
end
-----------------------------------------------------------------------------
--The Boss Has Died Without Being Looted, "Abandon" Destroy NPC, Destroy Loot
-----------------------------------------------------------------------------
function ig88_platform:KillBoss(pBoss)
	dropObserver(pBoss, OBJECTDESTRUCTION)
	if SceneObject(pBoss) then
		print("Unlooted Ig88 Platform Boss Destroyed")
		SceneObject(pBoss):destroyObjectFromWorld()
		SceneObject(pBoss):destroyObjectFromDatabase()
		return 0
	end
end
----------------------------
--Remove Boss After 3 hours
----------------------------
function ig88_platform:Remove(pBoss)
	if SceneObject(pBoss) then
		print("Ig88 Platform Boss Removed")
		SceneObject(pBoss):destroyObjectFromWorld()
		SceneObject(pBoss):destroyObjectFromDatabase()
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
function ig88_platform:Restartstates(pPlayer)
   writeData("ig88_platform:spawnState", 0)
end
