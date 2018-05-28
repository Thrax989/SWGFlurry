--------------------------------------
--   Creator : TOXIC
--   Date : 5/27/2018
--------------------------------------

exar_kun = ScreenPlay:new {
  numberOfActs = 1,
  debris = {
	{ template = "object/static/destructible/destructible_cave_wall_damprock.iff", x = -15.5567, z = 0.242093, y = -94.4686, cell = 14200872 },
	{ template = "object/static/destructible/destructible_cave_wall_damprock.iff", x = -7.85724, z = 0.241319, y = -94.6849, cell = 14200872 },
	{ template = "object/static/destructible/destructible_cave_wall_damprock.iff", x = 16.9549, z = 0, y = -56.8341, cell = 14200874 },
	{ template = "object/static/destructible/destructible_cave_wall_damprock.iff", x = 17.9766, z = 1.12179e-07, y = -65.0508, cell = 14200874 },
	{ template = "object/static/destructible/destructible_cave_wall_damprock.iff", x = 18.7983, z = -4.99223e-09, y = -71.5485, cell = 14200874 }
  },
  questString = "exar_kun",
  questdata = Object:new {
  activePlayerName = "initial",
  }
}


-------------------------------------------------------------
--   Register Screenplay to planet Dungeon 2 exar kun temple
-------------------------------------------------------------
spHelper = require("screenplayHelper")
registerScreenPlay("exar_kun", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for Exar Kun")
--------------------------------------
--   Initialize screenplay
--------------------------------------
function exar_kun:start()
if (isZoneEnabled("dungeon2")) then
  self:spawnMobiles()
  self:spawnActiveAreas()
  self:spawnSceneObjects()
  end
end

function exar_kun:spawnSceneObjects()
	for i = 1, 5, 1 do
		local debrisData = self.debris[i]
		local pDebris = spawnSceneObject("dungeon2", debrisData.template, debrisData.x, debrisData.z, debrisData.y, debrisData.cell, 1, 0, 0, 0)
		if (pDebris ~= nil) then
			writeData(SceneObject(pDebris):getObjectID() .. ":exar_kun:debris_index", i)
			createObserver(OBJECTDESTRUCTION, "exar_kun", "notifyDebrisDestroyed", pDebris)
		end
	end
end
--------------------------------------------------
--   spawn mouse droid when droid dies spawn boss
--------------------------------------------------
function exar_kun:spawnMobiles()
local pTrigger = spawnMobile("dungeon2", "exar_kun_cultist", 86400, -0.0547165, 0.0315461, 10.281, 8, 14200863)--24 hour respawn to start the boss
if (pTrigger ~= nil ) then
    createObserver(OBJECTDESTRUCTION, "exar_kun", "notifyTriggerDead", pTrigger)
end
    writeData("exar_kun:spawnState",0)
    return 0
end
--------------------------------------
--  active boss once mouse droid dies
--------------------------------------
function exar_kun:notifyTriggerDead(pTrigger, pPlayer)
local pBoss = spawnMobile("dungeon2", "exar_kun_cultist", 0, -0.0547165, 0.0315461, 10.281, 8, 14200863)
    CreatureObject(pPlayer):playEffect("clienteffect/sm_end_of_the_line.cef", "")
    ObjectManager.withCreatureObject(pBoss, function(oBoss)
    writeData("exar_kun:spawnState", 1)
    writeData("exar_kun", oBoss:getObjectID())
    spatialChat(pBoss, "Intruder Alert Activating Defense Systems")
    createObserver(DAMAGERECEIVED,"exar_kun","boss_damage", pBoss)
end)
    return 0
end
--------------------------------------
--   Player, Boss Functions
--------------------------------------
function exar_kun:boss_damage(pBoss, pPlayer, pAdd, oAdd, player, pMember)
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
local maxDistance = 25 --Max distance you can fight the boss is 25 meeters, you must be within range to fight the boss. Reset to full health if you fail the check.
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
--   First wave 50% health check
--------------------------------------
if (((bossHealth <= (bossMaxHealth *0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind *0.5))) and readData("exar_kun:spawnState") == 1) then
      CreatureObject(pPlayer):sendSystemMessage("You take damage from the fire")
      local trapDmg = getRandomNumber(500, 1000)
      CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)
      CreatureObject(pPlayer):playEffect("clienteffect/restuss_event_artillery_ground.cef", "")
      CreatureObject(pPlayer):playEffect("clienteffect/combat_turret_0_miss_terrain_01.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/incubator_mutation.cef", "")
      CreatureObject(pBoss):playEffect("clienteffect/space_command/shp_astromech_effects_04.cef", "")
      CreatureObject(pPlayer):sendSystemMessage("Enemy Wave Starting!")
      spatialChat(pBoss, "Boss Current Health = 50%")
      writeData("exar_kun:spawnState",2)
      local oAdd = spawnMobile("dungeon2", "exar_kun_cultist", 0, 30.1609, 0.0315462, 41.5876, 216, 14200863)
      spatialChat(oAdd, "target locked")
      local oAdd = spawnMobile("dungeon2", "exar_kun_cultist", 0, 32.5711, 0.0315456, 9.91512, 271, 14200863)
      spatialChat(oAdd, "target locked")
      ObjectManager.withCreatureObject(oAdd, function(ofirstTime)
      writeData("countadd", ofirstTime:getObjectID())
      ofirstTime:engageCombat(pPlayer)
			end)
		end	
--------------------------------------------------------------------------------
--   Check that the boss has died, Broadcast server wide, set state for players
--------------------------------------------------------------------------------
if (((bossHealth <= (bossMaxHealth * 0.01)) or (bossAction <= (bossMaxAction * 0.01)) or (bossMind <= (bossMaxMind * 0.01))) and readData("exar_kun:spawnState") == 2) then
      spatialChat(pBoss, "We shall meet again uggggh!.")
      CreatureObject(pBoss):broadcastToServer("\\#63C8F9 A Group Has Cleared The Exar Kun Temple Dungeon! Next Boss Encounter will be Avalible in 1 hour!.")
            writeData("exar_kun:spawnState",3)
        end
      end
   return 0
end
--------------------------------------------------------------------------------------------
--   Added Active Area Check for server wide broadcasting, Entering/Exiting active boss zone
--------------------------------------------------------------------------------------------
function exar_kun:spawnActiveAreas()
local pSpawnArea = spawnSceneObject("dungeon2", "object/active_area.iff", 5, 0, 1993, 0, 0, 0, 0, 0)
if (pSpawnArea ~= nil) then
local activeArea = LuaActiveArea(pSpawnArea)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(120)
          createObserver(ENTEREDAREA, "exar_kun", "notifySpawnArea", pSpawnArea)
          createObserver(EXITEDAREA, "exar_kun", "notifySpawnAreaLeave", pSpawnArea)
    end
end
function exar_kun:notifySpawnArea(pActiveArea, pMovingObject, pBoss, pPlayer)
if (not SceneObject(pMovingObject):isCreatureObject()) then
  return 0
end
return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
    return 0
end
if (player:isImperial() or player:isNeutral() or player:isRebel()) then
          player:broadcastToServer("\\#00E604" .. player:getFirstName() .. "\\#63C8F9 Has Entered The Exar Kun Temple Dungeon!")
          player:sendSystemMessage("You Have Entered The Exar Kun Temple Dungeon!")
          end
      return 0
  end)
end
function exar_kun:notifySpawnAreaLeave(pActiveArea, pMovingObject, pBoss, pPlayer)
if (not SceneObject(pMovingObject):isCreatureObject()) then
  return 0
end
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
if (player:isAiAgent()) then
  return 0
end
if (player:isImperial() or player:isNeutral() or player:isRebel()) then
      player:broadcastToServer("\\#00E604" .. player:getFirstName() .. "\\#63C8F9 Has left the Exar Kun Temple Dungeon!")
      player:sendSystemMessage("You Have Left The Exar Kun Temple Dungeon!")
      end
    return 0
  end)
end

function exar_kun:respawnDebris(pDebris)
	if (pDebris == nil) then
		return
	end

	TangibleObject(pDebris):setConditionDamage(0, false)
	local debrisData = self.debris[readData(SceneObject(pDebris):getObjectID() .. ":exar_kun:debris_index")]

	local pCell = getSceneObject(debrisData.cell)

	if (pCell ~= nil) then
		SceneObject(pCell):transferObject(pDebris, -1, true)
	end
end

function exar_kun:notifyDebrisDestroyed(pDebris, pPlayer)
	if (pPlayer == nil or pDebris == nil) then
		return 0
	end

	createEvent(240000, "exar_kun", "respawnDebris", pDebris, "")
	SceneObject(pDebris):destroyObjectFromWorld()

	CreatureObject(pPlayer):clearCombatState(1)
	return 0
end
