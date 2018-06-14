--------------------------------------
--   Creator : TOXIC
--   Date : 6/13/2018
--------------------------------------
tusken_king = ScreenPlay:new {
  numberOfActs = 1,
  questString = "tusken_king",
  questdata = Object:new {
  activePlayerName = "initial",
  }
}
-------------------------------------------------------------
--   Register Screenplay to planet Dungeon 2 tusken_king
-------------------------------------------------------------
spHelper = require("screenplayHelper")
registerScreenPlay("tusken_king", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for tusken king")
--------------------------------------
--   Initialize screenplay
--------------------------------------
function tusken_king:start()
if (isZoneEnabled("dungeon2")) then
  self:spawnMobiles()
  end
end
--------------------------------------------------
--   spawn mobiles for dungeon
--------------------------------------------------
function tusken_king:spawnMobiles()      
-------------------------------------------------------------------------
--  Spawn a NPC as a swtich once killed, triggers boss observer to spawn
-------------------------------------------------------------------------
local pTrigger = spawnMobile("dungeon2", "tusken_raider", 10800, -0.0547165, 0.0315461, 10.281, 8, 14200863)--3 hour respawn to start the boss
if (pTrigger ~= nil ) then
    createObserver(OBJECTDESTRUCTION, "tusken_king", "notifyTriggerDead", pTrigger)
end
    writeData("tusken_king:spawnState",0)
    return 0
end
--------------------------------------
--  Notify trigger is dead to spawn Boss
--------------------------------------
function tusken_king:notifyTriggerDead(pTrigger, pPlayer)
local pBoss = spawnMobile("dungeon2", "tusken_king", 0, -0.0547165, 0.0315461, 10.281, 8, 14200863)
    CreatureObject(pPlayer):playEffect("clienteffect/sm_end_of_the_line.cef", "")
    ObjectManager.withCreatureObject(pBoss, function(oBoss)
    writeData("tusken_king:spawnState", 1)
    writeData("tusken_king", oBoss:getObjectID())
    spatialChat(pBoss, "Intruder Alert Activating Defense Systems")
    createObserver(DAMAGERECEIVED,"tusken_king","boss_damage", pBoss)
end)
    return 0
end
--------------------------------------
--   Player, Boss Functions
--------------------------------------
function tusken_king:boss_damage(pBoss, pPlayer, onespawn, twospawn, threespawn, fourspawn, fivespawn, sixspawn, sevenspawn, eightspawn, ninespawn, player, pMember)
local player = LuaCreatureObject(pPlayer)
local boss = LuaCreatureObject(pBoss)
--------------------------------------
--   Range and health checks for boss
--------------------------------------
if (boss ~= nil) then
local heal = 500000
local bossHealth = boss:getHAM(0)
local bossAction = boss:getHAM(3)
local bossMind = boss:getHAM(6)
local bossMaxHealth = boss:getMaxHAM(0)
local bossMaxAction = boss:getMaxHAM(3)
local bossMaxMind = boss:getMaxHAM(6)

local x1 = -0.0547165
local y1 = 10.281
local x2 = boss:getPositionX()
local y2 = boss:getPositionY()

local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
local maxDistance = 40 --Max distance you can fight the boss is 40 meeters, you must be within range to fight the boss. Resets to full health if you fail the check.
if distance > (maxDistance * maxDistance) then
      forcePeace(pBoss)
      CreatureObject(pBoss):healDamage(heal, 0)
      CreatureObject(pBoss):healDamage(heal, 3)
      CreatureObject(pBoss):healDamage(heal, 6)
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/bacta_grenade.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_shocked_01_noshake.cef", "")
      spatialChat(pBoss, "Systems powering down you are out of combat range")
      CreatureObject(pPlayer):sendSystemMessage("You must be within 25m of the boss to fight, boss is now resetting")
end
--------------------------------------
--  90% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind * 0.9))) and readData("tusken_king:spawnState") == 1) then
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
      writeData("tusken_king:spawnState",2)
      local onespawn = spawnMobile("dungeon2", "tusken_raider", 0, 30.1609, 0.0315462, 41.5876, 216, 14200863)
      local onespawn = spawnMobile("dungeon2", "tusken_raider", 0, 32.5711, 0.0315456, 9.91512, 271, 14200863)
      local onespawn = spawnMobile("dungeon2", "tusken_raider", 0, 25.236, 0.0315455, -16.7366, 295, 14200863)
      local onespawn = spawnMobile("dungeon2", "tusken_raider", 0, -0.0763456, 0.0315461, 43.036, 181, 14200863)
      ObjectManager.withCreatureObject(onespawn, function(ofirstTime)
      writeData("countspawn", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  80% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.8)) or (bossAction <= (bossMaxAction * 0.8)) or (bossMind <= (bossMaxMind * 0.8))) and readData("tusken_king:spawnState") == 2) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 80%")
      writeData("tusken_king:spawnState",3)
      local twospawn = spawnMobile("dungeon2", "tusken_raider", 0, 30.1609, 0.0315462, 41.5876, 216, 14200863)
      local twospawn = spawnMobile("dungeon2", "tusken_raider", 0, 32.5711, 0.0315456, 9.91512, 271, 14200863)
      local twospawn = spawnMobile("dungeon2", "tusken_raider", 0, 25.236, 0.0315455, -16.7366, 295, 14200863)
      local twospawn = spawnMobile("dungeon2", "tusken_raider", 0, -0.0763456, 0.0315461, 43.036, 181, 14200863)
      ObjectManager.withCreatureObject(twospawn, function(ofirstTime)
      writeData("countspawn", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  70% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.7)) or (bossAction <= (bossMaxAction * 0.7)) or (bossMind <= (bossMaxMind *0.7))) and readData("tusken_king:spawnState") == 3) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 70%")
      writeData("tusken_king:spawnState",4)
      local threespawn = spawnMobile("dungeon2", "tusken_raider", 0, 30.1609, 0.0315462, 41.5876, 216, 14200863)
      local threespawn = spawnMobile("dungeon2", "tusken_raider", 0, 32.5711, 0.0315456, 9.91512, 271, 14200863)
      local threespawn = spawnMobile("dungeon2", "tusken_raider", 0, 25.236, 0.0315455, -16.7366, 295, 14200863)
      local threespawn = spawnMobile("dungeon2", "tusken_raider", 0, -0.0763456, 0.0315461, 43.036, 181, 14200863)
      ObjectManager.withCreatureObject(threespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end	
--------------------------------------
--  60% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.6)) or (bossAction <= (bossMaxAction * 0.6)) or (bossMind <= (bossMaxMind *0.6))) and readData("tusken_king:spawnState") == 4) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 60%")
      writeData("tusken_king:spawnState",5)
      local fourspawn = spawnMobile("dungeon2", "tusken_raider", 0, 30.1609, 0.0315462, 41.5876, 216, 14200863)
      local fourspawn = spawnMobile("dungeon2", "tusken_raider", 0, 32.5711, 0.0315456, 9.91512, 271, 14200863)
      local fourspawn = spawnMobile("dungeon2", "tusken_raider", 0, 25.236, 0.0315455, -16.7366, 295, 14200863)
      local fourspawn = spawnMobile("dungeon2", "tusken_raider", 0, -0.0763456, 0.0315461, 43.036, 181, 14200863)
      ObjectManager.withCreatureObject(fourspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  50% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("tusken_king:spawnState") == 5) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 50%")
      writeData("tusken_king:spawnState",6)
      local fivespawn = spawnMobile("dungeon2", "tusken_raider", 0, 30.1609, 0.0315462, 41.5876, 216, 14200863)
      local fivespawn = spawnMobile("dungeon2", "tusken_raider", 0, 32.5711, 0.0315456, 9.91512, 271, 14200863)
      local fivespawn = spawnMobile("dungeon2", "tusken_raider", 0, 25.236, 0.0315455, -16.7366, 295, 14200863)
      local fivespawn = spawnMobile("dungeon2", "tusken_raider", 0, -0.0763456, 0.0315461, 43.036, 181, 14200863)
      ObjectManager.withCreatureObject(fivespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  40% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind *0.4))) and readData("tusken_king:spawnState") == 6) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 50%")
      writeData("tusken_king:spawnState",7)
      local sixspawn = spawnMobile("dungeon2", "tusken_raider", 0, 30.1609, 0.0315462, 41.5876, 216, 14200863)
      local sixspawn = spawnMobile("dungeon2", "tusken_raider", 0, 32.5711, 0.0315456, 9.91512, 271, 14200863)
      local sixspawn = spawnMobile("dungeon2", "tusken_raider", 0, 25.236, 0.0315455, -16.7366, 295, 14200863)
      local sixspawn = spawnMobile("dungeon2", "tusken_raider", 0, -0.0763456, 0.0315461, 43.036, 181, 14200863)
      ObjectManager.withCreatureObject(sixspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  30% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.3)) or (bossAction <= (bossMaxAction * 0.3)) or (bossMind <= (bossMaxMind *0.3))) and readData("tusken_king:spawnState") == 7) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 30%")
      writeData("tusken_king:spawnState",8)
      local sevenspawn = spawnMobile("dungeon2", "tusken_raider", 0, 30.1609, 0.0315462, 41.5876, 216, 14200863)
      local sevenspawn = spawnMobile("dungeon2", "tusken_raider", 0, 32.5711, 0.0315456, 9.91512, 271, 14200863)
      local sevenspawn = spawnMobile("dungeon2", "tusken_raider", 0, 25.236, 0.0315455, -16.7366, 295, 14200863)
      local sevenspawn = spawnMobile("dungeon2", "tusken_raider", 0, -0.0763456, 0.0315461, 43.036, 181, 14200863)
      ObjectManager.withCreatureObject(sevenspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  20% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.2)) or (bossAction <= (bossMaxAction * 0.2)) or (bossMind <= (bossMaxMind *0.2))) and readData("tusken_king:spawnState") == 8) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 20%")
      writeData("tusken_king:spawnState",9)
      local eightspawn = spawnMobile("dungeon2", "tusken_raider", 0, 30.1609, 0.0315462, 41.5876, 216, 14200863)
      local eightspawn = spawnMobile("dungeon2", "tusken_raider", 0, 32.5711, 0.0315456, 9.91512, 271, 14200863)
      local eightspawn = spawnMobile("dungeon2", "tusken_raider", 0, 25.236, 0.0315455, -16.7366, 295, 14200863)
      local eightspawn = spawnMobile("dungeon2", "tusken_raider", 0, -0.0763456, 0.0315461, 43.036, 181, 14200863)
      ObjectManager.withCreatureObject(eightspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  10% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.1)) or (bossAction <= (bossMaxAction * 0.1)) or (bossMind <= (bossMaxMind *0.1))) and readData("tusken_king:spawnState") == 9) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 10%")
      writeData("tusken_king:spawnState",10)
      local ninespawn = spawnMobile("dungeon2", "tusken_raider", 0, 30.1609, 0.0315462, 41.5876, 216, 14200863)
      local ninespawn = spawnMobile("dungeon2", "tusken_raider", 0, 32.5711, 0.0315456, 9.91512, 271, 14200863)
      local ninespawn = spawnMobile("dungeon2", "tusken_raider", 0, 25.236, 0.0315455, -16.7366, 295, 14200863)
      local ninespawn = spawnMobile("dungeon2", "tusken_raider", 0, -0.0763456, 0.0315461, 43.036, 181, 14200863)
      ObjectManager.withCreatureObject(ninespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------------------------------------------------
--   Check that the boss has died, Broadcast server wide, set state for players
--------------------------------------------------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.01)) or (bossAction <= (bossMaxAction * 0.01)) or (bossMind <= (bossMaxMind * 0.01))) and readData("tusken_king:spawnState") == 10) then
      spatialChat(pBoss, "We shall meet again uggggh!.")
      CreatureObject(pBoss):broadcastToServer("\\#63C8F9 A Group Has Cleared The Tusken King Dungeon! Next Boss Encounter will be Avalible in 1 hour!.")
            writeData("tusken_king:spawnState",11)
        end
      end
   return 0
end