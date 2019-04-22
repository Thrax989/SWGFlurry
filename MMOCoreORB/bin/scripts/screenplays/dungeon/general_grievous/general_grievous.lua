--------------------------------------
--   Creator : TOXIC
--   Date : 6/13/2018
--------------------------------------
general_grievous = ScreenPlay:new {
  numberOfActs = 1,
  questString = "general_grievous",
  questdata = Object:new {
  activePlayerName = "initial",
  }
}
-------------------------------------------------------------
--   Register Screenplay to planet Dungeon 2 general_grievous
-------------------------------------------------------------
spHelper = require("screenplayHelper")
registerScreenPlay("general_grievous", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for general grievous")
--------------------------------------
--   Initialize screenplay
--------------------------------------
function general_grievous:start()
if (isZoneEnabled("kashyyyk")) then
  self:spawnMobiles()
  self:spawnSceneObjects()
  end
end
-------------------------------------------------------------------------
--  Spawn Scene Objects 
-------------------------------------------------------------------------
function general_grievous:spawnSceneObjects()
	--Spawn Galactic Service Travel Terminal
	spawnSceneObject("kashyyyk", "object/tangible/terminal/terminal_gcw_publish_gift.iff", -331.314, -120.481, 144.708, 6296404, 0.731252, 0, 0.682108, 0)
end
--------------------------------------------------
--   spawn mobiles for dungeon
--------------------------------------------------
function general_grievous:spawnMobiles()      
-------------------------------------------------------------------------
--  Spawn a NPC as a swtich once killed, triggers boss observer to spawn
-------------------------------------------------------------------------
local pTrigger = spawnMobile("kashyyyk", "general_grievous", 0, -230.3, -92.9, 144.5, -69, 6296405)--3 hour respawn to start the boss
if (pTrigger ~= nil ) then
    createObserver(OBJECTDESTRUCTION, "general_grievous", "notifyTriggerDead", pTrigger)
end
    writeData("general_grievous:spawnState",0)
    return 0
end
--------------------------------------
--  Notify trigger is dead to spawn Boss
--------------------------------------
function general_grievous:notifyTriggerDead(pTrigger, pPlayer)
local pBoss = spawnMobile("kashyyyk", "general_grievous", 0, -230.3, -92.9, 144.5, -69, 6296405)
    CreatureObject(pPlayer):playEffect("clienteffect/sm_end_of_the_line.cef", "")
    ObjectManager.withCreatureObject(pBoss, function(oBoss)
    writeData("general_grievous:spawnState", 1)
    writeData("general_grievous", oBoss:getObjectID())
    spatialChat(pBoss, "Intruder Alert Activating Defense Systems")
    createObserver(DAMAGERECEIVED,"general_grievous","boss_damage", pBoss)
end)
    return 0
end
--------------------------------------
--   Player, Boss Functions
--------------------------------------
function general_grievous:boss_damage(pBoss, pPlayer, onespawn, twospawn, threespawn, fourspawn, fivespawn, sixspawn, sevenspawn, eightspawn, ninespawn, player, pMember)
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
if (((bossHealth <= (bossMaxHealth * 0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind * 0.9))) and readData("general_grievous:spawnState") == 1) then
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
      writeData("general_grievous:spawnState",2)
      local onespawn = spawnMobile("kashyyyk", "general_guard", 0, -231.902, -92.6486, 157.583, 170, 6296405)
      local onespawn = spawnMobile("kashyyyk", "general_guard", 0, -215.727, -93.713, 142.717, 286, 6296405)
      local onespawn = spawnMobile("kashyyyk", "general_guard", 0, -223.212, -93.2474, 129.673, 311, 6296405)
      local onespawn = spawnMobile("kashyyyk", "general_guard", 0, -237.092, -92.9772, 137.122, 46, 6296405)
      ObjectManager.withCreatureObject(onespawn, function(ofirstTime)
      writeData("countspawn", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  80% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.8)) or (bossAction <= (bossMaxAction * 0.8)) or (bossMind <= (bossMaxMind * 0.8))) and readData("general_grievous:spawnState") == 2) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 80%")
      writeData("general_grievous:spawnState",3)
      local twospawn = spawnMobile("kashyyyk", "general_guard", 0, -231.902, -92.6486, 157.583, 170, 6296405)
      local twospawn = spawnMobile("kashyyyk", "general_guard", 0, -215.727, -93.713, 142.717, 286, 6296405)
      local twospawn = spawnMobile("kashyyyk", "general_guard", 0, -223.212, -93.2474, 129.673, 311, 6296405)
      local twospawn = spawnMobile("kashyyyk", "general_guard", 0, -237.092, -92.9772, 137.122, 46, 6296405)
      ObjectManager.withCreatureObject(twospawn, function(ofirstTime)
      writeData("countspawn", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  70% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.7)) or (bossAction <= (bossMaxAction * 0.7)) or (bossMind <= (bossMaxMind *0.7))) and readData("general_grievous:spawnState") == 3) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 70%")
      writeData("general_grievous:spawnState",4)
      local threespawn = spawnMobile("kashyyyk", "general_guard", 0, -231.902, -92.6486, 157.583, 170, 6296405)
      local threespawn = spawnMobile("kashyyyk", "general_guard", 0, -215.727, -93.713, 142.717, 286, 6296405)
      local threespawn = spawnMobile("kashyyyk", "general_guard", 0, -223.212, -93.2474, 129.673, 311, 6296405)
      local threespawn = spawnMobile("kashyyyk", "general_guard", 0, -237.092, -92.9772, 137.122, 46, 6296405)
      ObjectManager.withCreatureObject(threespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end	
--------------------------------------
--  60% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.6)) or (bossAction <= (bossMaxAction * 0.6)) or (bossMind <= (bossMaxMind *0.6))) and readData("general_grievous:spawnState") == 4) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 60%")
      writeData("general_grievous:spawnState",5)
      local fourspawn = spawnMobile("kashyyyk", "general_guard", 0, -231.902, -92.6486, 157.583, 170, 6296405)
      local fourspawn = spawnMobile("kashyyyk", "general_guard", 0, -215.727, -93.713, 142.717, 286, 6296405)
      local fourspawn = spawnMobile("kashyyyk", "general_guard", 0, -223.212, -93.2474, 129.673, 311, 6296405)
      local fourspawn = spawnMobile("kashyyyk", "general_guard", 0, -237.092, -92.9772, 137.122, 46, 6296405)
      ObjectManager.withCreatureObject(fourspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  50% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("general_grievous:spawnState") == 5) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 50%")
      writeData("general_grievous:spawnState",6)
      local fivespawn = spawnMobile("kashyyyk", "general_guard", 0, -231.902, -92.6486, 157.583, 170, 6296405)
      local fivespawn = spawnMobile("kashyyyk", "general_guard", 0, -215.727, -93.713, 142.717, 286, 6296405)
      local fivespawn = spawnMobile("kashyyyk", "general_guard", 0, -223.212, -93.2474, 129.673, 311, 6296405)
      local fivespawn = spawnMobile("kashyyyk", "general_guard", 0, -237.092, -92.9772, 137.122, 46, 6296405)
      ObjectManager.withCreatureObject(fivespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  40% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind *0.4))) and readData("general_grievous:spawnState") == 6) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 50%")
      writeData("general_grievous:spawnState",7)
      local sixspawn = spawnMobile("kashyyyk", "general_guard", 0, -231.902, -92.6486, 157.583, 170, 6296405)
      local sixspawn = spawnMobile("kashyyyk", "general_guard", 0, -215.727, -93.713, 142.717, 286, 6296405)
      local sixspawn = spawnMobile("kashyyyk", "general_guard", 0, -223.212, -93.2474, 129.673, 311, 6296405)
      local sixspawn = spawnMobile("kashyyyk", "general_guard", 0, -237.092, -92.9772, 137.122, 46, 6296405)
      ObjectManager.withCreatureObject(sixspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  30% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.3)) or (bossAction <= (bossMaxAction * 0.3)) or (bossMind <= (bossMaxMind *0.3))) and readData("general_grievous:spawnState") == 7) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 30%")
      writeData("general_grievous:spawnState",8)
      local sevenspawn = spawnMobile("kashyyyk", "general_guard", 0, -231.902, -92.6486, 157.583, 170, 6296405)
      local sevenspawn = spawnMobile("kashyyyk", "general_guard", 0, -215.727, -93.713, 142.717, 286, 6296405)
      local sevenspawn = spawnMobile("kashyyyk", "general_guard", 0, -223.212, -93.2474, 129.673, 311, 6296405)
      local sevenspawn = spawnMobile("kashyyyk", "general_guard", 0, -237.092, -92.9772, 137.122, 46, 6296405)
      ObjectManager.withCreatureObject(sevenspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  20% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.2)) or (bossAction <= (bossMaxAction * 0.2)) or (bossMind <= (bossMaxMind *0.2))) and readData("general_grievous:spawnState") == 8) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 20%")
      writeData("general_grievous:spawnState",9)
      local eightspawn = spawnMobile("kashyyyk", "general_guard", 0, -231.902, -92.6486, 157.583, 170, 6296405)
      local eightspawn = spawnMobile("kashyyyk", "general_guard", 0, -215.727, -93.713, 142.717, 286, 6296405)
      local eightspawn = spawnMobile("kashyyyk", "general_guard", 0, -223.212, -93.2474, 129.673, 311, 6296405)
      local eightspawn = spawnMobile("kashyyyk", "general_guard", 0, -237.092, -92.9772, 137.122, 46, 6296405)
      ObjectManager.withCreatureObject(eightspawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------
--  10% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.1)) or (bossAction <= (bossMaxAction * 0.1)) or (bossMind <= (bossMaxMind *0.1))) and readData("general_grievous:spawnState") == 9) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 10%")
      writeData("general_grievous:spawnState",10)
      local ninespawn = spawnMobile("kashyyyk", "general_guard", 0, -231.902, -92.6486, 157.583, 170, 6296405)
      local ninespawn = spawnMobile("kashyyyk", "general_guard", 0, -215.727, -93.713, 142.717, 286, 6296405)
      local ninespawn = spawnMobile("kashyyyk", "general_guard", 0, -223.212, -93.2474, 129.673, 311, 6296405)
      local ninespawn = spawnMobile("kashyyyk", "general_guard", 0, -237.092, -92.9772, 137.122, 46, 6296405)
      ObjectManager.withCreatureObject(ninespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------------------------------------------------
--   Check that the boss has died, Broadcast server wide, set state for players
--------------------------------------------------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.01)) or (bossAction <= (bossMaxAction * 0.01)) or (bossMind <= (bossMaxMind * 0.01))) and readData("general_grievous:spawnState") == 10) then
      spatialChat(pBoss, "We shall meet again uggggh!.")
      CreatureObject(pBoss):broadcastToServer("\\#63C8F9 A Group Has Cleared The Tusken King Dungeon! Next Boss Encounter will be Avalible in 1 hour!.")
            writeData("general_grievous:spawnState",11)
        end
      end
   return 0
end
