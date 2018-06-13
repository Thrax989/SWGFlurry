--------------------------------------
--   Creator : TOXIC
--   Date : 6/13/2018
--------------------------------------
nightsister_temple = ScreenPlay:new {
  numberOfActs = 1,
  questString = "nightsister_temple",
  questdata = Object:new {
  activePlayerName = "initial",
  }
}
----------------------------------------------------------------
--   Register Screenplay to planet Dungeon 2 nightsister temple
----------------------------------------------------------------
spHelper = require("screenplayHelper")
registerScreenPlay("nightsister_temple", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for Exar Kun")
--------------------------------------
--   Initialize screenplay
--------------------------------------
function nightsister_temple:start()
if (isZoneEnabled("dungeon2")) then
  self:spawnMobiles()
  end
end
--------------------------------------
--   Spawn Mobiles For screenplay
--------------------------------------
function nightsister_temple:spawnMobiles()     
-------------------------------------------------------------------------
--  Spawn a NPC as a swtich once killed, triggers boss observer
-------------------------------------------------------------------------
local pTrigger = spawnMobile("dungeon2", "nightsisterqueen", 10800, -79.5092, 17.8193, 23.9262, 94, 14201105)--3 hour respawn to start the boss
if (pTrigger ~= nil ) then
    createObserver(OBJECTDESTRUCTION, "nightsister_temple", "notifyTriggerDead", pTrigger)
end
    writeData("nightsister_temple:spawnState",0)
    return 0
end
-----------------------------------------
--  Notify trigger is dead to spawn Boss
-----------------------------------------
function nightsister_temple:notifyTriggerDead(pTrigger, pPlayer)
local pBoss = spawnMobile("dungeon2", "nightsisterqueenboss", 0, -73.1526, 15.3035, 22.0164, 88, 14201105)
    CreatureObject(pPlayer):playEffect("clienteffect/sm_end_of_the_line.cef", "")
    ObjectManager.withCreatureObject(pBoss, function(oBoss)
    writeData("nightsister_temple:spawnState", 1)
    writeData("nightsister_temple", oBoss:getObjectID())
    spatialChat(pBoss, "Intruder Alert Activating Defense Systems")
    createObserver(DAMAGERECEIVED,"nightsister_temple","boss_damage", pBoss)
	end)
    return 0
end
--------------------------------------
--   Player, Boss Functions
--------------------------------------
function nightsister_temple:boss_damage(pBoss, pPlayer, onespawn)
local player = LuaCreatureObject(pPlayer)
local boss = LuaCreatureObject(pBoss)
--------------------------------------
--   Range and health checks for boss
--------------------------------------
if (boss ~= nil) then
local heal = 10000
local bossHealth = boss:getHAM(0)
local bossAction = boss:getHAM(3)
local bossMind = boss:getHAM(6)
local bossMaxHealth = boss:getMaxHAM(0)
local bossMaxAction = boss:getMaxHAM(3)
local bossMaxMind = boss:getMaxHAM(6)
local x1 = -73.1526
local y1 = 22.0164
local x2 = boss:getPositionX()
local y2 = boss:getPositionY()
local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
local maxDistance = 30 --Max distance you can fight the boss is 30 meeters, you must be within range to fight the boss. Resets to full health if you fail the check.
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
--  50% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("nightsister_temple:spawnState") == 1) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(1500, 2000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 50%")
      writeData("nightsister_temple:spawnState",2)
      local onespawn = spawnMobile("dungeon2", "nightsisterqueenrancor", 0, -73.1526, 15.3035, 22.0164, 88, 14201105)
      ObjectManager.withCreatureObject(onespawn, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end
--------------------------------------------------------------------------------
--   Check that the boss has died, Broadcast server wide, set state for players
--------------------------------------------------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.01)) or (bossAction <= (bossMaxAction * 0.01)) or (bossMind <= (bossMaxMind * 0.01))) and readData("nightsister_temple:spawnState") == 2) then
      spatialChat(pBoss, "We shall meet again uggggh!.")
      CreatureObject(pBoss):broadcastToServer("\\#63C8F9 A Group Has Cleared The Nightsister Temple Dungeon! Next Boss Encounter will be Avalible in 3 hour!.")
            writeData("nightsister_temple:spawnState",3)
        end
      end
   return 0
end
